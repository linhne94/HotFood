/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.ProductDAO.getConnect;
import entity.Account;
import entity.Order;
import entity.OrderDetail;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author linhp
 */
public class OrderDAO {
    /////////////////     *Manager*     //////////////////
    public static ArrayList<Order> getAllBillHistory(int id) {

        ArrayList<Order> ls = new ArrayList<>();
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from [Order] where managerID =?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account user = AccountDAO.getAccountById(rs.getString(4));
                Order items = new Order(rs.getString(1), 
                        getAllOrderItems(rs.getString(1)), 
                        user, 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getDate(2), 
                        rs.getFloat(6), 
                        rs.getInt(3),
                        rs.getString(7),
                        rs.getString(8));
                ls.add(items);
            }
            
            return ls;
        } catch (Exception e) {
            System.out.println("loi roi");
        }
        return null;
    }
    
    public static ArrayList<Order> getAllBill(String status) {

        ArrayList<Order> ls = new ArrayList<>();
//        int status = 0;
//        int status1 = 1;
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from [Order] where status=?");
            ps.setString(1, status);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account user = AccountDAO.getAccountById(rs.getString(4));
                Order items = new Order(rs.getString(1), 
                        getAllOrderItems(rs.getString(1)), 
                        user, 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getDate(2), 
                        rs.getFloat(6), 
                        rs.getInt(3),
                        rs.getString(7),
                        rs.getString(8));
                ls.add(items);
            }
            
            return ls;
        } catch (Exception e) {

            System.out.println("loi roi 1");

        }
        return null;
    }
    
    public static void updateStatusBill(String orderId, String status, String mID) {
        try ( Connection con = getConnect()) {
            if(mID == null){
                PreparedStatement ps = con.prepareStatement("UPDATE [Order] SET Status = ? where OrderID=? ");
                ps.setString(1, status);
                ps.setString(2, orderId);
                ps.executeUpdate();

                System.out.println("update Bill success");
            }
            else{
                PreparedStatement ps = con.prepareStatement("UPDATE [Order] SET Status = ?, managerID = ? where OrderID=? ");
                ps.setString(1, status);
                ps.setString(2, mID);
                ps.setString(3, orderId);
                ps.executeUpdate();

                System.out.println("update Bill success");
            }
        } catch (Exception ex) {

            System.out.println("loi roi 2");

        }
    }
    
    /////////////////     *Order*     //////////////////
    public static void addToBill(String OrderID, int id, String code, float totalPrice, int status) {
        
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement("insert into [Order](OrderID, Status, ID, Code, Total_Money) VALUES(?, ?, ?, ?, ?)");
            ps.setString(1, OrderID);
            ps.setInt(2, status);
            ps.setInt(3, id);
            ps.setString(4, code);
            ps.setFloat(5, totalPrice);
            ps.executeUpdate();
            
            System.out.println("add to Order success");
            
        } catch (Exception ex) {

            System.out.println("loi roi 3");

        }
    }
    
    public static ArrayList<Order> getAllBillById(int id) {

        ArrayList<Order> ls = new ArrayList<>();
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from [Order] where ID=? ORDER BY OrderID DESC");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order items = new Order(rs.getString(1), getAllOrderItems(rs.getString(1)), rs.getString(4), rs.getString(5), 
                        rs.getDate(2), rs.getFloat(6), rs.getInt(3));
                ls.add(items);
            }   
            
            return ls;
        } catch (Exception e) {

            System.out.println("loi roi 4");

        }
        return null;
    }
    
    public static ArrayList<Order> getAllBillByManagerID(int mId) {

        ArrayList<Order> ls = new ArrayList<>();
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from [Order] where managerID=? ORDER BY OrderID DESC");
            ps.setInt(1, mId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order items = new Order(rs.getString(1), getAllOrderItems(rs.getString(1)), rs.getString(4), rs.getString(5), 
                        rs.getDate(2), rs.getFloat(6), rs.getInt(3));
                ls.add(items);
            }   
            
            return ls;
        } catch (Exception e) {
            System.out.println("get all bill manager :loi roi");
        }
        return null;
    }
    
    public static ArrayList<Order> getAllBillByIdAndStatus(int id, String status) {

        ArrayList<Order> ls = new ArrayList<>();
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from [Order] where ID=? and status=? ORDER BY OrderID DESC");
            ps.setInt(1, id);
            ps.setString(2, status);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order items = new Order(rs.getString(1), getAllOrderItems(rs.getString(1)), rs.getString(4), rs.getString(5), 
                        rs.getDate(2), rs.getFloat(6), rs.getInt(3));
                ls.add(items);
            }
            
            return ls;
        } catch (Exception e) {

            System.out.println("loi roi 5");

        }
        return null;
    }
    
    
    ///////////////// *OrderDetail*  //////////////////
    public static ArrayList<OrderDetail> getAllOrderItems(String OrderID) {

        ArrayList<OrderDetail> ls = new ArrayList<>();

        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from OrderDetail where OrderID=?");
            ps.setString(1, OrderID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product prod = ProductDAO.getProductById(rs.getString(2));
                OrderDetail items = new OrderDetail(rs.getString(1), prod, rs.getInt(3), rs.getFloat(4));
                ls.add(items);
            }
            
            return ls;
        } catch (Exception e) {

            System.out.println("loi roi 6");

        }
        return null;
    }
    

    
    public static void addToOrderDetail(String CartId, int pId, int ProdQty, float price) {
//        ProdQty = 1;
        try ( Connection con = getConnect()) {
            
            PreparedStatement ps = con.prepareStatement("insert into OrderDetail(OrderID, pID, Quantity, price) VALUES(?, ?, ?, ?)");
            ps.setString(1, CartId);
            ps.setInt(2, pId);
            ps.setInt(3, ProdQty);
            ps.setFloat(4, price);
            ps.executeUpdate();
            
            System.out.println("add to cart success");
            
        } catch (Exception ex) {
            System.out.println("addoderdetail: loi roi");
        }
    }
    
    public static Order getBillbyOrderId(String OrderID) {

        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from [Order] where OrderID=?");
            ps.setString(1, OrderID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Order(rs.getString(1), rs.getFloat(6));
            }   
            
        } catch (Exception e) {
            System.out.println("getBillbyOrderId: error");
        }
        return null;
    }
    
}
