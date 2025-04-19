<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home - Feedback</title>
<link rel="stylesheet" href="css/hedfoot.css">
<style>
    body {
        background-color: #111;
        color: white;
        font-family: Times New Roman, serif;
    }
    .logo img {
        height: 80px;
        width: auto;
    }
    main {
        height: 500px; 
        background-image: url('images/trainer.jpg'); 
        background-size: cover; 
        background-position: center; 
        background-repeat: no-repeat;
    }
    .image-content {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100%;
        color: white;
        text-align: center;
    }
    .feedback-list {
        text-align: left;
        width: 60%;
        margin: auto;
        background: #222;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 4px 10px rgba(255, 255, 255, 0.1);
    }
    .feedback-item {
        border: 1px solid #444;
        padding: 15px;
        margin-bottom: 15px;
        background: #333;
        color: white;
        border-radius: 10px;
        font-family: Arial, sans-serif;
        box-shadow: 0px 4px 8px rgba(255, 255, 255, 0.1);
    }
    .feedback-item h4 {
        font-size: 18px;
        font-weight: bold;
        margin-bottom: 5px;
        color: #ffcc00;
    }
    .feedback-item p {
        font-size: 16px;
        margin: 5px 0;
    }
</style>
</head>
<body>

<header style="background-color:black">
    <nav class="navbar">
        <div class="logo">
            <a href="#home">
                <img src="images/file.png" alt="Logo">
            </a>
        </div>
        <ul class="nav-links">
            <li><a href="AdminHome.jsp">Home</a></li>
            <li><a href="trainers.jsp">Trainers</a></li>
            <li><a href="users.jsp">Users</a></li>
            <li><a href="candidate.jsp">Candidates</a></li>
            <li style="text-transform: uppercase;">
                <a href="logout"><%=session.getAttribute("name")%>-Logout</a>
            </li> 
        </ul>
    </nav>
</header>

<main>
    <div class="image-content">
        <h1 style="color: black; background-color: white;">Admin Home</h1>
    </div>
</main>

<!-- Displaying Previous Feedback -->
<h2 style="margin-top: 40px; text-align:center">User Reviews</h2>
<div class="feedback-list">
    <% 
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback?useSSL=false", "root", "");

        String sql = "SELECT name, rating, message FROM feedbacks ORDER BY id DESC LIMIT 5";
        stmt = conn.prepareStatement(sql);
        rs = stmt.executeQuery();

        while (rs.next()) {
            String username = rs.getString("name");
            int rating = rs.getInt("rating");
            String message = rs.getString("message");

            // Generate stars for rating
            String stars = "★".repeat(rating) + "☆".repeat(5 - rating);
    %>
            <div class="feedback-item">
                <h4><%= (username != null && !username.isEmpty()) ? username : "Anonymous" %></h4>
                <p>Rating: <%= stars %></p>
                <p><%= message %></p>
            </div>
    <% 
        }
    } catch (SQLException e) { 
    %>
        <p style="color: red;">⚠️ Error fetching feedbacks: <%= e.getMessage() %></p>
    <% 
    } finally {
        try { if (rs != null) rs.close(); } catch (SQLException ignored) {}
        try { if (stmt != null) stmt.close(); } catch (SQLException ignored) {}
        try { if (conn != null) conn.close(); } catch (SQLException ignored) {}
    }
    %>
</div>

<footer style="background-color:black">
    <div class="footer-container">
        <div class="footer-section">
            <h3>Quick Links</h3>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="services.jsp">Services</a></li>
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
        </div>

        <div class="footer-section">
            <h3>Contact Us</h3>
            <p>Email: example@example.com</p>
            <p>Phone: 123-456-7890</p>
        </div>

        <div class="footer-section">
            <h3>Follow Us</h3>
            <ul class="social-media">
                <li><a href="https://www.facebook.com/share/1A4uftLCpp/?mibextid=wwXIfr"><img src="images/facebook.jpeg" alt="Facebook"></a></li>
                <li><a href="https://x.com/nutriflexgym?s=21"><img src="images/twitter.jpg" alt="Twitter"></a></li>
                <li><a href="https://www.instagram.com/nutriflex_gym?igsh=OXlhdzNmZWk1ejI0&utm_source=qr"><img src="images/insta.jpg" alt="Instagram"></a></li>
            </ul>
        </div>
    </div>
</footer>

</body>
</html>
