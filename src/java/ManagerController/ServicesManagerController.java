/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ManagerController;

import Controller.ServicesController;
import DAO.CategoryDAO;
import DAO.ServicesDAO;
import Model.Service;
import Model.ServiceCategory;
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

/**
 *
 * @author Sown
 */
@WebServlet(name = "ServicesManagerController", urlPatterns = {"/servicesmanager"})
public class ServicesManagerController extends HttpServlet {

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
            out.println("<title>Servlet ServicesManagerController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServicesManagerController at " + request.getContextPath() + "</h1>");
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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        try {
            String sort = request.getParameter("sort");
            ServicesDAO sd = new ServicesDAO();
            List<ServiceCategory> listC = new CategoryDAO().getAllCategory();
            request.setAttribute("listc", listC);

            if (sort == null || "".equals(sort)) {
                int page = 1;
                String pageStr = request.getParameter("page");
                if (pageStr != null) {
                    page = Integer.parseInt(pageStr);
                }
                final int page_size = 6;
                List<Service> listS = sd.getPaging(page, page_size);
                int total = sd.total();
                int totalPage = total / page_size;
                if (total % page_size != 0) {
                    totalPage += 1;
                }

                request.setAttribute("page", page);
                request.setAttribute("totalPage", totalPage);
                request.setAttribute("listS", listS);
                request.getRequestDispatcher("manager/servicesmanager.jsp").forward(request, response);
            }

            if ("asc".equals(sort)) {

                int page = 1;
                String pageStr = request.getParameter("page");
                if (pageStr != null) {
                    page = Integer.parseInt(pageStr);
                }
                final int page_size = 6;
                List<Service> listS = sd.getSort(page, page_size);
                int total = sd.total();
                int totalPage = total / page_size;
                if (total % page_size != 0) {
                    totalPage += 1;
                }

                request.setAttribute("page", page);
                request.setAttribute("totalPage", totalPage);
                request.setAttribute("listS", listS);
                request.getRequestDispatcher("manager/servicesmanager.jsp").forward(request, response);
                response.sendRedirect("servicesmanager");
            }
            if ("des".equals(sort)) {

                int page = 1;
                String pageStr = request.getParameter("page");
                if (pageStr != null) {
                    page = Integer.parseInt(pageStr);
                }
                final int page_size = 6;
                List<Service> listS = sd.getSortDest(page, page_size);
                int total = sd.total();
                int totalPage = total / page_size;
                if (total % page_size != 0) {
                    totalPage += 1;
                }

                request.setAttribute("page", page);
                request.setAttribute("totalPage", totalPage);
                request.setAttribute("listS", listS);
                request.getRequestDispatcher("manager/servicesmanager.jsp").forward(request, response);
                response.sendRedirect("servicesmanager");
            }

        } catch (Exception ex) {
            Logger.getLogger(ServicesController.class.getName()).log(Level.SEVERE, null, ex);
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
