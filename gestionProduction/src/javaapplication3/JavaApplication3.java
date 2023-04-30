/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package javaapplication3;

import com.project.demo.Login;
import java.awt.Color;
//import com.sun.jdi.connect.spi.Connection;
import java.io.IOException;
import javax.swing.JFrame;
import java.sql.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.IOException;
import javax.swing.JLabel;
/**
 *
 * @author ahajji
 */
public class JavaApplication3 {
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException, ClassNotFoundException {

    
        // TODO code application logic here
          /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                Login login = new Login();
                login.setLocationRelativeTo(null); // center the window
                login.setVisible(true);
                login.setResizable(false);
                login.setAlwaysOnTop(true);
                login.setLabelVisibility(false);
                login.setFocusable(true);
            }
        });
//        java.awt.EventQueue.invokeLater(new Runnable() {
//               public void run() {
//               new Home().setVisible(true);
//            }
//        });
    }
}
