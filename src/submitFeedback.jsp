<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String feedback = request.getParameter("feedbacks");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String rating = request.getParameter("rating");

    PrintWriter outStream = response.getWriter(); // For debugging

    try {
        // Load MySQL JDBC Driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Connect to MySQL (without password since you're using phpMyAdmin)
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback", "root", "");

        if (conn != null) {
            outStream.println("Database Connected Successfully!<br>"); // Debugging output
        }

        // Insert Query
        String query = "INSERT INTO feedbacks (name, email, rating, message) VALUES (?, ?, ?, ?)";
        PreparedStatement pstmt = conn.prepareStatement(query);
        pstmt.setString(1, name);
        pstmt.setString(2, email);
        pstmt.setString(3, rating);
        pstmt.setString(4, feedback);

        int rows = pstmt.executeUpdate();

        pstmt.close();
        conn.close();

        if (rows > 0) {
            outStream.println("<script>alert('Feedback submitted successfully!'); window.location='index.jsp';</script>");
        } else {
            outStream.println("<h3 style='color: red;'> Failed to submit feedback! Please try again.</h3>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        outStream.println("<h3 style='color: red;'>Error: " + e.getMessage() + "</h3>");
    }
%>
