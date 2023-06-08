/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Model.Role;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserDAO {

    public User login(String username, String password) {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select * from Users where Username = ? and Password =?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return User.builder()
                        .userID(rs.getInt(1))
                        .name(rs.getString(2))
                        .gender(rs.getBoolean(3))
                        .email(rs.getString(4))
                        .username(rs.getString(5))
                        .password(rs.getString(6))
                        .phone(rs.getString(7))
                        .role(Role.builder().roleID(rs.getInt(8)).build())
                        .build();
            }
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return null;
    }

    public void signup(String name, String gender, String email, String user, String pass, String phone) {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "INSERT INTO [dbo].[Users]\n"
                    + "           ([Name]\n"
                    + "           ,[Gender]\n"
                    + "           ,[Email]\n"
                    + "           ,[Username]\n"
                    + "           ,[Password]\n"
                    + "           ,[Phone]\n"
                    + "           ,[RoleID])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,4)";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, gender);
            ps.setString(3, email);
            ps.setString(4, user);
            ps.setString(5, pass);
            ps.setString(6, phone);
            ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
    }

    public int signupotp(User account) {
        int row = 0;
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "INSERT INTO [dbo].[Users]\n"
                    + "           ([Name]\n"
                    + "           ,[Gender]\n"
                    + "           ,[Email]\n"
                    + "           ,[Username]\n"
                    + "           ,[Password]\n"
                    + "           ,[Phone]\n"
                    + "           ,[RoleID])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,4)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, account.getName());
            ps.setBoolean(2, account.isGender());
            ps.setString(3, account.getEmail());
            ps.setString(4, account.getUsername());
            ps.setString(5, account.getPassword());
            ps.setString(6, account.getPhone());
            row = ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return row;
    }

    public User.UserBuilder checkAccountExisted(String user) throws Exception {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select * from Users where Username = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return User.builder()
                        .userID(rs.getInt(1))
                        .name(rs.getString(2))
                        .gender(rs.getBoolean(3))
                        .email(rs.getString(4))
                        .username(rs.getString(5))
                        .password(rs.getString(6))
                        .phone(rs.getString(7))
                        .role(Role.builder().roleID(8).build());

            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }

    public User.UserBuilder checkEmailExisted(String email) throws Exception {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "SELECT * from Users where Email = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return User.builder()
                        .userID(rs.getInt(1))
                        .name(rs.getString(2))
                        .gender(rs.getBoolean(3))
                        .email(rs.getString(4))
                        .username(rs.getString(5))
                        .password(rs.getString(6))
                        .phone(rs.getString(7))
                        .role(Role.builder().roleID(8).build());
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }

    public User.UserBuilder getUserByEmail(String email) throws Exception {

        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "SELECT * from Users where Email = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return User.builder()
                        .userID(rs.getInt(1))
                        .name(rs.getString(2))
                        .gender(rs.getBoolean(3))
                        .email(rs.getString(4))
                        .username(rs.getString(5))
                        .password(rs.getString(6))
                        .phone(rs.getString(7))
                        .role(Role.builder().roleID(8).build());
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public void changePass(String username, String newpass) {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "UPDATE dbo.Account\n"
                    + "SET pass = ?\n"
                    + "WHERE [user] = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, newpass);
            ps.setString(2, username);
            ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
    }

    public void EditProfile(String username, String fullname, String email, String phone) {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "UPDATE [dbo].[Account]\n"
                    + "   SET \n"
                    + "      [fullname] = ?\n"
                    + "      ,[email] = ?\n"
                    + "      ,[phone] = ?\n"
                    + "\n"
                    + " WHERE [user] = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, fullname);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, username);
            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
    }

    public void insertUser(String name, String user, String pass, String mail, String phone, String role) throws SQLException {
        try {
            String sql = "INSERT INTO [dbo].[Account]\n"
                    + "           ([user]\n"
                    + "           ,[pass]\n"
                    + "           ,[fullname]\n"
                    + "           ,[email]\n"
                    + "           ,[phone]\n"
                    + "           ,[role])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?)";

            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, name);
            ps.setString(4, mail);
            ps.setString(5, phone);
            ps.setString(6, role);

            ps.executeUpdate();
        } catch (Exception ex) {
        }

    }

    public void deleteUser(String id) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "delete from Users where UserID = " + id;
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
        } catch (Exception e) {
        }
    }

    public void editUsers(String id, String name, boolean gender, String email, String phone) throws SQLException {
        try {
            String sql = "update Users\n"
                    + "set [Name] = ?,\n"
                    + "	Gender = ?,\n"
                    + "	Email = ?,\n"
                    + "	Phone = ?\n"
                    + "where UserID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setBoolean(2, gender);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, id);
            ps.executeUpdate();
        } catch (Exception ex) {
        }
    }

    public void resetPassword(String pass, String email) {
        String sql = "update [Users] set Password = ? where Email = ?";
        try {
            int result = 0;
            Connection conn = new DBContext().getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, pass);
            st.setString(2, email);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void editRole(String userID, String roleID) {
        try {
            String query = "update Users\n"
                    + "set RoleID = ? \n"
                    + "where UserID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, roleID);
            ps.setString(2, userID);
            ps.executeUpdate();
        } catch (Exception e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public int getCustomersCount() {
        int count = 0;
        try {
            String query = "select count(*) from Users where RoleID = 4";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return count;
    }

    public List<User> getUsersByRange(int pageNumber, int pageSize) {
        List<User> list = new ArrayList<>();
        try {
            String query = "select u.UserID, u.[Name], u.Email, u.Phone, r.RoleID, r.RoleName, u.Banned\n"
                    + "from Users u\n"
                    + "join Roles r\n"
                    + "on u.RoleID = r.RoleID\n"
                    + "order by u.UserID\n"
                    + "offset (?-1)*? rows\n"
                    + "fetch next ? rows only";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, pageNumber);
            ps.setInt(2, pageSize);
            ps.setInt(3, pageSize);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = User
                        .builder()
                        .userID(rs.getInt(1))
                        .name(rs.getString(2))
                        .email(rs.getString(3))
                        .phone(rs.getString(4))
                        .role(Role
                                .builder()
                                .roleID(rs.getInt(5))
                                .roleName(rs.getString(6))
                                .build())
                        .banned(rs.getBoolean(7))
                        .build();
                list.add(user);
            }
            conn.close();
        } catch (Exception e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }

    public List<User> getUsersBySearch(String search, int pageNumber, int pageSize) {
        List<User> list = new ArrayList<>();
        try {
            String query = "select u.UserID, u.[Name], u.Email, u.Phone, r.RoleID, r.RoleName, u.Banned\n"
                    + "from Users u\n"
                    + "join Roles r\n"
                    + "on u.RoleID = r.RoleID\n"
                    + "where u.[Name] like '%" + search + "%'\n"
                    + "order by u.UserID\n"
                    + "offset (?-1)*? rows\n"
                    + "fetch next ? rows only";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, pageNumber);
            ps.setInt(2, pageSize);
            ps.setInt(3, pageSize);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = User
                        .builder()
                        .userID(rs.getInt(1))
                        .name(rs.getString(2))
                        .email(rs.getString(3))
                        .phone(rs.getString(4))
                        .role(Role
                                .builder()
                                .roleID(rs.getInt(5))
                                .roleName(rs.getString(6))
                                .build())
                        .banned(rs.getBoolean(7))
                        .build();
                list.add(user);
            }
            conn.close();
        } catch (Exception e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }

    public int getUserCount() {
        try {
            String query = "select count(*) from Users";
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
            String query = "select count(*) from Users\n"
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

    public List<User> getUserById(String id) {
        List<User> list = new ArrayList<>();
        try {
            String query = "select u.UserID, u.[Name], u.Gender, u.Email, u.Phone, r.RoleID, r.RoleName\n"
                    + "from Users u\n"
                    + "join Roles r\n"
                    + "on u.RoleID = r.RoleID\n"
                    + "where UserID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = User
                        .builder()
                        .userID(rs.getInt(1))
                        .name(rs.getString(2))
                        .gender(rs.getBoolean(3))
                        .email(rs.getString(4))
                        .phone(rs.getString(5))
                        .role(Role
                                .builder()
                                .roleID(rs.getInt(6))
                                .roleName(rs.getString(7))
                                .build())
                        .build();
                list.add(user);
            }
            conn.close();
        } catch (Exception e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }

    public void editUserAdmin(String id, String name, boolean gender, String email, String phone, String roleID) {
        try {
            String query = "update Users\n"
                    + "set [Name] = ?,\n"
                    + "Gender = ?,\n"
                    + "Email = '?',\n"
                    + "Phone = '?',\n"
                    + "RoleID = ?\n"
                    + "where UserID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setBoolean(2, gender);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, roleID);
            ps.setString(6, id);
            ps.executeUpdate();
        } catch (Exception e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public void banUser(String id) {
        try {
            String query = "update Users\n"
                    + "set Banned = 'True'\n"
                    + "where UserID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public void unbanUser(String id) {
        try {
            String query = "update Users\n"
                    + "set Banned = 'False'\n"
                    + "where UserID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
        List<User> list = new ArrayList();
        list = dao.getUsersBySearch("Admin", 1, 4);
        for (User user : list) {
            System.out.println(user);
        }
    }

    public void changePassword(String pass, int id) {
        String sql = "update [Users] set Password = ? where [UserID] = ?";
        try {
            int result = 0;
            Connection conn = new DBContext().getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, pass);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}



