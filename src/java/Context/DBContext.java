package Context;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {

    /*USE BELOW METHOD FOR YOUR DATABASE CONNECTION FOR BOTH SINGLE AND MULTILPE SQL SERVER INSTANCE(s)*/
 /*DO NOT EDIT THE BELOW METHOD, YOU MUST USE ONLY THIS ONE FOR YOUR DATABASE CONNECTION*/
    public Connection getConnection() throws Exception {
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber
                + ";databaseName=" + dbName;//+"; integratedSecurity=true";
        String url1 = "jdbc:sqlserver://localhost:1433;databaseName=ChildrenCare";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url1, userID, password);
//        return DriverManager.getConnection(url);
    }

    /*Insert your other code right after this comment*/

 /*Change/update information of your database connection, DO NOT change name of instance variables in this class*/
    private final String serverName = "localhost";
    private final String dbName = "ChildrenCare";
    private final String portNumber = "1433";
    private final String userID = "sa";
    private final String password = "sa";

    public static void main(String[] args) {
        DBContext dBContext = new DBContext();
        try {
            System.out.println("Thanh Cong");
            System.out.println(dBContext.getConnection());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

}
