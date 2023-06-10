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
import java.util.logging.Level;
import java.util.logging.Logger;
import Model.Reservation;
import Model.User;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReservationsDAO {

    public int createReturnId(Reservation rsv) {
        try {
            String sql = "INSERT INTO [dbo].[Reservations]\n"
                    + "           ([Description]\n"
                    + "           ,[CustomerID]\n"
                    + "           ,[TotalPrice])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, rsv.getDescription());
            ps.setInt(2, rsv.getCustomer().getUserID());
            ps.setFloat(3, rsv.getTotalPrice());
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(ChildrenDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<Reservation> getReservationByID(int userID) throws Exception {
        List<Reservation> list = new ArrayList<>();
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select r.ReservationID, r.CreationDate, u.[Name], r.TotalPrice, r.[Description]\n"
                    + "from Reservations r\n"
                    + "join Users u\n"
                    + "	on r.CustomerID = u.UserID where CustomerID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Reservation s = Reservation.builder()
                        .reservationID(rs.getInt(1))
                        .description(rs.getString(5))
                        .creationDate(rs.getString(2))
                        .customer(User
                                .builder()
                                .username(rs.getString(3))
                                .build())
                        .totalPrice(rs.getFloat(4))
                        .build();
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Reservation> getAllReservations(int pageIndex, int pageSize) {
        List<Reservation> list = new ArrayList<>();
        try {
            String query = "select r.ReservationID, r.Description, r.CreationDate, u.UserID, u.[Name] \n"
                    + "from Reservations r inner join Users u\n"
                    + "on r.CustomerID = u.UserID\n"
                    + "order by r.ReservationID\n"
                    + "offset (?-1)*? rows\n"
                    + "fetch next ? rows only";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, pageIndex);
            ps.setInt(2, pageSize);
            ps.setInt(3, pageSize);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Reservation r = Reservation
                        .builder()
                        .reservationID(rs.getInt(1))
                        .description(rs.getString(2))
                        .creationDate(rs.getString(3))
                        .customer(User
                                .builder()
                                .userID(rs.getInt(4))
                                .name(rs.getString(5))
                                .build())
                        .build();
                list.add(r);
            }
        } catch (Exception e) {
            Logger.getLogger(ReservationsDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }

    public List<Reservation> getReservationsByCustomer(String search, int pageIndex, int pageSize) {
        List<Reservation> list = new ArrayList<>();
        try {
            String query = "select r.ReservationID, r.Description, r.CreationDate, u.UserID, u.[Name] \n"
                    + "from Reservations r inner join Users u\n"
                    + "on r.CustomerID = u.UserID\n"
                    + "where u.[Name] like '%" + search + "%'\n"
                    + "order by r.ReservationID\n"
                    + "offset (?-1)*? rows\n"
                    + "fetch next ? rows only";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, pageIndex);
            ps.setInt(2, pageSize);
            ps.setInt(3, pageSize);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Reservation r = Reservation
                        .builder()
                        .reservationID(rs.getInt(1))
                        .description(rs.getString(2))
                        .creationDate(rs.getString(3))
                        .customer(User
                                .builder()
                                .userID(rs.getInt(4))
                                .name(rs.getString(5))
                                .build())
                        .build();
                list.add(r);
            }
        } catch (Exception e) {
            Logger.getLogger(ReservationsDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }
    
    public int getReservationCount() {
        try {
            String query = "select count(*) from Reservations";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
            conn.close();
        } catch (Exception e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return 0;
    }
    
    public int getSearchCount(String search) {
        try {
            String query = "select count(*) from Reservations r join Users u\n"
                    + "on r.CustomerID = u.UserID\n"
                    + "where u.[Name] like '%" + search + "%'\n";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
            conn.close();
        } catch (Exception e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return 0;
    }
    
    public static void main(String[] args) {
        List<Reservation> list = new ArrayList<>();
        list = new ReservationsDAO().getAllReservations(1, 4);
        for (Reservation reservation : list) {
            System.out.println(reservation);
        }
    }
}
