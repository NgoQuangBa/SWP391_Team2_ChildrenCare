/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ChildrenDAO;
import DAO.ReservationDetailDAO;
import DAO.ReservationsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.Map;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import Model.Cart;
import Model.Child;
import Model.Reservation;
import Model.User;
import java.util.Date;


@WebServlet(name = "CheckoutController", urlPatterns = {"/checkout"})
public class CheckoutController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            Map<Integer, Cart> carts = (Map<Integer, Cart>) session.getAttribute("carts");
            if (carts == null) {
                carts = new LinkedHashMap<>();
            }
            //tinh tong tien
            float totalMoney = 0;
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer sid = entry.getKey();
                Cart cart = entry.getValue();
                totalMoney += cart.getService().getServicePrice();
            }
            request.setAttribute("totalMoney", totalMoney);
            request.getRequestDispatcher("/view/checkout.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int parenID = Integer.parseInt(request.getParameter("parentID"));
        String childName = request.getParameter("name");
        Boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String date = request.getParameter("date");
        String status = "True";
//        if(gender_raw.equals("false")){
//           Boolean gender 
//        }
        String note = request.getParameter("notes");
        Child child = Child.builder().
                childName(childName)
                .gender(gender) 
                .parent(User.builder().userID(parenID).build())           
                .build();
        int childId = new ChildrenDAO().createReturnId(child);
        //luu reservation
        HttpSession session = request.getSession();
        Map<Integer, Cart> carts = (Map<Integer, Cart>) session.getAttribute("carts");
        if (carts == null) {
            carts = new LinkedHashMap<>();
        }
        //tinh tong tien
        float totalPrice = 0;
        for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
            Integer sid = entry.getKey();
            Cart cart = entry.getValue();
            totalPrice +=  cart.getService().getServicePrice();     
        }
        Reservation rsv = Reservation.builder()
                .totalPrice(totalPrice)                
                .description(note)
                .customer(User.builder().userID(parenID).build())               
                .build();
        int rsvId = new ReservationsDAO().createReturnId(rsv);    
         new ReservationDetailDAO().saveCart(rsvId,carts,date,status,childId);
        session.removeAttribute("carts");
      request.getRequestDispatcher("/view/thanks.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
