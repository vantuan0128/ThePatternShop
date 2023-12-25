/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Product;
import java.util.List;

/**
 *
 * @author admin
 */
public class test {
    public static void main(String[] args) {
        List<Product> ss = new ProductDAO().selectAllProducts();
        for (Product s: ss){
            System.out.println(s.toString());
        }
    }
}
