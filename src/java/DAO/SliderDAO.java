/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import Model.Slider;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author BEAN
 */
public class SliderDAO {

    public static void main(String[] args) throws Exception {
        
        System.out.println(new SliderDAO().getAllSlider());

    }

    public List<Slider> getAllSliderShow() throws SQLException, Exception {
        List<Slider> list = new ArrayList<>();
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from Slider\n"
                    + "where status = 1 ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Slider s = Slider.builder()
                        .slideID(rs.getInt(1))
                        .slideTitle(rs.getString(2))
                        .backLink(rs.getString(3))
                        .imageURL(rs.getString(4))
                        .status(rs.getBoolean(5))
                        .author(User.builder().userID(6).build())
                        .build();
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;

    }

    public List<Slider> getAllSlider() throws SQLException, Exception {
        List<Slider> list = new ArrayList<>();
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from Slider";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Slider s = Slider.builder()
                        .slideID(rs.getInt(1))
                        .slideTitle(rs.getString(2))
                        .backLink(rs.getString(3))
                        .imageURL(rs.getString(4))
                        .status(rs.getBoolean(5))
                        .author(User.builder().userID(6).build())
                        .build();
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;

    }

    public void changeSlideStatus(String sliderID, String status) throws Exception {
        String query = "";
        switch (status) {
            case "hide":
                query = "update Slider set Status = 0  where SlideID = ? ";
                break;
            case "show":
                query = "update Slider set Status = 1  where SlideID = ? ";
                break;
        }

        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, sliderID);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public Slider getSliderByID(String sliderID) throws Exception {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from Slider where SlideID= ? ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, sliderID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Slider s = Slider.builder()
                        .slideID(rs.getInt(1))
                        .slideTitle(rs.getString(2))
                        .backLink(rs.getString(3))
                        .imageURL(rs.getString(4))
                        .status(rs.getBoolean(5))
                        .author(User.builder().userID(6).build())
                        .build();
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public void editSlider(String title, String backlink, String imageUrl, String status, String authorID, String sliderID) throws Exception {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "update Slider set SlideTitle = ? , BackLink = ? , ImageURL = ? , Status = ? , AuthorID = ? where SlideID = ? ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, backlink);
            ps.setString(3, imageUrl);
            ps.setString(4, status);
            ps.setString(5, authorID);
            ps.setString(6, sliderID);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public void addSlider(String title, String backlink, String imageUrl, String status, String authorID) throws Exception {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "insert into slider values( ?  , ? , ? , ? , ? )";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, backlink);
            ps.setString(3, imageUrl);
            ps.setString(4, status);
            ps.setString(5, authorID);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteSlider(String sliderID) throws Exception {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "delete Slider where SlideID = ? ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, sliderID);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Slider> getSliderByPage(String page) throws Exception {
        int element = 5;
        int start = Integer.parseInt(page) * element - element;
        List<Slider> list = new ArrayList<>();
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from slider \n"
                    + "order bY SlideID\n"
                    + "OFFSET ? ROWS\n"
                    + "FETCH NEXT ?  ROWS ONLY";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, start);
            ps.setInt(2, element);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Slider s = Slider.builder()
                        .slideID(rs.getInt(1))
                        .slideTitle(rs.getString(2))
                        .backLink(rs.getString(3))
                        .imageURL(rs.getString(4))
                        .status(rs.getBoolean(5))
                        .author(User.builder().userID(6).build())
                        .build();
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

}
