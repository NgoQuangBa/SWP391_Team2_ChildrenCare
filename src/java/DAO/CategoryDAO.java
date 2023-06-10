/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import Model.ServiceCategory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sown
 */


    public ServiceCategory getCategorybyID(int sid) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "SELECT * FROM Services s inner join ServiceCategories c\n"
                    + "on c.CategoryID = s.CategoryID where s.ServiceID = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, sid);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ServiceCategory c = ServiceCategory.builder()
                        .categoryID(rs.getInt(1))
                        .categoryName(rs.getString(2))
                        .categoryDetail(rs.getString(3))
                        .build();
                return c;
            }

        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }
    public ServiceCategory getCategoryNamebyID(int id) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "SELECT * FROM ServiceCategories where CategoryID = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ServiceCategory c = ServiceCategory.builder()
                        .categoryID(rs.getInt(1))
                        .categoryName(rs.getString(3))
                        .categoryDetail(rs.getString(2))
                        .build();
                return c;
            }

        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }
}


