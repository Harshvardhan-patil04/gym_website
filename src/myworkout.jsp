<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.gym.database.DBConn" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/mydiet1.css"/>
</head>
<style>
body {
    background-image: url('images/myworkout.gif'); /* Replace with your image path */
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    color: white;
}</style>
<body>
<header>
        <nav class="navbar">
            <div class="logo">
                <a href="index.jsp">
                    <img src="images/mainlogo.jpeg" alt="Logo">
                </a>
            </div>
            <ul class="nav-links">
                <li><a href="Uhome.jsp">Home</a></li>
                <li><a href="allplans.jsp">All Plans</a></li>
                <li><a href="myplans.jsp">My Plans</a></li>
                <li><a href="mydiet.jsp">My Diet</a></li>
                <li><a href="myworkout.jsp">My Workout</a></li>
                <li><a href="chatbot.jsp">ChatBoat</a></li>
                <li><a href="messages.jsp">Notifications</a></li>
                <li style="text-transform: uppercase;"><a href="logout"><%=session.getAttribute("firstname")%>-Logout</a></li> 
            </ul>
        </nav>
</header>
<main>
<div id="workout" class="content">
        <h2>My Workout</h2>
        <section class="container">
                <div class="row">
                 <%
                HttpSession session1 = request.getSession(false);
                String name1=(String)session1.getAttribute("username");
            %>
                    <%
                        try {
                            Connection con = DBConn.conn();
                            String s = "SELECT * FROM workout where username ='" + name1 + "'";
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery(s);
                            while (rs.next()) {
                                String name3 = rs.getString(1);
                    %>

                    <div class="card-body">
                        <ul class="list-group">
                          
                            <li class="list-group-item"><b>Your Name:&nbsp;&nbsp;</b><%= rs.getString(1) %></li>
                            <li class="list-group-item"><b>Day:&nbsp;&nbsp;</b><%= rs.getString(2) %></li>
                            <li class="list-group-item"><b>Date:&nbsp;&nbsp;</b><%= rs.getString(3) %>
                            <li class="list-group-item"><b>Exercise:&nbsp;&nbsp;</b><%= rs.getString(4) %></li>
                            <li class="list-group-item"><b>Duration:&nbsp;&nbsp;</b><%= rs.getString(5) %></li>
                            <li class="list-group-item"><b>Note:&nbsp;&nbsp;</b><%= rs.getString(6) %> </li>
                        </ul>
                        
                    </div>

                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </div>
            </section>
    </div>
    </main>
<footer>
        <div class="footer-container">
            
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Contact</a></li>
                    <!-- Add more links as needed -->
                </ul>
            </div>
            
            <div class="footer-section">
                <h3>Contact Us</h3>
                <p>Email: nutriflex@gmail.com</p>
                <p>Phone: 020-26119057</p>
            </div>
            
            <div class="footer-section" >
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
