<%@ page import="Project.connectionprovider"%>
<%@ page import="java.sql.*" %>
<%
String email = session.getAttribute("email").toString();
String mobileNumber = request.getParameter("mobileNumber");
String password = request.getParameter("password");

int check = 0;
try {
    Connection con = connectionprovider.getCon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM users WHERE email='" + email + "' AND password='" + password + "'");

    if (rs.next()) {
        check = 1;
        st.executeUpdate("UPDATE users SET mobileNumber='" + mobileNumber + "' WHERE email='" + email + "'");
    }
} catch (Exception e) {
    e.printStackTrace();
    response.sendRedirect("changeMobileNumber.jsp?msg=error");
}

if (check == 1) {
    response.sendRedirect("changeMobileNumber.jsp?msg=done");
} else {
    response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
}
%>
