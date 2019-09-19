
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Indunil
 */
public class MysqlConnect {
     public static Connection ConnectDB(){
        Connection conn =null;
        
    try{
        
        Class.forName("com.mysql.jdbc.Driver");
        conn= (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/donationnew","root","");
        //JOptionPane.showMessageDialog(null,"connected to datab");
    
    }
    catch(Exception e){
        JOptionPane.showMessageDialog(null, e);
        
    }
    return conn;
    }
    
}
