/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author admin
 */
public class Product {
    private String idPro, namePro, descriptionPro, typePro;
    private long price, perchase_price;
    private String imageFileName;

    public Product(String idPro, String namePro, String descriptionPro, String typePro, long price, long perchase_price, String imageFileName) {
        this.idPro = idPro;
        this.namePro = namePro;
        this.descriptionPro = descriptionPro;
        this.typePro = typePro;
        this.price = price;
        this.perchase_price = perchase_price;
        this.imageFileName = imageFileName;
    }

    public String getIdPro() {
        return idPro;
    }

    public String getNamePro() {
        return namePro;
    }

    public String getDescriptionPro() {
        return descriptionPro;
    }

    public String getTypePro() {
        return typePro;
    }

    public long getPrice() {
        return price;
    }

    public long getPerchase_price() {
        return perchase_price;
    }

    public String getImageFileName() {
        return imageFileName;
    }

    public void setIdPro(String idPro) {
        this.idPro = idPro;
    }

    public void setNamePro(String namePro) {
        this.namePro = namePro;
    }

    public void setDescriptionPro(String descriptionPro) {
        this.descriptionPro = descriptionPro;
    }

    public void setTypePro(String typePro) {
        this.typePro = typePro;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public void setPerchase_price(long perchase_price) {
        this.perchase_price = perchase_price;
    }

    public void setImageFileName(String imageFileName) {
        this.imageFileName = imageFileName;
    }
    
    
}
