package com.servlet;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;

import com.dao.ComplaintDAO;

@WebServlet("/deleteComplaint")
public class DeleteComplaintServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {

            int id = Integer.parseInt(req.getParameter("id"));

            ComplaintDAO dao = new ComplaintDAO();

            dao.deleteComplaint(id);

            res.sendRedirect("viewComplaints");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}