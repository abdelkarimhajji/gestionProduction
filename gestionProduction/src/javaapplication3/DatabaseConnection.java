/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package javaapplication3;

/**
 *
 * @author ahajji
 */

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.io.IOException;

public class DatabaseConnection {
    private static final String url = "jdbc:mysql://localhost:3306/products";
    private static final String username = "root";
    private static final String password = "";
    private static Connection konnaction = null;

    public static Connection getKonnaction() {
        if (konnaction == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                konnaction = DriverManager.getConnection(url, username, password);
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        }
        return konnaction;
    }

    public static void closeKonnaction() {
        try {
            if (konnaction != null) {
                konnaction.close();
                konnaction = null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

