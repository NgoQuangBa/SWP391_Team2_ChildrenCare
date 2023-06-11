/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import Model.Feedback;
import Model.Service;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class FeedbackDAO {

    public void insertFeedback(int sid, int cid, String detail, String rate, String img) {
        try {
            String sql = "INSERT [dbo].[Feedbacks] ( [FeedbackDetail], [CustomerID], [Rated], [imglink], [ServiceID],[CreationDate],[Status]) \n"
                    + "VALUES ( ?, ?, ?, ?, ?, GETDATE(),1)";
            Connection connection = new DBContext().getConnection();
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, detail);
            stm.setInt(2, cid);
            stm.setInt(3, Integer.valueOf(rate));
            stm.setString(4, img);
            stm.setInt(5, sid);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public ArrayList<Feedback> getFeedbackBypid(int sid) {
        ArrayList<Feedback> FeedbackList = new ArrayList<>();
        try {
            Connection connection = new DBContext().getConnection();
            String sql = "select * from Feedbacks where ServiceID =? and status =1";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Feedback fb = new Feedback(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getDate(7));
                FeedbackList.add(fb);
            }
        } catch (Exception e) {
        }
        return FeedbackList;
    }

    public void UpdateFeedback(int fid, String detail, int rate, String crDate, int status) {
        try {
            Connection connection = new DBContext().getConnection();
            String sql = "   update Feedbacks set [FeedbackDetail] = ?,[Rated]=? , \n"
                    + " [CreationDate]=? ,[Status]=? where [FeedbackID] =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, detail);
            stm.setInt(2, rate);
            stm.setString(3, crDate);
            stm.setInt(4, status);
            stm.setInt(5, fid);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void UpdateFeedbackStatus(int fid, int status) {
        try {
            Connection connection = new DBContext().getConnection();
            String sql = " update Feedbacks set [Status]=? where [FeedbackID] =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, status);
            stm.setInt(2, fid);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteFeedback(int fid) {
        try {
            Connection connection = new DBContext().getConnection();
            String sql = " DELETE FROM Feedbacks where [FeedbackID] =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, fid);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public ArrayList<Feedback> getAllFeedback(String filters, String filterr) {
        if (filterr == null) {
            filterr = "";
        }
        if (filters == null) {
            filters = "";
        }
        ArrayList<Feedback> FeedbackList = new ArrayList<>();
        try {
            Connection connection = new DBContext().getConnection();
            String sql = "select *, s.ServiceID as serID from [Feedbacks] f, [Services] s, Users u\n"
                    + "  where f.CustomerID = u.UserID and f.ServiceID = s.ServiceID  and f.Rated like ? and f.Status like ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, '%' + filterr + '%');
            stm.setString(2, '%' + filters + '%');
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                User u = User.builder().userID(rs.getInt("UserID")).name(rs.getString("Name")).build();
                Service s = Service.builder().serviceID(rs.getInt("serID")).serviceName(rs.getString("ServiceName")).build();
                Feedback fb = Feedback.builder().id(rs.getInt(1)).detail(rs.getString(2)).Rated(rs.getInt(4))
                        .imglink(rs.getString(5)).services(s).createDate(rs.getDate(7)).user(u).status(rs.getBoolean(8)).build();
                FeedbackList.add(fb);
            }
        } catch (Exception e) {
        }
        return FeedbackList;
    }

}



