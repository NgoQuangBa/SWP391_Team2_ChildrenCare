/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Children;
import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class ManagerDAO extends DBContext {

    public static void main(String[] args) {
        ManagerDAO dao = new ManagerDAO();
     
        try {
          dao.editChildren(15, "bneannnnnnnnnnnnnnn", 1, 8);
        } catch (Exception ex) {
            Logger.getLogger(ManagerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }

    public Children getChildrenByID(int childId) throws Exception {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select*from dbo.Children where ChildID= ? ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, childId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Children child = Children.builder()
                        .childId(rs.getInt(1))
                        .childname(rs.getString(2))
                        .gender(rs.getInt(3))
                        .parentId(rs.getInt(4))
                        .build();
                return child;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void deleteChildren(String id) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "DELETE FROM dbo.Children"
                    + "\n" + "WHERE ChildID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    //
    public void insertChildren(String id, String childname, int gender,
            int parentId) throws SQLException {
//Ua khong lam ID tu tang a hinh nhu toi tat
        try {
            String sql = "insert into Children values(?,?,?,?)";

            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, childname);
            ps.setInt(3, gender);
            ps.setInt(4, parentId);
            ps.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(ManagerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    //

    public void editChildren(int childId, String childname, int gender,
            int parentId) throws SQLException {

        try {
            String sql = "UPDATE [dbo].[Children]\n"
                    + "   SET "
                    + "     [ChildName] = ?\n"
                    + "      ,[Gender] = ?\n"
                    + "      ,[ParentID] = ?\n"
                    + " WHERE ChildID = ?";

            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, childname);
            ps.setInt(2, gender);
            ps.setInt(3, parentId);
            ps.setInt(4, childId);

            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(ManagerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
