/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Customer;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class ProductDAO {
    private DBContext dbContext;
    
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public ProductDAO(){
        dbContext = new DBContext();
    }
    
    private static final String tableName = "product";
    
    public List<Product> getAllProduct(){
        String query = "select * from product;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while(rs.next()) {
                list.add(new Product(rs.getString(1),rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(5),
                            rs.getBoolean(6)));
            }
            return list;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return null;
    }
    
    public void insertProduct(Product product){
        
        String query = "insert into product(productId,productName,productImage,productDescription,productCost,isActive) VALUES(?,?,?,?,?,?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, product.getProductId());
            ps.setString(2,product.getProductName());
            ps.setString(3, product.getProductImage());
            ps.setString(4, product.getProductDescription());
            ps.setInt(5, product.getProductCost());
            ps.setBoolean(6, product.isIsActive());
            ps.executeUpdate();
        }
        catch(Exception e){  
            System.out.println(e);
        }
    }
    
    public void deleteProduct(String productID){
        String query = "delete from product where productId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productID );
            ps.executeUpdate();
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    public void updateProduct(Product product){
        String query = "update product set productName = ?, productImage = ?, productDescripntion = ?, productCost = ?, isActive = ? where productId = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, product.getProductName());
            ps.setString(2, product.getProductImage());
            ps.setString(3, product.getProductDescription());
            ps.setInt(4, product.getProductCost());
            ps.setBoolean(5, product.isIsActive());
            ps.executeUpdate();
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    public Product getProductById(String productId){
        String query = "select * from product where productId = ?;";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,productId);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Product(rs.getString(1),
                                    rs.getString(2),
                                    rs.getString(3),
                                    rs.getString(4),
                                    rs.getInt(5),
                                    rs.getBoolean(6));
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
        return null;
    }
    
    public int GetProductCostByProductId(String productId){
        String query = "select * from product where productId = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productId);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Product(rs.getString(1),rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(5),
                            rs.getBoolean(6)).getProductCost();
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
        return 0;
    }
    
    public String GetProductNameByProductId(String productId){
        String query = "select * from product where productId = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productId);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Product(rs.getString(1),rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(5),
                            rs.getBoolean(6)).getProductName();
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
        return "";
    }
   
    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
