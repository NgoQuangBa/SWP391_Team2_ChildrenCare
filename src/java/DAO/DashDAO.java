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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class DashDAO extends DBContext{

    public List<User> getAlluser()throws SQLException,Exception{

        List<User> list = new ArrayList<>();
        
        try {
           Connection conn = new DBContext().getConnection();
            String query = "SELECT * from Users";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                User u = User.builder()
                        .userID(rs.getInt(1))
                        .name(rs.getString(2))
                        .gender(rs.getBoolean(3))
                        .email(rs.getString(4))
                        .username(rs.getString(5))
                        .password(rs.getString(6))
                        .phone(rs.getString(7))
                        .role(Role.builder().roleID(rs.getInt(8)).build())
                        .build();
                
                list.add(u);
                
                }
        }
        catch (Exception e) {
                throw new ExceptionInInitializerError();
        }
        return list;
    }
    
    
    
    //get children 
    public List<Children> getAllChild() throws SQLException,Exception{
        List<Children> list = new ArrayList<>();
        
        try {
           Connection conn = new DBContext().getConnection();
            String query = "SELECT * from Children";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Children c = Children.builder()
                        .childId(rs.getInt(1))
                        .childname(rs.getString(2))
                        .gender(rs.getInt(3))
                        .parentId(rs.getInt(4))
                        .build();
                
                list.add(c);
                
                }
        }
        catch (Exception e) {
                throw new ExceptionInInitializerError();
        }
        return list;
    }
    //
    public  void getChildrenByID(int childId) throws Exception{
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
                        
               
            }
        } catch (Exception e) {
        }
    }
     public List<Children> search(String keyword) {
        List<Children> list = new ArrayList<>();
        try {
            String sql = "select *  from Product where Product_Name like ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");
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
        } catch (Exception ex) {
            
        }
        return list;
    }
    
}
