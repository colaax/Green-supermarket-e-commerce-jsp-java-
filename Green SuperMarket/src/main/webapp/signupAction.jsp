<%@ page import="Project.connectionprovider"%>
<%@ page import="java.sql.*" %>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobileNumber = request.getParameter("mobileNumber");
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String password = request.getParameter("password");
String address = ""; // Adjust as needed
String city = "";    // Adjust as needed
String state = "";   // Adjust as needed
String country = ""; // Adjust as needed

try {
    Connection con = connectionprovider.getCon();
    PreparedStatement ps = con.prepareStatement("INSERT INTO users VALUES(?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1, name);
    ps.setString(2, email);
    ps.setString(3, mobileNumber);
    ps.setString(4, securityQuestion);
    ps.setString(5, answer);
    ps.setString(6, password); // Consider hashing the password before storing
    ps.setString(7, address);
    ps.setString(8, city);
    ps.setString(9, state);
    ps.setString(10, country);

    ps.executeUpdate();
    response.sendRedirect("signup.jsp?msg=valid");
} catch (SQLIntegrityConstraintViolationException e) {
    // Handle specific integrity constraint violation (e.g., duplicate email)
    response.sendRedirect("signup.jsp?msg=duplicate");
} catch (Exception e) {
    // Log the exception using a logging framework
    // Handle other exceptions
    System.out.println(e);
    response.sendRedirect("signup.jsp?msg=invalid");
}
%>
