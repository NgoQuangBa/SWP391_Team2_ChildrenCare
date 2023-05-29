/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ManagerController;

import DAO.RoleDAO;
import DAO.UserDAO;
import Model.Role;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Dan Chen
 */
@WebServlet(name = "UserListController", urlPatterns = {"/userList"})
public class UserListController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            UserDAO userDAO = new UserDAO();

            List<Role> roles = new RoleDAO().getAllRoles();
            int pageIndex = 1;
            String pageIndexString = request.getParameter("page");
            String search = request.getParameter("search");
            if (pageIndexString != null) {
                pageIndex = Integer.parseInt(pageIndexString);
            }
            final float pageSize = 4;
            List<User> userList = new ArrayList<>();
            int userCount;
            if (search == null) {
                userList = userDAO.getUsersByRange(pageIndex, (int) pageSize);
                userCount = userDAO.getUserCount();
            } else {
                userList = userDAO.getUsersBySearch(search, pageIndex, (int) pageSize);
                userCount = userDAO.getSearchCount(search);
            }

            int pageNumber = (int) Math.ceil(userCount / pageSize);

            request.setAttribute("roles", roles);
            request.setAttribute("pageNumber", pageNumber);
            request.setAttribute("userList", userList);
            request.setAttribute("search", search);
            request.getRequestDispatcher("manager/userlist.jsp").forward(request, response);
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
