package dao;


import static dao.ProductDAO.getConnect;
import entity.CartDetail;
import entity.Favourite;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author taing
 */
public class FavouriteDAO {
    public void addFavourite(String pID, int id, String status) {
        try ( Connection con = getConnect()) {
            String query = "INSERT INTO [dbo].Favourite([pID], [ID], [status]) VALUES (?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, pID);
            ps.setInt(2, id);
            ps.setString(3, status);
            ps.executeUpdate();
            System.out.println("add favourite success");

        } catch (Exception e) {
            System.out.println("loiiii");
        }
    }
    
    public static ArrayList<Favourite> getAllFavourite(int id) {

        ArrayList<Favourite> ls = new ArrayList<>();
        String query = "Select * from Favourite where ID=?";
        try ( Connection con = getConnect()) {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                ls.add(new Favourite(rs.getInt(2), ProductDAO.getProductById(rs.getString(2)), rs.getString(3), rs.getString(1)));
            }
            System.out.println(ls);
            return ls;

        } catch (Exception e) {
            System.out.println("getAllFavourite: Loi get All");
        }
        return null;
    }

}