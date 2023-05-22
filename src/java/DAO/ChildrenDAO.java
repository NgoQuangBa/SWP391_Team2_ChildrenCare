/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import Model.Child;

/**
 *
 * @author phanl
 */
public class ChildrenDAO {

    public int createReturnId(Child child) {
        try {
            String sql = "INSERT INTO [dbo].[Children]\n"
                    + "           ([ChildName]\n"
                    + "           ,[Gender]\n"
                    + "           ,[ParentID])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, child.getChildName());
            ps.setBoolean(2, child.isGender());
            ps.setInt(3, child.getParent().getUserID());        
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(ChildrenDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
}
