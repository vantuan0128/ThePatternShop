/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Cart;
import entity.Color;
import entity.Product;
import entity.Size;
import java.util.List;

/**
 *
 * @author admin
 */
public class test {
    public static void main(String[] args) {
//        List<Product> ss = new ProductDAO().getAllProduct();
//        for (Product s: ss){
//            System.out.println(s.toString());
//        }
//        
//        List<Color> colors = new ColorDAO().getAllColor();
//        List<Size> sizes = new SizeDAO().getAllSize();
//        for (Color s: colors){
//            System.out.println(s.toString());
//        }
//        for (Size s: sizes){
//            System.out.println(s.toString());
//        }
//        
//        List<Cart> carts = new CartDAO().getAllCartById("datnq");
//        if (carts == null) {
//            System.out.println("ERR");
//        }
//        else{
//            for (Cart s: carts){
//                System.out.println(s.toString());
//            }
//        }
//        new CartDAO().updateCountCart("datnq", "Shirt001_Black_S", 6);
//        
//        System.out.println(new ProductDetailDAO().getQuantityByProductId("Shirt001"));
//        System.out.println(new ProductDetailDAO().getAllColorByProductId("Shirt001"));
//        System.out.println(new ProductDetailDAO().getAllSizeByProductId("Shirt001"));
//        System.out.println(new ProductDetailDAO().getQuantity("Shirt001_Black_L"));

//        new CartDAO().insertToCart("datnq", "Shirt001_Black_L", 5);
        

        int current = new ProductDetailDAO().getQuantityByProductDetailId("Shirt001_Black_L");
        System.out.println(current);
        new ProductDetailDAO().updateProductDetailQuantity("Shirt001_Black_L", current + 2);
        current = new ProductDetailDAO().getQuantityByProductDetailId("Shirt001_Black_L");
        System.out.println(current);

    }
}
