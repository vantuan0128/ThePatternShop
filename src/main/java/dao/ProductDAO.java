/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
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
    
    public ProductDAO(){
        dbContext = new DBContext();
    }
    
    private static final String tableName = "products";
    
    
    private static final String INSERT_PRODUCT = "insert into " + tableName + " (Id, Name, Image, Description, Cost, IsActive) VALUES " +
        " (?, ?, ?, ?, ?, ?);";
    private static final String SELECT_PRODUCT_BY_ID = "select Id, Name, Image, Description, Cost, IsActive from " + tableName + " where Id =?";
    private static final String SELECT_ALL_PRODUCT = "select * from " + tableName + ";";
    private static final String DELETE_PRODUCT_MYSQL = "delete from " + tableName + " where Id = ?;";
    private static final String UPDATE_PRODUCT_MYSQL = "update " + tableName + " set Name = ?, Image= ?, Description = ?, Cost = ?, IsActive = ? where Id = ?;";
    
    
    
    public void insertProduct(Product product){
        try (Connection connection = dbContext.getConnection(); 
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRODUCT)) {
            preparedStatement.setString(1, product.getId());
            preparedStatement.setString(2, product.getName());
            preparedStatement.setString(3, product.getImage());
            preparedStatement.setString(4, product.getDescription());
            preparedStatement.setInt(5, product.getCost());
            preparedStatement.setBoolean(6, product.isIsActive());
//            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    public Product selectProduct(String id) {
        Product product = null;
        try (Connection connection = dbContext.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCT_BY_ID);) {
            preparedStatement.setString(1, id);
//            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String image = rs.getString("image");
                String description = rs.getString("description");
                int cost = rs.getInt("cost");
                boolean isActive = rs.getBoolean("isActive");
                
                product = new Product(id, name, image, description, cost, isActive);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return product;
    }
    public List <Product> selectAllProducts() {
        List <Product> products = new ArrayList <> ();
        try (Connection connection = dbContext.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCT);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String image = rs.getString("image");
                String description = rs.getString("description");
                int cost = rs.getInt("cost");
                boolean isActive = rs.getBoolean("isActive");
                products.add(new Product(id, name, image, description, cost, isActive));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return products;
    }
    
    public boolean deleteProduct(String id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = dbContext.getConnection(); 
            PreparedStatement statement = connection.prepareStatement(DELETE_PRODUCT_MYSQL);) {
            statement.setString(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    
    public boolean updateProduct(Product product) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = dbContext.getConnection(); 
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PRODUCT_MYSQL);) {
            preparedStatement.setString(1, product.getName());
            preparedStatement.setString(2, product.getImage());
            preparedStatement.setString(3, product.getDescription());
            preparedStatement.setInt(4, product.getCost());
            preparedStatement.setBoolean(5, product.isIsActive());
            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
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
