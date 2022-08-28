/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xyz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;


public class dbconnection {
    static  public  String url="jdbc:mysql://localhost/dash";
    static  public  String username="root";
    static  public  String password="";
    
    static  Connection conn=null;
    
    public static Connection getConnection()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection(url,username,password);
            
            System.out.println("dbconnected");
        } catch (Exception e) {
            
            JOptionPane.showMessageDialog(null, e.toString());
        }
    
      return conn;
    }
    public static void closeconnection() throws SQLException
    {
    
      conn.close();
    }
    
    
    
}
