<%@ page import="Project.connectionprovider" %>
<%@ page import="java.sql.*" %>
<%@ include file="footer.jsp" %>
<html>
<head>
    <link rel="stylesheet" href="css/bill.css">
    <title>Bill</title>
</head>
<body>
    <%
        String email = (String) session.getAttribute("email");

        // Check if email is not null
        if (email != null) {
            try {
                int total = 0;
                int sno = 0;
                Connection con = connectionprovider.getCon();
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select sum(total) from cart where email='" + email + "' and status='bill'");

                while (rs.next()) {
                    total = rs.getInt(1);
                }

                // Use a different Statement for the second query
                Statement st2 = con.createStatement();
                ResultSet rs2 = st2.executeQuery("select * from users inner join cart on users.email=cart.email where cart.email='" + email + "' and cart.status='bill'");

                while (rs2.next()) {
    %>
    <h3>Green Supermarket</h3>
    <hr>
    <div class="left-div"><h3>Name: <%= rs2.getString(2) %></h3></div>
    <div class="right-div-right"><h3>Email: <%= email %></h3></div>
    <div class="right-div"><h3>Mobile Number: <%= rs2.getString(20) %></h3></div>  

    <div class="left-div"><h3>Order Date: <%= rs2.getString(21) %></h3></div>
    <div class="right-div-right"><h3>Payment Method: <%= rs2.getString(23) %></h3></div>
    <div class="right-div"><h3>Expected Delivery: <%= rs2.getString(22) %></h3></div> 

    <div class="left-div"><h3>Transaction Id: <%= rs2.getString(24) %></h3></div>
    <div class="right-div-right"><h3>City: <%= rs2.getString(17) %></h3></div> 
    <div class="right-div"><h3>Address: <%= rs2.getString(16) %></h3></div> 

    <div class="left-div"><h3>State: <%= rs2.getString(18) %></h3></div>
    <div class="right-div-right"><h3>Country: <%= rs2.getString(19) %></h3></div>  

    <hr>
    <table id="customers">
        <h3>Product Details</h3>
        <tr>
            <th>S.No</th>
            <th>Product Name</th>
            <th>Category</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Sub Total</th>
        </tr>
        <%
            // Use a different Statement for the third query
            Statement st3 = con.createStatement();
            ResultSet rs1 = st3.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.email='" + email + "' and cart.status='bill'");
            while (rs1.next()) {
                sno = sno + 1;
        %>
        <tr>
            <td><%= sno %></td>
            <td><%= rs1.getString(17) %></td>
            <td><%= rs1.getString(18) %></td>
            <td><%= rs1.getString(19) %></td>
            <td><%= rs1.getString(3) %></td>
            <td><%= rs1.getString(5) %></td>
        </tr>
        <%
            }
            // Close the third ResultSet and Statement
            rs1.close();
            st3.close();
        %>
    </table>
    <h3>Total: <%= total %></h3>
    <a href="continueShopping.jsp"><button class="button left-button">Continue Shopping</button></a>
    <a onclick="window.print();"><button class="button right-button">Print</button></a>
    <br><br><br><br>
    <%
                } // End of while loop

                // Close the second ResultSet (rs2) and Statement (st2)
                rs2.close();
                st2.close();
                // Close the first ResultSet (rs) and Statement (st)
                rs.close();
                st.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        } else {
            // Handle the case where email is null
            out.println("<p>Email is not available in the session.</p>");
        }
    %>
</body>
</html>