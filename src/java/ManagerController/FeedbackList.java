/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ManagerController;

import DAO.FeedbackDAO;
import Model.Feedback;
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
@WebServlet(name = "FeedbackList", urlPatterns = {"/FeedbackList"})
public class FeedbackList extends HttpServlet {

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
        String action = request.getParameter("action");
        FeedbackDAO fdao = new FeedbackDAO();

        if (action == null) {
            String filters = request.getParameter("filters");
            String filterr = request.getParameter("filterr");
            ArrayList<Feedback> flist = fdao.getAllFeedback(filters, filterr);
            request.setAttribute("flist", flist);
            request.getRequestDispatcher("./manager/Feedback.jsp").forward(request, response);
        }
        if ("edit".equals(action)) {
            String fid = request.getParameter("fid");
            String fcreate = request.getParameter("fcreate");
            String frate = request.getParameter("frate");
            String content = request.getParameter("content");
            String fstatus = request.getParameter("fstatus");
            fdao.UpdateFeedback(Integer.valueOf(fid), content, Integer.valueOf(frate), fcreate, Integer.valueOf(fstatus));
            ArrayList<Feedback> flist = fdao.getAllFeedback("", "");
            request.setAttribute("flist", flist);
            request.getRequestDispatcher("./manager/Feedback.jsp").forward(request, response);
            response.sendRedirect("FeedbackList");
        }
        if ("switch".equals(action)) {
            String fid = request.getParameter("fid");
            String fstatus = request.getParameter("fstatus");
            fdao.UpdateFeedbackStatus(Integer.valueOf(fid), Integer.valueOf(fstatus));
            ArrayList<Feedback> flist = fdao.getAllFeedback("", "");
            request.setAttribute("flist", flist);
            request.getRequestDispatcher("./manager/Feedback.jsp").forward(request, response);
            response.sendRedirect("FeedbackList");

        }
        if ("delete".equals(action)) {
            String fid = request.getParameter("fid");
            fdao.deleteFeedback(Integer.valueOf(fid));
            ArrayList<Feedback> flist = fdao.getAllFeedback("", "");
            request.setAttribute("flist", flist);
            request.getRequestDispatcher("./manager/Feedback.jsp").forward(request, response);
            response.sendRedirect("FeedbackList");

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



