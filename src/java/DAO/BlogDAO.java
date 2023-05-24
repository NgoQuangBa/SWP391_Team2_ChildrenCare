/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Context.DBContext;
import Model.Blog;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class BlogDAO {

    public static void main(String[] args) throws Exception {
        System.out.println(new BlogDAO().get6BlogLastest().size());
    }

    public List<Blog> get6BlogLastest() throws SQLException, Exception {
        List<Blog> list = new ArrayList<>();
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select TOp(6) * from Blogs\n"
                    + "order by blogID desc";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Blog b = Blog.builder()
                        .blogID(rs.getInt(1))
                        .blogTitle(rs.getString(2))
                        .blogContent(rs.getString(3))
                        .blogCategory(rs.getString(4))
                        .status(rs.getBoolean(5))
                        .imageURL(rs.getString(6))
                        .build();

                list.add(b);
            }
        } catch (SQLException e) {
            System.out.print(e);
        }
        return list;
    }

    public List<Blog> getAll() throws SQLException, Exception {
        List<Blog> list = new ArrayList<>();
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from Blogs";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Blog b = Blog.builder()
                        .blogID(rs.getInt(1))
                        .blogTitle(rs.getString(2))
                        .blogContent(rs.getString(3))
                        .blogCategory(rs.getString(4))
                        .status(rs.getBoolean(5))
                        .imageURL(rs.getString(6))
                        .build();

                list.add(b);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

//    }
//    public List<Blog>getAllBlogs(){
//    Connection conn = null;
//    PreparedStatement ps = null;
//    ResultSet rs = null;
//    
//    
//        List<Blog> list = new ArrayList<>();
//        String query = "SELECT TOP (1000) [BlogID]\n" +
//"      ,[BlogTitle]\n" +
//"      ,[BlogDetail]\n" +
//"      ,[AuthorID]\n" +
//"      ,[Image]\n" +
//"  FROM [Group1_ChildrenCare].[dbo].[Blogs]";
//        try{
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()){
//                list.add(new Blog(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getInt(4),
//                        rs.getString(5)));
//                
//            } 
//                                      
//        }catch(Exception e ){
//            
//        }
//        return list;
//    }
        //
//    public List<Blog> search(String keyword) {
//        List<Blog> list = new ArrayList<>();
//        try {
//            String sql = "select *  from Product where Product_Name like ?";
//            Connection conn = new DBContext().getConnection();
//            PreparedStatement ps = conn.prepareStatement(sql);
//            ps.setString(1, "%" + keyword + "%");
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//               Blog b = Blog.builder()
//                        .BlogID(rs.getInt(1))
//                        .BlogTitle(rs.getString(2))
//                        .BlogDetail(rs.getString(3))
//                        .AuthorID(rs.getInt(4))
//                        .Image(rs.getString(5))
//                       .build();
//                list.add(b);
//           }
//        } catch (Exception ex) {
//            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return list;
    }

    public Blog getBlogByID(String blogID) throws Exception {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select *   from  blogs where BlogID = ? ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, blogID);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Blog b = Blog.builder()
                        .blogID(rs.getInt(1))
                        .blogTitle(rs.getString(2))
                        .blogContent(rs.getString(3))
                        .blogCategory(rs.getString(4))
                        .status(rs.getBoolean(5))
                        .imageURL(rs.getString(6))
                        .build();

                return b;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Blog> getAllBlog(String category, String user, String status) {
        if (category == null) {
            category = "";
        }
        if (user == null) {
            user = "";
        }
        if (status == null) {
            status = "";
        }
        ArrayList<Blog> Blogl = new ArrayList<>();
        try {
            Connection connection = new DBContext().getConnection();
            String sql = "  select * from [Blogs] b, Users u where b.AuthorID = u.UserID\n"
                    + "  and b.Category like ? and u.[Name] like ? and b.[status] like ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, '%' + category + '%');
            stm.setString(2, '%' + user + '%');
            stm.setString(3, '%' + status + '%');
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                User u = User.builder().userID(rs.getInt("UserID")).name(rs.getString("Name")).build();
                Blog b = Blog.builder().blogID(rs.getInt(1)).blogTitle(rs.getString(2)).blogContent(rs.getString(3))
                        .blogCategory(rs.getString(4)).status(rs.getBoolean(5)).imageURL(rs.getString(6)).author(u).build();
                Blogl.add(b);
            }
        } catch (Exception e) {
        }
        return Blogl;
    }

    public void UpdateBlogStatus(int bid, int status) {
        try {
            Connection connection = new DBContext().getConnection();
            String sql = "   update Blogs set [Status]=? where BlogID =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, status);
            stm.setInt(2, bid);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void UpdateBlog(String title, String content, String category, int status, String imglink, int bid) {
        try {
            Connection connection = new DBContext().getConnection();
            String sql = "  update Blogs set [BlogTitle] =?, [BlogDetail] =? ,[Category]=?, [Status] =? ,[imglink]=? where [BlogID] =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, title);
            stm.setString(2, content);
            stm.setString(3, category);
            stm.setInt(4, status);
            stm.setString(5, imglink);
            stm.setInt(6, bid);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertBlog(String title, String content, String category, int status, String imglink, int uid) {
        try {
            Connection connection = new DBContext().getConnection();
            String sql = "   insert into Blogs ([BlogTitle], [BlogDetail]  ,[Category], [Status]  ,[imglink] , AuthorID  ) values (?,?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, title);
            stm.setString(2, content);
            stm.setString(3, category);
            stm.setInt(4, status);
            stm.setString(5, imglink);
            stm.setInt(6, uid);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteBlog(int bid) {
        try {
            Connection connection = new DBContext().getConnection();
            String sql = " DELETE FROM Blogs where [BlogID] =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, bid);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public ArrayList<User> getAllUser() {
        ArrayList<User> ulist = new ArrayList<>();
        try {
            Connection connection = new DBContext().getConnection();
            String sql = "  select * from Users";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User u = User.builder().userID(rs.getInt("UserID")).name(rs.getString("Name")).build();
                ulist.add(u);
            }
        } catch (Exception e) {
        }
        return ulist;
    }

    public ArrayList getAllCategory() {
        ArrayList clist = new ArrayList<>();
        try {
            Connection connection = new DBContext().getConnection();
            String sql = "   select distinct Category from Blogs";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                clist.add(rs.getString(1));
            }
        } catch (Exception e) {
        }
        return clist;
    }

}
