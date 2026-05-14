package com.servlet;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.util.*;
import com.dao.ComplaintDAO;
import com.model.Complaint;

@WebServlet("/viewComplaints")
public class ViewComplaintsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        try {
            ComplaintDAO dao = new ComplaintDAO();
            List<Complaint> list = dao.getAllComplaints();

            req.setAttribute("complaints", list);
            RequestDispatcher rd = req.getRequestDispatcher("complaints.jsp");
            rd.forward(req, res);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}