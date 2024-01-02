/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Customer;
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
public class CustomerDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Customer> getAllCustomer() {
        String query = "select * from customer;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<Customer> list = new ArrayList<>();
            while(rs.next()) {
                Customer a;
                a = new Customer(rs.getString(1),rs.getString(2),rs.getString(3), rs.getString(4), rs.getString(5),
                            rs.getString(6), rs.getString(7));
                list.add(a);
            }
            return list;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return null;
    }
    
    public void insertCustomer(Customer customer) {
        String query = "insert into customer(id,password,name,email,mobiPhone,address,state) VALUES(?,?,?,?,?,?,?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, customer.getId());
            ps.setString(2,customer.getPassword());
            ps.setString(3, customer.getName());
            ps.setString(4, customer.getEmail());
            ps.setString(5, customer.getMobiPhone());
            ps.setString(6, customer.getAddress());
            ps.setString(7, customer.getState());
            ps.executeUpdate();
        }
        catch(Exception e){  
            System.out.println(e);
        }
    }
    
    public void deleteCustomer(String id) {
        String query = "delete from customer where id = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,id);
            ps.executeUpdate();
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    public void updateCustomer(Customer customer) {
        String query = "update customer set name = ?, email = ?, mobiPhone = ?, address = ? where id = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, customer.getName());
            ps.setString(2, customer.getEmail());
            ps.setString(3, customer.getMobiPhone());
            ps.setString(4, customer.getAddress());
            ps.setString(5, customer.getId());
            ps.executeUpdate();
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    public Customer getCustomerById(String id){
        String query = "select * from customer where id = ?;";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,id);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Customer(rs.getString(1),
                                    rs.getString(2),
                                    rs.getString(3),
                                    rs.getString(4),
                                    rs.getString(5),
                                    rs.getString(6),
                                    rs.getString(7));
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
        return null;
    }

    public void updatePassword(String id, String password) {
        String query = "update customer set password = ? where id = ?;";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, password);
            ps.setString(2, id);
            ps.executeUpdate();
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    public void updateState(String id, String state){
        String query = "update customer set state = ? where id = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, state);
            ps.setString(2, id);
            ps.executeUpdate();
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    //Check tai khoan va mat khau
    public Customer check(String id, String password){
        String query = "select * from customer where binary id = ? and password = ?;";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Customer(id, password,rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
        return null;
    }
    
    // Check tai khoan
    public boolean checkExisted(String id){
        String query = "select * from customer where id = ?;";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while(rs.next()) {
                return true;
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
        return false;
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
