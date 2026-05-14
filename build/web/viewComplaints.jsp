<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>All Complaints</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #fff0f5;
            padding: 40px;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: black;
        }

        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.08);
        }

        th {
            background: #ff9eb5;
            color: black;
            padding: 14px;
            font-weight: 500;
        }

        td {
            padding: 12px;
            text-align: center;
            color: black;
        }

        tr:nth-child(even) {
            background: #fff7fa;
        }

        tr:hover {
            background: #ffe4ec;
        }

        .open { color: #ff4f7a; font-weight: 500; }
        .pending { color: #ff9f43; font-weight: 500; }
        .resolved { color: #2ecc71; font-weight: 500; }
    </style>
</head>

<body>

<h2>All Complaints</h2>

<table>
<tr>
    <th>ID</th>
    <th>User ID</th>
    <th>Title</th>
    <th>Description</th>
    <th>Status</th>
</tr>

<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/complaint_db",
        "root",
        "rupkatha"
    );

    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM complaints");

    while(rs.next()) {
        String status = rs.getString("status");
%>

<tr>
    <td><%= rs.getInt("id") %></td>
    <td><%= rs.getInt("user_id") %></td>
    <td><%= rs.getString("title") %></td>
    <td><%= rs.getString("description") %></td>

    <td class="
        <%= status.equals("OPEN") ? "open" :
            status.equals("PENDING") ? "pending" :
            "resolved" %>">
        <%= status %>
    </td>
</tr>

<%
    }
} catch(Exception e) {
    out.println(e);
}
%>

</table>

</body>
</html>