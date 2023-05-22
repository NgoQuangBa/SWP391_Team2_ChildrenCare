/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.SliderDAO;
import Model.Slider;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author BEAN
 */
@WebServlet(name = "editSlider", urlPatterns = {"/editSlider"})
public class editSlider extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet editSlider</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet editSlider at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        try {
            HttpSession session = request.getSession();
            String sliderID = request.getParameter("slideID");
            SliderDAO dao = new SliderDAO();
            Slider slider = dao.getSliderByID(sliderID);
            request.setAttribute("slider", slider);
            session.setAttribute("slider", slider);
            request.getRequestDispatcher("view/editSlider.jsp").forward(request, response);
        } catch (Exception e) {
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

        try {
            SliderDAO dao = new SliderDAO();
            HttpSession session = request.getSession();
            Slider slider = (Slider) session.getAttribute("slider");
            String sliderID = Integer.toString(slider.getSlideID());
            String title = request.getParameter("title");
            String backlink = request.getParameter("backlink");
            String imageUrl = request.getParameter("imageUrl");
            String status = request.getParameter("status");
//             User account = (User) session.getAttribute("account");
//            String authorID = Integer.toString(account.getUserID());
            String authorID = "10";

            dao.editSlider(title, backlink, imageUrl, status, authorID, sliderID);

            response.sendRedirect("ManagerSlider");
        } catch (Exception e) {
        }
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
