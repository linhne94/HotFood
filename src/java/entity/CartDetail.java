/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.ArrayList;

/**
 *
 * @author linhp
 */
public class CartDetail {
    private String CartId;
    private Product items = new Product();
    private String pId;
    private String comboID;
    private int quantity;
    private boolean status;

    public CartDetail() {
    }

    public CartDetail(String CartId, String pId, int quantity) {
        this.CartId = CartId;
        this.pId = pId;
        this.quantity = quantity;
    }
    
    public CartDetail(String CartId, Product items, int quantity) {
        this.CartId = CartId;
        this.items = items;
        this.quantity = quantity;
    }

    public CartDetail(String CartId, Product items, int quantity, boolean status) {
        this.CartId = CartId;
        this.items = items;
        this.quantity = quantity;
        this.status = status;
    }
        
    public String getCartId() {
        return CartId;
    }

    public void setCartId(String CartId) {
        this.CartId = CartId;
    }

    public Product getItems() {
        return items;
    }

    public void setItems(Product items) {
        this.items = items;
    }

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "CartDetail{" + "CartId=" + CartId + ", items=" + items + ", pId=" + pId + ", quantity=" + quantity + '}';
    }    
    
}
