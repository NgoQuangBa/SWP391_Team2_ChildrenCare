/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Filter;


import DAO.UserDAO;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import Model.User;


/**
 *
 * @author fannaby
 */
@WebFilter(filterName = "AuthenticationFilter",
        urlPatterns = {"/admin/*","/staff/*","/manager/*","/add-to-cart","/carts","/delete-cart"})
public class AunthenticationFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        //ktra dang nhap
        User account = (User) session.getAttribute("account");
        if (account != null) {
            chain.doFilter(request, response);
        } else {
            Cookie[] cookies = req.getCookies();
            String username = null;
            String password = null;
            for (Cookie cooky : cookies) { // kiểm tra cookie 
                if (cooky.getName().equals("username")) {
                    username = cooky.getValue();
                }
                if (cooky.getName().equals("password")) {
                    password = cooky.getValue();
                }
                if (username != null && password != null) {
                    break;
                }
            }

            if (username != null && password != null) {
                User login = new UserDAO().login(username, password);
                if (account != null) { //cookie hợp lệ
                    session.setAttribute("account", account);
                    chain.doFilter(request, response);
                    return;
                }
            }
            res.sendRedirect("login");
        }

    }

    public void destroy() {
    }

    public void init(FilterConfig filterConfig) {

    }

}
