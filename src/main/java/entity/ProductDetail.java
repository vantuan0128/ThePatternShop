/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author admin
 */
public class ProductDetail {
    private String productDetailId, productId, sizeId, colorId;
    private int quantity;

    public ProductDetail(String productId, String sizeId, String colorId, int quantity) {
        this.productId = productId;
        this.sizeId = sizeId;
        this.colorId = colorId;
        this.quantity = quantity;
        this.productDetailId = productId + "_" + colorId + "_" + sizeId;
    }

    public String getProductDetailId() {
        return productDetailId;
    }

    public String getProductId() {
        return productId;
    }

    public String getSizeId() {
        return sizeId;
    }

    public String getColorId() {
        return colorId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setProductDetailId(String productDetailId) {
        this.productDetailId = productDetailId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public void setSizeId(String sizeId) {
        this.sizeId = sizeId;
    }

    public void setColorId(String colorId) {
        this.colorId = colorId;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "ProductDetail{" + "productDetailId=" + productDetailId + ", productId=" + productId + ", sizeId=" + sizeId + ", colorId=" + colorId + ", quantity=" + quantity + '}';
    }
}
