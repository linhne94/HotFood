/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author linhp
 */
public class OrderDetail {
    private String OrderID;
    private String pID;
    private Product items = new Product();
    private int quantity;
    private float price;

    public OrderDetail() {
    }

//    public OrderDetail(String OrderID, String pID, int quantity, float price) {
//        this.OrderID = OrderID;
//        this.pID = pID;
//        this.quantity = quantity;
//        this.price = price;
//    }
    
    public OrderDetail(String OrderID, Product items, int quantity, float price) {
        this.OrderID = OrderID;
        this.items = items;
        this.quantity = quantity;
        this.price = price;
    }

    public Product getItems() {
        return items;
    }

    public void setItems(Product items) {
        this.items = items;
    }

    public String getOrderID() {
        return OrderID;
    }

    public void setOrderID(String OrderID) {
        this.OrderID = OrderID;
    }

    public String getpID() {
        return pID;
    }

    public void setpID(String pID) {
        this.pID = pID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

//    @Override
//    public String toString() {
//        return "OrderDetail{" + "OrderID=" + OrderID + ", pID=" + pID + ", quantity=" + quantity + ", price=" + price + '}';
//    }

    @Override
    public String toString() {
        return "OrderDetail{" + "OrderID=" + OrderID + ", items=" + items + ", quantity=" + quantity + ", price=" + price + '}';
    }
    
}
