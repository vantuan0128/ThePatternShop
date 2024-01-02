/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class OrderDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    
    public List<Order> getAllOrder() {
        String query = "select * from `order`;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<Order> list = new ArrayList<>();
            while(rs.next()) {
                Order a = new Order(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getInt(11)
                );
                list.add(a);
            }
            return list;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return null;
    }
    
    public List<Order> getOrderById(String id){
        String query = "select * from `order` where id = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            List<Order> list = new ArrayList<>();
            while(rs.next()) {
                Order a = new Order(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getInt(11)
                );
                list.add(a);
            }
            return list;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return null;
    }
    
    public void insertOrder(Order order){
        String query = "insert into `order`(orderId, id, staffId, productDetailId, createdDate, address, state, paymentMethod, note, deliveryDate, total) VALUES(?,?,?,?,?,?,?,?,?,?,?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, order.getOrderId());
            ps.setString(2, order.getId());
            ps.setString(3, order.getStaffId());
            ps.setString(4, order.getProductDetailId());
            ps.setString(5, order.getCreatedDate());
            ps.setString(6, order.getAddress());
            ps.setString(7, order.getState());
            ps.setString(8, order.getPaymentMethod());
            ps.setString(9, order.getNote());
            ps.setString(10, order.getDeliveryDate());
            ps.setInt(11, order.getTotal());
            ps.executeUpdate();
        }
        catch(Exception e){  
            System.out.println(e);
        }
    }
}
