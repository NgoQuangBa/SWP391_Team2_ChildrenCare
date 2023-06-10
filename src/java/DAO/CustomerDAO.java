/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Children;
import Context.DBContext;
import Model.Role;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class CustomerDAO {

    public static void main(String[] args) {
        CustomerDAO dao = new CustomerDAO();
    }

    public List<Children> getCustomerByPage(String page) {
        int currentPage = Integer.parseInt(page);
        int numOfElement = 5;
        int start = numOfElement * currentPage - numOfElement;
        List<Children> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String query = "Select * from Children\n"
                    + "ORDER BY ChildName \n"
                    + "OFFSET ? ROWS FETCH  NEXT ?  ROW ONLy";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, start);
            ps.setInt(2, numOfElement);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Children child = Children.builder()
                        .childId(rs.getInt(1))
                        .childname(rs.getString(2))
                        .gender(rs.getInt(3))
                        .parentId(rs.getInt(4))
                        .build();
                list.add(child);
            }
        } catch (Exception e) {
            throw new ExceptionInInitializerError();
        }
        return list;
    }

    public List<User> getAllCustomer() {
        List<User> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String query = "SELECT * FROM USERS u \n"
                    + "JOIN Roles r\n"
                    + "ON u.RoleID = r.RoleID\n"
                    + "WHERE r.RoleName  = 'Customer'";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                User u = User.builder()
                        .userID(rs.getInt(1))
                        .name(rs.getString(2))
                        .gender(rs.getBoolean(3))
                        .email(rs.getString(4))
                        .username(rs.getString(5))
                        .phone(rs.getString(6))
                        .role(new Role((rs.getInt(7))))
                        .imageURL(rs.getString(8))
                        .build();

                list.add(u);
            }
        } catch (Exception e) {
            throw new ExceptionInInitializerError();
        }
        return list;
    }

    public void editCustomer(String uid, String name, String gender, String username, String password, String phone, String roleID, String imageURL) {

        try {
            Connection conn = new DBContext().getConnection();
            String query = "UPDATE Children SET NAME = ? , Gender= ? ,Username = ? , Password = ? , Phone = ? , RoleID = ? , ImageURL= ? \n"
                    + "where UserID = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, gender);
            ps.setString(3, username);
            ps.setString(4, password);
            ps.setString(5, phone);
            ps.setString(6, roleID);
            ps.setString(7, imageURL);
            ps.setString(8, uid);
            ps.executeUpdate();
        } catch (Exception e) {
            throw new ExceptionInInitializerError();
        }
    }

    public User getUserByID(String uid) {
        try {
            Connection conn = new DBContext().getConnection();
            String query = "SELECT * FROM Users\n"
                    + "WHERE UserID = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, uid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return User.builder()
                        .userID(rs.getInt(1))
                        .name(rs.getString(2))
                        .gender(rs.getBoolean(3))
                        .email(rs.getString(4))
                        .username(rs.getString(5))
                        .phone(rs.getString(6))
                        .role(new Role((rs.getInt(7))))
                        .imageURL(rs.getString(8))
                        .build();

            }
        } catch (Exception e) {
            throw new ExceptionInInitializerError();
        }
        return null;
    }

}
