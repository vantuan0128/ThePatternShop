/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Color;
import entity.ProductDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.stream.Collectors;

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
    
    public List<String> getAllColorByProductId(String productId){
        String query = "select distinct colorId from productdetail where productId = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productId);
            rs = ps.executeQuery();
            List<String> list = new ArrayList<>();
            while(rs.next()) {
                list.add(rs.getString(1));
            }
            Collections.sort(list);
            return list;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return null;
    }
    
    public int getQuantity(String productDetailId){
        String query = "select quantity from productdetail where productDetailId = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productDetailId);
            rs = ps.executeQuery();
            int res = 0;
            while(rs.next()) {
                res += rs.getInt(1);
            }
            return res;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return 0;
    }
    
    public List<String> getAllSizeByProductId(String productId){
        String query = "select distinct sizeId from productdetail where productId = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productId);
            rs = ps.executeQuery();
            List<String> list = new ArrayList<>();
            while(rs.next()) {
                list.add(rs.getString(1));
            }
            Set<String> st = new TreeSet<>();
            for (String s: list) st.add(s);
            list.clear();
            for (String s: st) list.add(s);
//            System.out.println(list);
            return list;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return null;
    }
    
    public int getQuantityByProductId(String productId){
        String query = "select * from productdetail where productId = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productId);
            rs = ps.executeQuery();
            int res = 0;
            while(rs.next()) {
                ProductDetail a;
                a = new ProductDetail(rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(5));
                res += a.getQuantity();
            }
            return res;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return 0;
    }
    
    public int getQuantityByProductDetailId(String productDetailId){
        String query = "select * from productdetail where productDetailId = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productDetailId);
            rs = ps.executeQuery();
            int res = 0;
            while(rs.next()) {
                ProductDetail a;
                a = new ProductDetail(rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(5));
                res += a.getQuantity();
            }
            return res;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return 0;
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
    
    public void deleteProductDetailByProductId(String productId){
        String query = "delete from productdetail where productId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productId);
            ps.executeUpdate();
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
}
