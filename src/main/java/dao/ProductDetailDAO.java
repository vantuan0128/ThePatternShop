/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.ProductDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class ProductDetailDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    private DBContext dbContext;

    public ProductDetailDAO(){
        dbContext = new DBContext();
    }
    
    public List<ProductDetail> getAllProductDetail(){
        String query = "select * from productdetail;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<ProductDetail> list = new ArrayList<>();
            while(rs.next()) {
                ProductDetail a;
                a = new ProductDetail(rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(5));
                list.add(a);
            }
            return list;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return null;
    }
    
    public void insertProductDetail(ProductDetail productDetail){
        String query = "insert into productdetail(productDetailId, productId, sizeId, colorId, quantity) VALUES(?,?,?,?,?);";
        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productDetail.getProductDetailId());
            ps.setString(2,productDetail.getProductId());
            ps.setString(3, productDetail.getSizeId());
            ps.setString(4, productDetail.getColorId());
            ps.setInt(5, productDetail.getQuantity());
            ps.executeUpdate();
        }
        catch(Exception e){  
            System.out.println(e);
        }
    }
    
    public void updateProductDetailQuantity(String productDetailId, int newQuantity){
        String query = "update productdetail set quantity = ? where productDetailId = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, newQuantity);
            ps.setString(2, productDetailId);
            ps.executeUpdate();
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
}
