/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Filter;

import Model.Role;
import java.io.IOException;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import Model.User;

/**
 *
 * @author fannaby
 */
@WebFilter(filterName = "Staff", urlPatterns = {"/staff/*",})
public class StaffFilter implements Filter {

    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
         HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        //ktra dang nhap
        User account = (User) session.getAttribute("account");
        if (account != null && account.getRole().getRoleID() == Role.ADMIN ||account.getRole().getRoleID() == Role.STAFF ) {
            chain.doFilter(request, response);
            return;
        }
//        req.setAttribute("error", "Bạn không có quyền truy cập");
       res.sendRedirect("index.jsp");               
    }
    public void destroy() {
    }
    public void init(FilterConfig filterConfig) {
        
    }

}
