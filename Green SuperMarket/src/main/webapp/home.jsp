<%@ page import="Project.connectionprovider"%>
<%@ page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Home</title>
  <style>
    body {
      background-color: #3CBC8D;
      font-family: "Open Sans", sans-serif;
      margin: 0;
      padding: 0;
    }

    h3 {
      color: yellow;
      text-align: center;
    }

    table {
      border: 1px solid #ccc;
      border-collapse: collapse;
      margin: 0;
      padding: 0;
      width: 100%;
      margin-left: 5%;
      table-layout: fixed;
    }

    table caption {
      font-size: 1.5em;
      margin: .5em 0 .75em;
    }

    table tr {
      background-color: #f8f8f8;
      border: 1px solid #ddd;
      padding: .35em;
    }

    table th,
    table td {
      padding: .625em;
      text-align: center;
    }

    table th {
      font-size: .85em;
      letter-spacing: .1em;
      text-transform: uppercase;
    }

    @media screen and (max-width: 600px) {
      table {
        border: 0;
      }

      table caption {
        font-size: 1.3em;
      }

      table thead {
        border: none;
        clip: rect(0 0 0 0);
        height: 1px;
        margin: -1px;
        overflow: hidden;
        padding: 0;
        position: absolute;
        width: 1px;
      }

      table tr {
        border-bottom: 3px solid #ddd;
        display: block;
        margin-bottom: .625em;
      }

      table td {
        border-bottom: 1px solid #ddd;
        display: block;
        font-size: .8em;
        text-align: right;
      }

      table td::before {
        content: attr(data-label);
        float: left;
        font-weight: bold;
        text-transform: uppercase;
      }

      table td:last-child {
        border-bottom: 0;
      }
    }
  </style>
</head>

<body>
  <div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
  <%
  String msg=request.getParameter("msg");
  if("added".equals(msg))
  {
  %>
  <h3 class="alert">Product added successfully!</h3>
  <%} %>
  <%
  if("exist".equals(msg))
  {
  %>
  <h3 class="alert">Product already exists in your cart! Quantity increased!</h3>
  <%} %>
  <%
  if("invalid".equals(msg))
  {
  %>
  <h3 class="alert">Something went wrong! Try Again! </h3>
  <%} %>
  <table>
    <thead>
      <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Category</th>
        <th scope="col"><i class="fa fa-inr"></i> Price</th>
        <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
      </tr>
    </thead>
    <tbody>
      <%
      try{
        Connection con = connectionprovider.getCon();
        Statement st=con.createStatement();
        ResultSet rs = st.executeQuery("select *from product where active='Yes'");
        while(rs.next())
        {
      %>
      <tr>
        <td><%=rs.getString(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><i class="fa fa-inr"></i> <%=rs.getString(4) %></td>
        <td><a href="addToCartAction.jsp?id=<%=rs.getString(1) %>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
      </tr>
      <%
      }
      }
      catch(Exception e)
      {
      System.out.println(e);	
      }
      %>
    </tbody>
  </table>
  <br>
  <br>
  <br>
</body>

</html>
