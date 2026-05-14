package com.servlet;

import java.io.*;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM users WHERE username=? AND password=?"
            );

            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

    HttpSession session = request.getSession();

    
    session.setAttribute("userId", rs.getInt("id"));

    String role = rs.getString("role");

    if(role.equals("ADMIN")){
        response.sendRedirect("admin.jsp");
    } else {
        response.sendRedirect("user.jsp");
    }

} else {
    response.getWriter().println("Invalid Login");
}   

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}