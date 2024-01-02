/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author admin
 */
public class Order {
    private String orderId, id, staffId, productDetailId, createdDate, address, state, paymentMethod, note, deliveryDate;
    private int total;

    public Order(String orderId, String id, String staffId, String productDetailId, String createdDate, String address, String state, String paymentMethod, String note, String deliveryDate, int total) {
        this.orderId = orderId;
        this.id = id;
        this.staffId = staffId;
        this.productDetailId = productDetailId;
        this.createdDate = createdDate;
        this.address = address;
        this.state = state;
        this.paymentMethod = paymentMethod;
        this.note = note;
        this.deliveryDate = deliveryDate;
        this.total = total;
    }

    public String getOrderId() {
        return orderId;
    }

    public String getId() {
        return id;
    }

    public String getStaffId() {
        return staffId;
    }

    public String getProductDetailId() {
        return productDetailId;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public String getAddress() {
        return address;
    }

    public String getState() {
        return state;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public String getNote() {
        return note;
    }

    public String getDeliveryDate() {
        return deliveryDate;
    }

    public int getTotal() {
        return total;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public void setProductDetailId(String productDetailId) {
        this.productDetailId = productDetailId;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public void setDeliveryDate(String deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public void setTotal(int total) {
        this.total = total;
    }
    
    
}
