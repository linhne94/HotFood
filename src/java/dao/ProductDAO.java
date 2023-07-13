
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DatabaseInfo;
import entity.Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import entity.Product;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author linhp
 */
public class ProductDAO implements DatabaseInfo {

    public static Connection getConnect() {
        try {
            Class.forName(DRIVERNAME);
        } catch (ClassNotFoundException e) {
            System.out.println("Error loading driver" + e);
        }
        try {
            Connection con = DriverManager.getConnection(DBURL, USERDB, PASSDB);
//            System.out.println("Connect database success!");
            return con;
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return null;
    }

    public static Product getProductById(String id) {

        String query = "Select * from Product where pID = ?";
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1), rs.getString(2), rs.getString(6), rs.getFloat(5), rs.getString(4), rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }
//    

    public static ArrayList<Product> getAllProduct() {

        ArrayList<Product> ls = new ArrayList<>();
        String query = "Select * from Product";
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ls.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(6), rs.getFloat(5), rs.getString(4), rs.getString(3)));
            }
            return ls;
        } catch (Exception e) {
        }
        return null;
    }

    
    public ArrayList<Product> getProductByIdCate(String cId){
        

        ArrayList<Product> ls = new ArrayList<>();
        String query = "Select * from Product where CateID = ?";
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, cId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ls.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(6), rs.getFloat(5), rs.getString(4), rs.getString(3)));
            }
            return ls;
        } catch (Exception e) {
        }
        return null;
    }

    public ArrayList<Category> getAllCate() {

        ArrayList<Category> ls = new ArrayList<>();
        String query = "Select * from Category";
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ls.add(new Category(rs.getInt(1), rs.getString(2)));
            }
            return ls;
        } catch (Exception e) {
        }
        return null;
    }

    
    
    public  Category getNameCateById(String cId){
        Category cate = new Category();
        String query = "select  * from Category where CateID =?";
        try (Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, cId);
            ResultSet  rs = ps.executeQuery();
            while(rs.next()){
             return new Category(rs.getInt(1), rs.getString(2));
            }
        } catch (Exception e) {
        }
    return null;
}

    public ArrayList<Product> searchProducrByName(String txtSearch) {
        ArrayList<Product> products = new ArrayList<>();
        String query = "select * from Product\n"
                + "where [pName] like ?";

        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getInt(1), rs.getString(2), rs.getString(6), rs.getFloat(5), rs.getString(4), rs.getString(3));
                products.add(product);
            }
        } catch (Exception e) {
        }
        return products;

    }

    public void deleteProduct(String id) {
        String query = "delete from Product where pID = ?";
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //editProduct
    public void editProduct(String name, String image, String price, String detail, String cateID, String id) {
        try ( Connection con = getConnect()) {
            String query = "update Product\n"
                    + "set [pName] = ?, \n"
                    + "[img] = ?,\n"
                    + "[price] = ?,\n"
                    + "[detail] = ?,\n"
                    + "[CateID] = ?\n"
                    + "where  [pID] = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, detail);
            ps.setString(5, cateID);
            ps.setString(6, id);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void addProduct(String name, String category, String detail, String price, String image) {
        try ( Connection con = getConnect()) {
            String query = "INSERT [dbo].Product([pName], [CateID],  [detail], [price], [img]) VALUES (?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, category);
            ps.setString(3, detail);
            ps.setString(4, price);
            ps.setString(5, image);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    
    
}

