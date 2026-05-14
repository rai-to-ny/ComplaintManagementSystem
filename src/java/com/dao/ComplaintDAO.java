package com.dao;

import java.sql.*;
import java.util.*;
import com.model.Complaint;
import com.servlet.DBConnection;

public class ComplaintDAO {

    // 🔹 ADD COMPLAINT
    public void addComplaint(Complaint c) throws Exception {

        Connection con = DBConnection.getConnection();

        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO complaints(user_id, title, description, status) VALUES(?,?,?,?)"
        );

        ps.setInt(1, c.getUserId());
        ps.setString(2, c.getTitle());
        ps.setString(3, c.getDescription());
        ps.setString(4, "Pending");

        ps.executeUpdate();

        // Close resources
        ps.close();
        con.close();
    }

    // 🔹 GET ALL COMPLAINTS
    public List<Complaint> getAllComplaints() throws Exception {

        List<Complaint> list = new ArrayList<>();

        Connection con = DBConnection.getConnection();
        Statement st = con.createStatement();

        ResultSet rs = st.executeQuery("SELECT * FROM complaints");

        while (rs.next()) {
            Complaint c = new Complaint();

            c.setId(rs.getInt("id"));
            c.setUserId(rs.getInt("user_id"));
            c.setTitle(rs.getString("title"));
            c.setDescription(rs.getString("description"));
            c.setStatus(rs.getString("status"));

            list.add(c);
        }

        // Close resources
        rs.close();
        st.close();
        con.close();

        return list;
    }

    // 🔹 UPDATE STATUS
    public void updateStatus(int id, String status) throws Exception {

        Connection con = DBConnection.getConnection();

        PreparedStatement ps = con.prepareStatement(
            "UPDATE complaints SET status=? WHERE id=?"
        );

        ps.setString(1, status);
        ps.setInt(2, id);

        ps.executeUpdate();

        // Close resources
        ps.close();
        con.close();
    }

    // 🔹 DELETE COMPLAINT
    public void deleteComplaint(int id) throws Exception {

        Connection con = DBConnection.getConnection();

        PreparedStatement ps = con.prepareStatement(
            "DELETE FROM complaints WHERE id=?"
        );

        ps.setInt(1, id);

        ps.executeUpdate();

        // Close resources
        ps.close();
        con.close();
    }
}