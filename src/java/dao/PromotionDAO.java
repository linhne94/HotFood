/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.ProductDAO.getConnect;
import entity.Combo;
import entity.ComboProduct;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class PromotionDAO{

    public static ArrayList<Combo> getAllCombo() {

        ArrayList<Combo> ls = new ArrayList<>();
        String query = "Select * from Combo";
        try (Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ls.add(new Combo(rs.getString(1), rs.getString(2), rs.getString(3), rs.getFloat(4),
                        null,getAllComboProductbyComboID(rs.getString(1))));
            }
            System.out.println("getAllCombo: success");
            return ls;
        } catch (Exception e) {
            System.out.println("getAllCombo: error");
        }
        return null;
    }

    
    public static ArrayList<ComboProduct> getAllComboProductbyComboID(String comboID) {
        ArrayList<ComboProduct> ls = new ArrayList<>();
        String query = "select * from ComboProduct where comboID = ?";
        try (Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, comboID);
            ResultSet rs = ps.executeQuery();
            ProductDAO prd = new ProductDAO();
            while (rs.next()) {
                ls.add(new ComboProduct(rs.getString(1), rs.getString(2),prd.getProductById(rs.getString(2))));
            }
            System.out.println("getAllComboProductbyComboID: success");
            return ls;
        } catch (Exception e) {
            System.out.println("getAllComboProductbyComboID: error");
        }
        return null;
    }
}