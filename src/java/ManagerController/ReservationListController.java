/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ManagerController;

import DAO.ReservationsDAO;
import Model.Reservation;
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
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Dan Chen
 */
@WebServlet(name = "ReservationListController", urlPatterns = {"/reservationList"})
public class ReservationListController extends HttpServlet {

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
            HttpSession session = request.getSession();
            User account = (User) session.getAttribute("account");

            if (account.getRole().getRoleID() == 1 || account.getRole().getRoleID() == 2) {
                ReservationsDAO dao = new ReservationsDAO();
                List<Reservation> list = new ArrayList<>();

                String search = request.getParameter("search");
                String pageIndex = request.getParameter("page");

                int _pageIndex = 1;
                int pageSize = 4;
                if (pageIndex != null) {
                    _pageIndex = Integer.parseInt(pageIndex);
                }
                int reservationCount = 0;
                if (search == null) {
                    list = dao.getAllReservations(_pageIndex, pageSize);
                    reservationCount = dao.getReservationCount();
                } else {
                    list = dao.getReservationsByCustomer(search, _pageIndex, pageSize);
                    reservationCount = dao.getSearchCount(search);
                }
                int pageCount = (int) Math.ceil(reservationCount / pageSize);

                request.setAttribute("reservations", list);
                request.setAttribute("pageCount", pageCount);
                request.setAttribute("search", search);

                request.getRequestDispatcher("manager/reservationlist.jsp").forward(request, response);
            } else if (account.getRole().getRoleID() == 3) {
                response.sendRedirect("reservationDetail");
            }
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
