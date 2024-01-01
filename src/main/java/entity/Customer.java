/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author admin
 */
public class Customer {
    
    private String id, password, name, email, mobiPhone, address, state;

    public Customer() {
        this.id = this.password = this.name = this.email = this.mobiPhone = this.address = "";
        this.state = "Hoạt động";
    }
    
    public Customer(String id, String password, String name, String emailOrMobiPhone) {
        this.id = id;
        this.password = password;
        this.name = name;
        this.address = "";
        this.state = "Hoạt động";

        if (isEmail(emailOrMobiPhone)) {
            this.email = emailOrMobiPhone;
            this.mobiPhone = "";
        } else {
            this.mobiPhone = emailOrMobiPhone;
            this.email = "";
        }
    }
    
    
    // DAO
    public Customer(String id, String password, String name, String email, String mobiPhone, String address, String state) {
        this.id = id;
        this.password = password;
        this.name = name;
        this.email = email;
        this.mobiPhone = mobiPhone;
        this.address = address;
        this.state = state;
    }
      
    public boolean isEmail(String emailOrMobiPhone) {
        return emailOrMobiPhone.contains("@");
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobiPhone() {
        return mobiPhone;
    }

    public void setMobiPhone(String mobiPhone) {
        this.mobiPhone = mobiPhone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Customer{" + "id=" + id + ", password=" + password + ", name=" + name + ", email=" + email + ", mobiPhone=" + mobiPhone + ", address=" + address + ", state=" + state + '}';
    }

}
