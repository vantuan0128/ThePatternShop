/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author admin
 */
public class Cart {
    private String cardId, id, productDetailId;
    private int count, total;
    
    public Cart(){
        this.cardId = this.id = this.productDetailId = "";
        this.count = this.total = 0;
    }
    
    public Cart(String id, String productDetailId, int count){
        this.cardId = "cart_" + id;
        this.productDetailId = productDetailId;
        this.count = count;
    }

    public Cart(String cardId, String id, String productDetailId, int count, int total) {
        this.cardId = cardId;
        this.id = id;
        this.productDetailId = productDetailId;
        this.count = count;
        this.total = total;
    }
    
    public String getCardId() {
        return cardId;
    }

    public String getId() {
        return id;
    }

    public String getProductDetailId() {
        return productDetailId;
    }

    public int getCount() {
        return count;
    }

    public int getTotal() {
        return total;
    }

    public void setCardId(String cardId) {
        this.cardId = cardId;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setProductDetailID(String productDetailId) {
        this.productDetailId = productDetailId;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Cart{" + "cardId=" + cardId + ", id=" + id + ", productDetailId=" + productDetailId + ", count=" + count + ", total=" + total + '}';
    }
    
    
}
