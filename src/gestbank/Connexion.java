/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestbank;
import java.sql.*;


/**
 *
 * @author Silas
 */
public class Connexion {
     Connection connect=null;
     public Connexion(){
         
        try
        {
            Class.forName("org.sqlite.JDBC");   
            connect=DriverManager.getConnection("jdbc:sqlite:banque.sqlite");
        }
        catch(ClassNotFoundException | SQLException e)
        {
            System.err.println(e.getClass().getName()+ ";" + e.getMessage());
            System.exit(0);
        }
        
        System.out.println("opening database successfuly");
     }
    Connection ObtenirConnexion(){
         return connect;
     }
        
    
}
