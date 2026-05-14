<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">

    <style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    font-family:'Poppins', sans-serif;
    background:#fff0f5;
    min-height:100vh;
    padding-top:150px;
}

/* NAVBAR */

.navbar{
    width:100%;
    height:70px;
    background:white;
    position:fixed;
    top:0;
    left:0;

    display:flex;
    justify-content:space-between;
    align-items:center;

    padding:0 40px;

    box-shadow:0 2px 10px rgba(0,0,0,0.08);
    z-index:1000;
}

.logo{
    font-size:22px;
    font-weight:600;
    color:#ff6f91;
}

.nav-links{
    display:flex;
    gap:25px;
}

.nav-links a{
    text-decoration:none;
    color:black;
    font-weight:500;
    transition:0.3s;
}

.nav-links a:hover{
    color:#ff6f91;
}

/* CARD */

.card{
    background:white;
    padding:40px;
    width:420px;
    border-radius:18px;
    box-shadow:0 8px 25px rgba(0,0,0,0.08);

    margin:auto;
}

.title{
    font-size:22px;
    font-weight:600;
    text-align:center;
    margin-bottom:25px;
    color:black;
}

label{
    font-size:14px;
    font-weight:500;
    color:black;
}

input,
textarea,
select{
    width:100%;
    padding:12px;
    margin-top:6px;
    margin-bottom:18px;

    border-radius:10px;
    border:1px solid #f3c6d3;

    outline:none;
    font-size:14px;

    background:#fffafd;
}

input:focus,
textarea:focus{
    border-color:#ff9eb5;
}

textarea{
    resize:none;
    height:110px;
}

button{
    width:100%;
    padding:13px;

    border:none;
    border-radius:12px;

    font-size:15px;
    font-weight:500;

    color:white;
    cursor:pointer;

    background:linear-gradient(to right, #ff9eb5, #ff6f91);
}

button:hover{
    background:linear-gradient(to right, #ff85a2, #ff4f7a);
}

/* TABLE */

.table-container{
    width:90%;
    margin:auto;
    overflow-x:auto;
}

table{
    width:100%;
    border-collapse:collapse;
    background:white;
    border-radius:18px;
    overflow:hidden;
    box-shadow:0 8px 25px rgba(0,0,0,0.08);
}

th{
    background:#f48fa8;
    color:white;
    padding:18px;
    text-align:center;
}

td{
    padding:18px;
    text-align:center;
    border-bottom:1px solid #f5d6df;
}

tr:hover{
    background:#fff7fa;
}

/* PAGE TITLE */

.page-title{
    text-align:center;
    font-size:42px;
    margin-bottom:30px;
}

/* MOBILE VIEW */

@media screen and (max-width:768px){

    .navbar{
        height:auto;
        padding:15px;

        flex-direction:row;
        align-items:flex-start;
        justify-content:space-between;
    }

    .logo{
        font-size:18px;
        line-height:1.2;
    }

    .nav-links{
        display:flex;
        flex-direction:column;
        align-items:flex-end;
        gap:8px;
    }

    .nav-links a{
        font-size:14px;
    }

    .card{
        width:92%;
        padding:25px;
    }

    .title{
        font-size:18px;
    }

    .page-title{
        font-size:28px;
    }

    table{
        min-width:700px;
    }

}

</style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>

<div class="navbar">

    <div class="logo">
        Complaint Portal
    </div>

    <div class="nav-links">
        <a href="viewComplaints">View Complaints</a>
        <a href="login.jsp">Login Page</a>
        <a href="logout.jsp">Logout</a>
    </div>

</div>

<div class="card">

    <div class="title">Admin Dashboard</div>

    <button onclick="window.location.href='viewComplaints'">
        View All Complaints
    </button>

</div>

</body></html>