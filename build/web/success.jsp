<!DOCTYPE html>
<html>
<head>
    <title>Success</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">

    <style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    margin:0;
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:#fff0f5;
    font-family:'Poppins', sans-serif;
    padding-top:100px;
}

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
}

.nav-links a:hover{
    color:#ff6f91;
}

.card{
    background:white;
    padding:40px;
    width:400px;
    border-radius:18px;
    text-align:center;
    box-shadow:0 8px 25px rgba(0,0,0,0.08);
}

.icon{
    font-size:55px;
    color:#4CAF50;
    margin-bottom:15px;
}

h2{
    color:#4CAF50;
    margin-bottom:10px;
}

p{
    color:#555;
    margin-bottom:25px;
}

.card a{
    text-decoration:none;
    padding:12px 24px;
    border-radius:12px;
    color:white;
    background:linear-gradient(to right, #ff9eb5, #ff6f91);
    display:inline-block;
}

.card a:hover{
    background:linear-gradient(to right, #ff85a2, #ff4f7a);
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

    h2{
        font-size:28px;
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
        <a href="user.jsp">Add Complaint</a>
        <a href="viewComplaints">View Complaints</a>
        <a href="logout.jsp">Logout</a>
    </div>

</div>
    
<div class="card">

    <div class="icon"></div>

    <h2>Complaint Submitted!</h2>

    <p>Your complaint has been successfully submitted</p>

    <a href="user.jsp">Submit Another Complaint</a>

</div>

</body>
</html>