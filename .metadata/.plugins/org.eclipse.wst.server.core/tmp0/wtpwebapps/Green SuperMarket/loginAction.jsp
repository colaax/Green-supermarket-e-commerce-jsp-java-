<%@ page import="Project.connectionprovider"%>
<%@ page import="java.sql.*" %>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");

if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
    // Admin login successful
    session.setAttribute("email", email);
    response.sendRedirect("admin/adminHome.jsp");
} else {
    int z = 0;
    try {
        Connection con = connectionprovider.getCon();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM users WHERE email = '" + email + "' AND password = '" + password + "'");
        
        while (rs.next()) {
            z = 1;
            session.setAttribute("email", email);
            response.sendRedirect("home.jsp");
        }

        if (z == 0) {
            // User not found
            response.sendRedirect("login.jsp?msg=notexist");
        }
    } catch (Exception e) {
        // Handle exceptions (e.g., log the exception)
        System.out.println(e);
        response.sendRedirect("login.jsp?msg=invalid");
    }
}
%>
