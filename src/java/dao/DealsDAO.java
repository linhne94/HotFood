/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DatabaseInfo;
import static dao.ProductDAO.getConnect;
import entity.Category;
import entity.Deals;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import entity.Product;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author DELL
 */
public class DealsDAO implements DatabaseInfo {

    public static Connection getConnect() {
        try {
            Class.forName(DRIVERNAME);
        } catch (ClassNotFoundException e) {
            System.out.println("Error loading driver" + e);
        }
        try {
            Connection con = DriverManager.getConnection(DBURL, USERDB, PASSDB);
            System.out.println("Connect database success!");
            return con;
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return null;
    }

    public static ArrayList<Deals> getAllDeals() {

        ArrayList<Deals> ls = new ArrayList<>();
        String query = "SELECT	d.ID,p.pID,p.pname, p.img, p.CateID,p.price ,d.priceDeal,d.StartDate,d.EndDate,DATEDIFF(DAY,GETDATE(),EndDate) AS SoNgayConLai FROM Product p INNER JOIN Deals d ON p.pID = d.pID";
        try (Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ls.add(new Deals(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getFloat(6), rs.getFloat(7), rs.getDate(8), rs.getDate(9),rs.getInt(10)));
            }
            return ls;
        } catch (Exception e) {
        }
        return null;
    }
    public Deals getDealById(String id) {

        String query = "SELECT	d.ID,p.pID,p.pname, p.img, p.CateID,p.price ,d.priceDeal,d.StartDate,d.EndDate,DATEDIFF(DAY,GETDATE(),EndDate) AS SoNgayConLai \n" +
"FROM Product p INNER JOIN Deals d ON p.pID = d.pID\n" +
"where d.ID = ?";
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Deals(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getFloat(6), rs.getFloat(7), rs.getDate(8), rs.getDate(9),rs.getInt(10));
            }
        } catch (Exception e) {
        }
        return null;
    }
public void addDeal(int ID, int pID, float priceDeal,String StartDate, String EndDate) {
        try ( Connection con = getConnect()) {
            String query = "insert into deals (id,pid,priceDeal,StartDate,EndDate)\n" +
"values (?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, ID);
            ps.setInt(2, pID);
            ps.setFloat(3, priceDeal);
            ps.setString(4,StartDate);
            ps.setString(5,EndDate);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }
 public static void editDeal(String ID,String priceDeal,String StartDate, String EndDate) {
        try ( Connection con = getConnect()) {
            String query = "update deals \n" +
                "set priceDeal = ?,\n" +
                "StartDate ='?',\n" +
                "EndDate='?'\n" +
                "where id = ?";
            
             PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, priceDeal);         
            ps.setString(2, StartDate);
            ps.setString(3, EndDate);
            ps.setString(4, ID);
            ps.executeUpdate();
            
            System.out.println("update deals oke");

        } catch (Exception e) {
            System.out.println("loi roi");
        }
    }
 
    public static void updateDeals(String ID,String priceDeal,String StartDate, String EndDate) {
        try ( Connection con = getConnect()) {
        
                PreparedStatement ps = con.prepareStatement("update deals set priceDeal =?, StartDate =?, EndDate=? where id =?");
                ps.setString(1, priceDeal);
                ps.setString(2, StartDate);
                ps.setString(3, EndDate);
                ps.setString(4, ID);
                ps.executeUpdate();

                System.out.println("update Bill success");
            
        } catch (Exception ex) {
            System.out.println("loi roi");
        }
    }
   public void deleteDeal(String id) {
        String query = "delete from Deals where ID = ?";
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
   
    public static void main(String[] args) {
        updateDeals("1", "190000", "2023-05-22", "2023-06-22");
    }
}