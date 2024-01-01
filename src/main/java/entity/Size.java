/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author admin
 */
public class Size {
    private String sizeId, sizeName;

    public Size(String sizeId, String sizeName) {
        this.sizeId = sizeId;
        this.sizeName = sizeName;
    }

    public String getSizeID() {
        return sizeId;
    }

    public String getSizeName() {
        return sizeName;
    }

    public void setSizeID(String sizeID) {
        this.sizeId = sizeID;
    }

    public void setSizeName(String sizeName) {
        this.sizeName = sizeName;
    }

    @Override
    public String toString() {
        return "Size{" + "sizeId=" + sizeId + ", sizeName=" + sizeName + '}';
    }
    
    
}
