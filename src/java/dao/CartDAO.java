/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.ProductDAO.getConnect;
import entity.CartDetail;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author linhp
 */
public class CartDAO {
    
    public static void setCartId(int id){
        String query = "insert into Cart(ID) VALUES(?)";
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        }catch (Exception e) {
            System.out.println("loi roi");
        }  
    }
    
    public static String getCartId(int id){  
        String CartId = null;
        String query = "select * from Cart where ID=?";
        try (Connection con = getConnect()) {
            
            PreparedStatement ps = con.prepareStatement(query);            
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                CartId = rs.getString(1);
            }    
            return CartId;
        }catch (Exception e) {
            System.out.println("loi roi");
        }  
        return null;
    }
    
    public static ArrayList<CartDetail> getAllCartItems(String CartId) {

        ArrayList<CartDetail> ls = new ArrayList<>();

        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from CartDetail where CartID=?");
            ps.setString(1, CartId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product prod = ProductDAO.getProductById(rs.getString(2));
                CartDetail items = new CartDetail(rs.getString(1), prod, rs.getInt(3));
                ls.add(items);
            }
            
            return ls;
        } catch (Exception e) {
            System.out.println("loi roi");
        }
        return null;
    }
    
    public static ArrayList<CartDetail> getAllItemsChoose(String CartId) {

        ArrayList<CartDetail> ls = new ArrayList<>();

        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from CartDetail where CartID=? and status = 1");
            ps.setString(1, CartId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product prod = ProductDAO.getProductById(rs.getString(2));
                CartDetail items = new CartDetail(rs.getString(1), prod, rs.getInt(3));
                ls.add(items);
            }
            
            return ls;
        } catch (Exception e) {
            System.out.println("loi roi");
        }
        return null;
    }
    
    // choose items to order
    public static void addToChoose(String CartId, String pId, int status) {
        try ( Connection con = getConnect()) {
            
            PreparedStatement ps = con.prepareStatement("UPDATE CartDetail SET status = ? where CartID=? and pID=?");
            ps.setString(2, CartId);
            ps.setString(3, pId);
            ps.setInt(1, status);
            ps.executeUpdate();

            System.out.println("update cart success");
            
        } catch (Exception ex) {
            System.out.println("loi roi");
        }
    }
    ////////////////////
    
    public static int checkCartExists(String CartId, String pId){
        int Quantity = 0;
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from CartDetail where CartID=? and pID=?");
            ps.setString(1, CartId);
            ps.setString(2, pId);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                Quantity = rs.getInt(3);
            }
            return Quantity;
            
        } catch (Exception e) {
            System.out.println("loi roi");
        }
        return Quantity;
    }
    
    public static void addToCart(String CartId, String pId, int ProdQty) {
//        ProdQty = 1;
        try ( Connection con = getConnect()) {
//            System.out.println(con);
            if(checkCartExists(CartId, pId) != 0){
                ProdQty = checkCartExists(CartId, pId) + 1;
                updateToCart(CartId, pId, ProdQty);
            }else{
                PreparedStatement ps = con.prepareStatement("insert into CartDetail(CartID, pID, Quantity) VALUES(?, ?, ?)");
                ps.setString(1, CartId);
                ps.setString(2, pId);
                ps.setInt(3, ProdQty);
                ps.executeUpdate();
            } 
            System.out.println("add to cart success");
            
        } catch (Exception ex) {
            System.out.println("loi roi");
        }
    }
    // neu return -1 => update quantity
    
    public static void updateToCart(String CartId, String pId, int ProdQty) {
        try ( Connection con = getConnect()) {
//            System.out.println(con);
            if(ProdQty == 0){
                deleteToCart(CartId, pId);
            }
            else{
                PreparedStatement ps = con.prepareStatement("UPDATE CartDetail SET Quantity = ? where CartID=? and pID=?");
                ps.setString(2, CartId);
                ps.setString(3, pId);
                ps.setInt(1, ProdQty);
                ps.executeUpdate();

                System.out.println("update cart success");
            }
            
        } catch (Exception ex) {
            System.out.println("loi roi");
        }
    }
    
    public static void deleteToCart(String CartId, String pId) {
//        String sql = "Delete from CartDetail where CartID=? and pID=?";
        try (Connection con = getConnect()){
            PreparedStatement ps = con.prepareStatement("Delete from CartDetail where CartID=? and pID=?");
            ps.setString(1, CartId);
            ps.setString(2, pId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public static void deleteAllCart(String CartId) {
        String sql = "Delete from CartDetail where CartID=?";        
        String sql1 = "Delete from Cart where CartID=?";
        
        try (Connection con = getConnect()){
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, CartId);
            ps.executeUpdate();
            PreparedStatement ps1 = con.prepareStatement(sql1);
            ps1.setString(1, CartId);
            ps1.executeUpdate();
        } catch (Exception e) {
            System.out.println("loi roi cha noi");
        }
    }
    
    
    
//    public int getCartCount(String userId) {
//        int count = 0;
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        try ( Connection con = getConnect()) {
//            ps = con.prepareStatement("select sum(quantity) from CartDetail where UserId=?");
//
//            ps.setString(1, userId);
//
//            rs = ps.executeQuery();
//
//            if (rs.next() && !rs.wasNull()) {
//                count = rs.getInt(1);
//            }
//        } catch (Exception e) {
//        }
//        return count;
//    }
    public static void main(String[] args) {
//        System.out.println(getAllCartItems("1"));
//        System.out.println(ProductDAO.getProductById("2"));
//        addToCart("1", "3", 1);
//        System.out.println(updateToCart("1", "2", 0));
//        System.out.println(getCartId("15"));
//        System.out.println(checkCartExists("1", "17"));
//        for (int i = 0; i < 15; i++) {
//            deleteAllCart(String.valueOf(i));
//        }
        System.out.println(getAllCartItems(null));
    }

}
