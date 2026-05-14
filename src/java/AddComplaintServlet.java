package com.servlet;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import com.dao.ComplaintDAO;
import com.model.Complaint;

@WebServlet("/addComplaint")
public class AddComplaintServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        try {
            int userId = (int) req.getSession().getAttribute("userId");

            String title = req.getParameter("title");
            String desc = req.getParameter("desc");

            Complaint c = new Complaint();
            c.setUserId(userId);
            c.setTitle(title);
            c.setDescription(desc);

            ComplaintDAO dao = new ComplaintDAO();
            dao.addComplaint(c);

            res.sendRedirect("success.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}