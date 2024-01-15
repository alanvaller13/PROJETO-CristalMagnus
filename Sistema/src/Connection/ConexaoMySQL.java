/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Connection;

import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Alan (Temporaria)
 */
public class ConexaoMySQL {
    
    public static Connection conexao(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/db_livraria?user=root&password=root");
                        
        } catch (ClassNotFoundException | SQLException ex) {            
           throw new RuntimeException("Erro ao conectar no banco", ex);
        }
    }   
         
}
