package com.servlet;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                "jdbc:mysql://YOUR_HOST:YOUR_PORT/YOUR_DATABASE?useSSL=false&allowPublicKeyRetrieval=true",
                "YOUR_USERNAME",
                "YOUR_PASSWORD"
            );

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}