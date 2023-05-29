/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.CustomerDAO;
import DAO.DashDAO;
import DAO.ManagerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Model.Children;
import Model.User;


/**
 *
 * @author Admin
 */
@WebServlet(name = "ManagetServlet", urlPatterns = {"/manager"})
public class ManagetServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet requests
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            DashDAO dashDao = new DashDAO();
            List<Children> child = dashDao.getAllChild();
            request.setAttribute("listChild", child);
        } catch (Exception ex) {
            System.out.println("error" + ex.getMessage());
        }
        request.getRequestDispatcher("manager.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     *
     *
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DashDAO dao = new DashDAO();
        CustomerDAO cdao = new CustomerDAO();
        String page = "";
        try {
            page = request.getParameter("page");
            if (page == null) {
                page = "1";
            }

        } catch (Exception e) {
            page = "1";
        }
        try {
            int numberOfPage = dao.getAllChild().size() % 5 == 0 ? dao.getAllChild().size() / 5 : dao.getAllChild().size() / 5 + 1;
            List<Children> listCustomer = cdao.getCustomerByPage(page);
            request.setAttribute("listCustomer", listCustomer);
            request.setAttribute("numberOfPage", numberOfPage);
            request.setAttribute("page", page);
            request.getRequestDispatcher("manager.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ManagetServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

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
