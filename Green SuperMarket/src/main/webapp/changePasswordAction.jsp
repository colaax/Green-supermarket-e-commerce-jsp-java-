<%@ page import="Project.connectionprovider"%>
<%@ page import="java.sql.*" %>
<%
String email = session.getAttribute("email").toString();
String oldPassword = request.getParameter("oldPassword");
String newPassword = request.getParameter("newPassword");
String confirmPassword = request.getParameter("confirmPassword");

if (!confirmPassword.equals(newPassword))
    response.sendRedirect("changePassword.jsp?msg=notMatch");
else {
    int check = 0;
    Connection con = null;
    Statement stSelect = null;
    Statement stUpdate = null;

    try {
        con = connectionprovider.getCon();
        stSelect = con.createStatement();
        ResultSet rs = stSelect.executeQuery("select * from users where email='" + email + "' and password='" + oldPassword + "'");
        
        while (rs.next()) {
            check = 1;
            stUpdate = con.createStatement();
            stUpdate.executeUpdate("update users set password='" + newPassword + "' where email='" + email + "'");
            response.sendRedirect("changePassword.jsp?msg=done");
        }

        if (check == 0)
            response.sendRedirect("changePassword.jsp?msg=wrong");
    } catch (Exception e) {
        System.out.println(e);
    } finally {
        try {
            if (stUpdate != null) {
                stUpdate.close();
            }
            if (stSelect != null) {
                stSelect.close();
            }
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
%>
