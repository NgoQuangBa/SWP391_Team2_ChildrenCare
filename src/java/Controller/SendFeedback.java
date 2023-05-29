/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.CategoryDAO;
import DAO.FeedbackDAO;
import DAO.ServicesDAO;
import Model.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "SendFeedback", urlPatterns = {"/SendFeedback"})
public class SendFeedback extends HttpServlet {

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
        try {
            response.setContentType("text/html;charset=UTF-8");
            List<ServiceCategory> listC = new CategoryDAO().getAllCategory();
            request.setAttribute("listc", listC);
            int sid = Integer.parseInt(request.getParameter("sid"));
            Service ser = new ServicesDAO().getServicesByID(sid);
            request.setAttribute("ser", ser);
//            response.getWriter().print(s);
            request.getRequestDispatcher("./view/sendfeedback.jsp").forward(request, response);
        } catch (Exception e) {
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
        try {
            FeedbackDAO fdao = new FeedbackDAO();
//            HttpSession session = request.getSession();
            String content = request.getParameter("feedbackContent");
            String rate = request.getParameter("rate");
            String img = request.getParameter("img");
            String ssid = request.getParameter("sid");
            int userId = 8;

            int sid = Integer.parseInt(ssid);

            fdao.insertFeedback(Integer.valueOf(sid), userId, content, rate, img);

            response.sendRedirect("detail?sid" + sid);

        } catch (Exception e) {
        }

    }
}
