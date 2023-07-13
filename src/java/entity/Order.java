/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import dao.OrderDAO;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author linhp
 */
public class Order {
    private String OrderID;
    private String id;
    private String code;
    private Date date;
    private Account user = new Account();
    private float totalPrice;
    private int status;
    private ArrayList<OrderDetail> items = new ArrayList<>();
    private String mID;
    private String status_Pay;
    
    public Order() {
    }

    public Order(String OrderID, float totalPrice) {
        this.OrderID = OrderID;
        this.totalPrice = totalPrice;
    }

    public Order(String OrderID, String id, String code, Date date, float totalPrice, int status) {
        this.OrderID = OrderID;
        this.id = id;
        this.code = code;
        this.date = date;
        this.totalPrice = totalPrice;
        this.status = status;
    }
    
    public Order(String OrderID, Account user,ArrayList<OrderDetail> items, String code, Date date, float totalPrice, int status) {
        this.OrderID = OrderID;
        this.user = user;        
        this.items = items;
        this.code = code;
        this.date = date;
        this.totalPrice = totalPrice;
        this.status = status;
    }
    
    public Order(String OrderID, ArrayList<OrderDetail> items, String id, String code, Date date, float totalPrice, int status) {
        this.OrderID = OrderID;
        this.items = items;
        this.id = id;
        this.code = code;
        this.date = date;
        this.totalPrice = totalPrice;
        this.status = status;
    }
    
    public Order(String OrderID, ArrayList<OrderDetail> items, Account user,String id, String code, Date date, float totalPrice, int status) {
        this.OrderID = OrderID;
        this.items = items;
        this.user = user;
        this.id = id;
        this.code = code;
        this.date = date;
        this.totalPrice = totalPrice;
        this.status = status;
    }
    
    public Order(String OrderID, ArrayList<OrderDetail> items, Account user,String id, String code, Date date, float totalPrice, int status, String mID, String status_Pay) {
        this.OrderID = OrderID;
        this.items = items;
        this.user = user;
        this.id = id;
        this.code = code;
        this.date = date;
        this.totalPrice = totalPrice;
        this.status = status;
        this.mID = mID;
        this.status_Pay = status_Pay;
    }

    public String getOrderID() {
        return OrderID;
    }

    public void setOrderID(String OrderID) {
        this.OrderID = OrderID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Account getUser() {
        return user;
    }

    public void setUser(Account user) {
        this.user = user;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public ArrayList<OrderDetail> getItems() {
        return items;
    }

    public void setItems(ArrayList<OrderDetail> items) {
        this.items = items;
    }

    public String getmID() {
        return mID;
    }

    public void setmID(String mID) {
        this.mID = mID;
    }

    public String getStatus_Pay() {
        return status_Pay;
    }

    public void setStatus_Pay(String status_Pay) {
        this.status_Pay = status_Pay;
    }
    
    

    @Override
    public String toString() {
        return "Order{" + "OrderID=" + OrderID + ", id=" + id + ", code=" + code + ", date=" + date + ", user=" + user + ", totalPrice=" + totalPrice + ", status=" + status + ", items=" + items + ", mID=" + mID + ", status_Pay=" + status_Pay + '}';
    }
    
    
}
