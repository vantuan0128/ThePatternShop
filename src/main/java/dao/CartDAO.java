/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Cart;
import entity.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class CartDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    private DBContext dbContext;
    
    public CartDAO(){
        dbContext = new DBContext();
    }
    
    
    public List<Cart> getAllCart(){
        String query = "select * from cart;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<Cart> list = new ArrayList<>();
            while(rs.next()) {
                Cart a;
                a = new Cart(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
                list.add(a);
            }
            return list;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return null;
    }
    
    public List<Cart> getAllCartById(String id){
        String query = "select * from cart where id = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            List<Cart> list = new ArrayList<>();
            while(rs.next()) {
                Cart a = new Cart(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
                if (a.getId().equals(id)) list.add(a);
            }
            return list;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return null;
    }
    
    public void insertToCart(String id, String productDetailId, int count){
        String query = "insert into cart(cartId, id, productDetailId, count, total) VALUES(?,?,?,?,?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            Cart c = new Cart(id, productDetailId, count);
            int cost = new ProductDAO().GetProductCostByProductId(productDetailId.substring(0, productDetailId.indexOf("_")));
            ps.setString(1, c.getCartId());
            ps.setString(2, c.getId());
            ps.setString(3, c.getProductDetailId());
            ps.setInt(4, c.getCount());
            ps.setInt(5, c.getCount() * cost);
            ps.executeUpdate();
        }
        catch(Exception e){  
            System.out.println(e);
        }
    }
    
    public void updateCountCart(String id, String productDetailId, int _newCount){
        String query = "update cart set count = ?, total = ? where id = ? and productDetailId = ?;";
        int cost = new ProductDAO().GetProductCostByProductId(productDetailId.substring(0, productDetailId.indexOf("_")));
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, _newCount);
            ps.setInt(2, _newCount * cost);
            ps.setString(3, id);
            ps.setString(4, productDetailId);
            ps.executeUpdate();
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    public void deleteFromCart(String id, String productDetailId){
         String query = "delete from cart where id = ? and productDetailId = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, productDetailId);
            ps.executeUpdate();
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
}
