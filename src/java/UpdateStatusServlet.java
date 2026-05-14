package com.servlet;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;

import com.dao.ComplaintDAO;

@WebServlet("/updateStatus")
public class UpdateStatusServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {

            int id = Integer.parseInt(req.getParameter("id"));

            String status = req.getParameter("status");

            ComplaintDAO dao = new ComplaintDAO();

            dao.updateStatus(id, status);

            res.sendRedirect("viewComplaints");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}