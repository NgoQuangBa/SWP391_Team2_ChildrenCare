/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import Model.Service;
import java.security.Provider;
import java.util.Locale.Category;
import Model.ServiceCategory;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sown
 */
public class ServicesDAO {

    public List<Service> getAll() throws SQLException, Exception {
        List<Service> list = new ArrayList<>();
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "SELECT * from Services";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Service s = Service.builder()
                        .serviceID(rs.getInt(1))
                        .serviceName(rs.getString(2))
                        .serviceDetail(rs.getString(3))
                        .category(ServiceCategory.builder().categoryID(rs.getInt(4)).build())
                        .servicePrice(rs.getFloat(5))
                        .imageURL(rs.getString(6))
                        .status(rs.getBoolean(7))
                        .author(User.builder().userID(8).build())
                        .build();
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;

    }

    public List<Service> getSort(int page, int page_size) throws Exception {
        List<Service> list = new ArrayList<>();
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "SELECT * FROM Services ORDER BY ServicePrice\n"
                    + "OFFSET (?-1)*? ROW FETCH NEXT ? ROW ONLY";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, page);
            ps.setInt(2, page_size);
            ps.setInt(3, page_size);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Service s = Service.builder()
                        .serviceID(rs.getInt(1))
                        .serviceName(rs.getString(2))
                        .serviceDetail(rs.getString(3))
                        .category(ServiceCategory.builder().categoryID(rs.getInt(4)).build())
                        .servicePrice(rs.getFloat(5))
                        .imageURL(rs.getString(6))
                        .status(rs.getBoolean(7))
                        .author(User.builder().userID(8).build())
                        .build();
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;

    }

    public List<Service> getSortDest(int page, int page_size) throws Exception {
        List<Service> list = new ArrayList<>();
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "SELECT * FROM Services ORDER BY ServicePrice desc\n"
                    + "OFFSET (?-1)*? ROW FETCH NEXT ? ROW ONLY";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, page);
            ps.setInt(2, page_size);
            ps.setInt(3, page_size);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Service s = Service.builder()
                        .serviceID(rs.getInt(1))
                        .serviceName(rs.getString(2))
                        .serviceDetail(rs.getString(3))
                        .category(ServiceCategory.builder().categoryID(rs.getInt(4)).build())
                        .servicePrice(rs.getFloat(5))
                        .imageURL(rs.getString(6))
                        .status(rs.getBoolean(7))
                        .author(User.builder().userID(8).build())
                        .build();
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;

    }

    public List<Service> search(String keyword) throws Exception {
        List<Service> list = new ArrayList<>();
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "SELECT * FROM Services WHERE ServiceName LIKE ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Service s = Service.builder()
                        .serviceID(rs.getInt(1))
                        .serviceName(rs.getString(2))
                        .serviceDetail(rs.getString(3))
                        .category(ServiceCategory.builder().categoryID(rs.getInt(4)).build())
                        .servicePrice(rs.getFloat(5))
                        .imageURL(rs.getString(6))
                        .status(rs.getBoolean(7))
                        .author(User.builder().userID(8).build())
                        .build();
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Service> getServicesByCategoryID(int cid) throws Exception {
        List<Service> list = new ArrayList<>();
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "SELECT * from Services where CategoryID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Service s = Service.builder()
                        .serviceID(rs.getInt(1))
                        .serviceName(rs.getString(2))
                        .serviceDetail(rs.getString(3))
                        .category(ServiceCategory.builder().categoryID(rs.getInt(4)).build())
                        .servicePrice(rs.getFloat(5))
                        .imageURL(rs.getString(6))
                        .status(rs.getBoolean(7))
                        .author(User.builder().userID(8).build())
                        .build();
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Service> getPaging(int page, int page_size) throws Exception {
        List<Service> list = new ArrayList<>();
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "SELECT * FROM Services ORDER BY ServiceID\n"
                    + "OFFSET (?-1)*? ROW FETCH NEXT ? ROW ONLY";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, page);
            ps.setInt(2, page_size);
            ps.setInt(3, page_size);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Service s = Service.builder()
                        .serviceID(rs.getInt(1))
                        .serviceName(rs.getString(2))
                        .serviceDetail(rs.getString(3))
                        .category(ServiceCategory.builder().categoryID(rs.getInt(4)).build())
                        .servicePrice(rs.getFloat(5))
                        .imageURL(rs.getString(6))
                        .status(rs.getBoolean(7))
                        .author(User.builder().userID(8).build())
                        .build();
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;

    }

    public int total() throws Exception {
        List<Service> list = new ArrayList<>();
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "SELECT COUNT(ServiceID) FROM Services ";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return 0;

    }

    public Service getServicesByID(int sid) throws Exception {

        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "SELECT * FROM Services where ServiceID = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, sid);
            ResultSet rs = ps.executeQuery();
            String pattern = "dd-MM-yyyy";

            SimpleDateFormat sd = new SimpleDateFormat(pattern);

            while (rs.next()) {
                Service s = Service.builder()
                        .serviceID(rs.getInt(1))
                        .serviceName(rs.getString(2))
                        .serviceDetail(rs.getString(3))
                        .category(ServiceCategory.builder().categoryID(rs.getInt(4)).build())
                        .servicePrice(rs.getFloat(5))
                        .imageURL(rs.getString(6))
                        .status(rs.getBoolean(7))
                        .author(User.builder().userID(8).build())
                        .build();
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public Service getServiceByID(int sid) {
        try {
            String sql = "select * from Services where ServiceID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, sid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Service s = Service.builder()
                        .serviceID(rs.getInt(1))
                        .serviceName(rs.getString(2))
                        .serviceDetail(rs.getString(3))
                        .category(ServiceCategory.builder().categoryID(rs.getInt(4)).build())
                        .servicePrice(rs.getFloat(5))
                        .imageURL(rs.getString(6))
                        .status(rs.getBoolean(7))
                        .author(User.builder().userID(8).build())
                        .build();
                return s;
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void editProduct(String name, float price, String category, String img, String desc, String id) throws SQLException {

        try {
            String sql = "UPDATE [dbo].[Services]\n"
                    + "   SET [ServiceName] = ?\n"
                    + "      ,[ServiceDetail] = ?\n"
                    + "      ,[CategoryID] = ?\n"
                    + "      ,[ServicePrice] = ?\n"
                    + "      ,[ImageURL] = ?\n"
                    + " WHERE ServiceID = ?";

            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, desc);
            ps.setString(3, category);
            ps.setFloat(4, price);
            ps.setString(5, img);
            ps.setString(6, id);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(ServicesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void deleteServices(String id) {

        try {
            Connection conn = new DBContext().getConnection();
            String sql = "DELETE FROM [dbo].[Services]\n"
                    + "      WHERE ServiceID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
        } catch (Exception e) {
        }
    }

    public void addService(String name, float price, String category, String img, String desc) throws SQLException {

        try {
            String sql = "INSERT INTO [dbo].[Services]\n"
                    + "           ([ServiceName]\n"
                    + "           ,[ServiceDetail]\n"
                    + "           ,[CategoryID]\n"
                    + "           ,[ServicePrice]\n"
                    + "           ,[ImageURL]\n"
                    + "           ,[status]\n"
                    + "           ,[authorID])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,NULL\n"
                    + "           ,NULL)";

            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, desc);
            ps.setString(3, category);
            ps.setFloat(4, price);
            ps.setString(5, img);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(ServicesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
