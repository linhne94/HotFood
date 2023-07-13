/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.ProductDAO.getConnect;
import entity.Discount;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author taing
 */
public class DiscountDAO {
    
    public ArrayList<Discount> getAllDiscount() { // sql server hieu String van = int nene dung String duoc.
        ArrayList<Discount> list = new ArrayList<>();
        String query = "SELECT Code, Discount ,StartDate,EndDate,DATEDIFF(DAY,GETDATE(),EndDate) AS SoNgayConLai from Discountt";
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            // lay du lieu tu rs do vao list
            while (rs.next()) {
                list.add(new Discount(rs.getString(1),
                        rs.getFloat(2),
                        rs.getDate(3),
                        rs.getDate(4),
                        rs.getInt(5)));

            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public Discount getCode(String code){
        
        String query = "select * from Discountt where Code = ?";
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, code);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Discount(rs.getString(1), rs.getFloat(2), rs.getDate(3), rs.getDate(4));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public Discount checkCodeExists(String code){
        
        String query = "select *, DATEDIFF(DAY,GETDATE(),EndDate) AS SoNgayConLai from Discountt where Code = ?";
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, code);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Discount(rs.getString(1), rs.getFloat(2), rs.getDate(3), rs.getDate(4), rs.getInt(5));
            }
            else{
                System.out.println("CheckCodeExists: code khong ton tai");
            }
        } catch (Exception e) {
            System.out.println("CheckCodeExists: loi roi");
        }
        return null;
    }
    
    public boolean checkUserUsesCode(int id, String code){
        String query = "select * from [Order] where id= ? and Code = ?";
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, code);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {        
                System.out.println("checkUserUsesCode: ban da dung code nay roi");
                return false;
            }
        } catch (Exception e) {
            System.out.println("checkUserUsesCode: loi roi");
        }
        return true;
    }
    
    
    
    public void deleteDiscount(String code) {
        String query = "delete from Discountt where Code = ?";
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, code);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    
    public void editDiscount(String code,float discount ,String startDate, String endDate) {
        try ( Connection con = getConnect()) {
            String query = "update Discountt set [Discount] = ?,\n" +
"					[StartDate] = ?,\n" +
"					[EndDate] = ?\n" +
"                    where  [Code] = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setFloat(1, discount);
            ps.setString(2, startDate);
            ps.setString(3, endDate);
            ps.setString(4, code);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }
    
    
    public void addDiscount(String code,float discount ,String startDate, String endDate) {
        try ( Connection con = getConnect()) {
            String query = "INSERT [dbo].Discountt([Code], [Discount],  [StartDate], [EndDate]) VALUES (?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, code);
            ps.setFloat(2, discount);
            ps.setString(3, startDate);
            ps.setString(4, endDate);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }
    
}
