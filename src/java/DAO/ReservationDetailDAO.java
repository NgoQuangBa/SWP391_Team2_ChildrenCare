/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import Model.Cart;
import Model.Child;
import Model.Reservation;
import Model.ReservationDetail;
import Model.Service;
import Model.User;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Fannaby
 */
public class ReservationDetailDAO {

    public void saveCart(int rsvId, Map<Integer, Cart> carts, String date, String status, int childId) {
        try {

            String sql = "INSERT INTO [dbo].[ReservationDetails]\n"
                    + "           ([ReservationDate]\n"
                    + "           ,[ServiceID]\n"
                    + "           ,[ReservationID]\n"
                    + "           ,[Status]\n"
                    + "           ,[ChildID])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, date);
            ps.setInt(3, rsvId);
            ps.setInt(5, childId);
            ps.setString(4, status);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer sid = entry.getKey();
                Cart cart = entry.getValue();
                ps.setInt(2, cart.getService().getServiceID());
                ps.executeUpdate();
            }
        } catch (Exception ex) {
            Logger.getLogger(ReservationDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<ReservationDetail> getRsvDetailByID(int rsvid) throws Exception {
        List<ReservationDetail> list = new ArrayList<>();
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select r.DetailID,r.ReservationDate,s.ServiceID,\n"
                    + "s.ImageURL,s.ServiceName,s.ServicePrice,r.Status , c.ChildName,c.Gender\n"
                    + "                    FROM (( dbo.ReservationDetails r\n"
                    + "                    join dbo.Services s\n"
                    + "                   	ON s.ServiceID = r.ServiceID)\n"
                    + "					INNER JOIN dbo.Children c ON c.ChildID = r.ChildID)\n"
                    + "					WHERE r.ReservationID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, rsvid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ReservationDetail s = ReservationDetail.builder()
                        .detailID(rs.getInt(1))
                        .reservationDate(rs.getDate(2))
                        .service(Service
                                .builder()
                                .serviceID(rs.getInt(3))
                                .imageURL(rs.getString(4))
                                .serviceName(rs.getString(5))
                                .servicePrice(rs.getFloat(6))
                                .build())
                        .status(rs.getBoolean(7))
                        .child(Child
                                .builder()
                                .childName(rs.getString(8))
                                .gender(rs.getBoolean(9))
                                .build())
                        .build();
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public float getTotalRevenue() {
        float revenue = 0;
        try {
            String query = "select sum(s.ServicePrice)\n"
                    + "from Services s join ReservationDetails rd\n"
                    + "	on s.ServiceID = rd.ServiceID\n"
                    + "where rd.[Status] = 1";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                revenue = rs.getFloat(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return revenue;
    }

    public List<String> getMostPopularService() {
        List<String> list = new ArrayList<>();
        try {
            String query = "select top 3 s.ServiceName\n"
                    + "from Services s join ReservationDetails rd\n"
                    + "	on s.ServiceID = rd.ServiceID\n"
                    + "where rd.[Status] = 1\n"
                    + "group by s.ServiceName\n"
                    + "order by Count(*) desc";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String service = rs.getString(1);
                list.add(service);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public int getAllReservationNumber() {
        int count = 0;
        try {
            String query = "select count(*) from ReservationDetails\n";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return count;
    }

    public int getCompletedReservationNumber() {
        int count = 0;
        try {
            String query = "select count(*) from ReservationDetails\n"
                    + "where [Status] = 1";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return count;
    }

    public List<ReservationDetail> getReservationDetailsForAdmin(String resID) {
        List<ReservationDetail> list = new ArrayList<>();
        try {
            String query = "select *\n"
                    + "from ReservationDetails rd\n"
                    + "join [Services] s on rd.ServiceID = s.ServiceID\n"
                    + "join Children c on rd.ChildID = c.ChildID\n"
                    + "join Users u on s.AuthorID = u.UserID\n"
                    + "where rd.ReservationID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, resID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ReservationDetail rd = ReservationDetail
                        .builder()
                        .detailID(rs.getInt(1))
                        .child(Child
                                .builder()
                                .childName(rs.getString(16))
                                .build())
                        .service(Service
                                .builder()
                                .serviceName(rs.getString(8))
                                .author(User
                                        .builder()
                                        .name(rs.getString(20))
                                        .build())
                                .build())
                        .reservationDate(rs.getDate(2))
                        .status(rs.getBoolean(5))
                        .build();
                list.add(rd);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<ReservationDetail> getReservationDetailsForStaff(String staffID) {
        List<ReservationDetail> list = new ArrayList<>();
        try {
            String query = "select *\n"
                    + "from ReservationDetails rd\n"
                    + "join [Services] s on rd.ServiceID = s.ServiceID\n"
                    + "join Children c on rd.ChildID = c.ChildID\n"
                    + "join Users u on s.AuthorID = u.UserID\n"
                    + "where u.UserID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, staffID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ReservationDetail rd = ReservationDetail
                        .builder()
                        .detailID(rs.getInt(1))
                        .child(Child
                                .builder()
                                .childName(rs.getString(16))
                                .build())
                        .service(Service
                                .builder()
                                .serviceName(rs.getString(8))
                                .author(User
                                        .builder()
                                        .name(rs.getString(20))
                                        .build())
                                .build())
                        .reservationDate(rs.getDate(2))
                        .status(rs.getBoolean(5))
                        .build();
                list.add(rd);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
}
