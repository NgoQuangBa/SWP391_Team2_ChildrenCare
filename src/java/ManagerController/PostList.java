/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ManagerController;

import DAO.BlogDAO;
import Model.Blog;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "PostList", urlPatterns = {"/PostList"})
public class PostList extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        String = request.getParameter("");
        BlogDAO bdao = new BlogDAO();
        String action = request.getParameter("action");

        if (action == null) {
            String category = request.getParameter("category");
            String user = request.getParameter("user");
            String status = request.getParameter("status");
            ArrayList<Blog> blist = bdao.getAllBlog(category, user, status);
            ArrayList<User> ul = bdao.getAllUser();
            ArrayList clist = bdao.getAllCategory();
            request.setAttribute("blist", blist);
            request.setAttribute("ul", ul);
            request.setAttribute("clist", clist);
            request.getRequestDispatcher("./manager/postlist.jsp").forward(request, response);
        }
        if ("switch".equals(action)) {
            String fid = request.getParameter("fid");
            String fstatus = request.getParameter("fstatus");
            bdao.UpdateBlogStatus(Integer.valueOf(fid), Integer.valueOf(fstatus));
            ArrayList<Blog> blist = bdao.getAllBlog("", "", "");
            ArrayList<User> ul = bdao.getAllUser();
            ArrayList clist = bdao.getAllCategory();
            request.setAttribute("blist", blist);
            request.setAttribute("ul", ul);
            request.setAttribute("clist", clist);
            request.getRequestDispatcher("./manager/postlist.jsp").forward(request, response);

        }
        if ("delete".equals(action)) {
            String fid = request.getParameter("fid");
            bdao.deleteBlog(Integer.valueOf(fid));
            ArrayList<User> ul = bdao.getAllUser();
            ArrayList clist = bdao.getAllCategory();
            ArrayList<Blog> blist = bdao.getAllBlog("", "", "");
            request.setAttribute("blist", blist);
            request.setAttribute("ul", ul);
            request.setAttribute("clist", clist);
            request.getRequestDispatcher("./manager/postlist.jsp").forward(request, response);
        }
        if ("edit".equals(action)) {
            String bid = request.getParameter("bid");
            String bun = request.getParameter("bun");
            String title = request.getParameter("title");
            String categorye = request.getParameter("category");
            String statuse = request.getParameter("status");
            String content = request.getParameter("content");
            String imgUrl = request.getParameter("imgUrl");
            bdao.UpdateBlog(title, content, categorye, Integer.valueOf(statuse), imgUrl, Integer.valueOf(bid));
            ArrayList<User> ul = bdao.getAllUser();
            ArrayList clist = bdao.getAllCategory();
            ArrayList<Blog> blist = bdao.getAllBlog("", "", "");
            request.setAttribute("blist", blist);
            request.setAttribute("ul", ul);
            request.setAttribute("clist", clist);
            request.getRequestDispatcher("./manager/postlist.jsp").forward(request, response);
        }
        if ("add".equals(action)) {
            String bun = request.getParameter("bun");
            String title = request.getParameter("title");
            String categorye = request.getParameter("category");
            String statuse = request.getParameter("status");
            String content = request.getParameter("content");
            String imgUrl = request.getParameter("imgUrl");
            int uid = 10;
            bdao.insertBlog(title, content, categorye,  Integer.valueOf(statuse), imgUrl, uid);
            ArrayList<User> ul = bdao.getAllUser();
            ArrayList clist = bdao.getAllCategory();
            ArrayList<Blog> blist = bdao.getAllBlog("", "", "");
            request.setAttribute("blist", blist);
            request.setAttribute("ul", ul);
            request.setAttribute("clist", clist);
            request.getRequestDispatcher("./manager/postlist.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}



