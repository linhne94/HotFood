/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author linhp
 */
public class Cart {
    String CartId;
    String UserId;

    public Cart() {
    }

    public Cart(String CartId, String UserId) {
        this.CartId = CartId;
        this.UserId = UserId;
    }

    public String getCartId() {
        return CartId;
    }

    public void setCartId(String CartId) {
        this.CartId = CartId;
    }

    public String getUserId() {
        return UserId;
    }

    public void setUserId(String UserId) {
        this.UserId = UserId;
    }
    
}
