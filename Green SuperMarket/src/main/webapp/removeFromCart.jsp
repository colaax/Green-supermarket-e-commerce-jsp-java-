<%@ page import="Project.connectionprovider"%>
<%@ page import="java.sql.*" %>
<%
String email = session.getAttribute("email").toString();
String product_id = request.getParameter("id");

try {
    Connection con = connectionprovider.getCon();
    Statement st = con.createStatement();
    st.executeUpdate("DELETE FROM cart WHERE email = '" + email + "' AND product_id = '" + product_id + "' AND address IS NULL");
    response.sendRedirect("myCart.jsp?msg=removed");
} catch (Exception e) {
    e.printStackTrace();
}
%>