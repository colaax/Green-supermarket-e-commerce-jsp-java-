/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.82
 * Generated at: 2023-12-31 16:42:01 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Project.connectionprovider;
import java.sql.*;

public final class myOrders_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/footer.jsp", Long.valueOf(1703224877179L));
    _jspx_dependants.put("/header.jsp", Long.valueOf(1704021962334L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("Project.connectionprovider");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"error.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/home-style.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("<script src='https://kit.fontawesome.com/a076d05399.js'></script>\r\n");
      out.write("</head>\r\n");
      out.write("    <!--Header-->\r\n");
      out.write("    <br>\r\n");
      out.write("    <div class=\"topnav sticky\">\r\n");
      out.write("  ");
String email=session.getAttribute("email").toString(); 
      out.write("  \r\n");
      out.write("            <center><h2>Green supermarket</h2></center>\r\n");
      out.write("            <h2><a href=\"\">");
out.println(email); 
      out.write(" <i class='fas fa-user-alt'></i></a></h2>\r\n");
      out.write("            <a href=\"home.jsp\">Home<i class=\"fa fa-institution\"></i></a>\r\n");
      out.write("            <a href=\"myCart.jsp\">My Cart<i class='fas fa-cart-arrow-down'></i></a>\r\n");
      out.write("            <a href=\"myOrders.jsp\">My Orders  <i class='fab fa-elementor'></i></a>\r\n");
      out.write("            <a href=\"changeDetails.jsp\">Change Details <i class=\"fa fa-edit\"></i></a>\r\n");
      out.write("            <a href=\"messageUs.jsp\">Message Us <i class='fas fa-comment-alt'></i></a>\r\n");
      out.write("            <a href=\"about.jsp\">About <i class=\"fa fa-address-book\"></i></a>\r\n");
      out.write("            <a href=\"logout.jsp\">Logout <i class='fas fa-share-square'></i></a>\r\n");
      out.write("            <div class=\"search-container\">\r\n");
      out.write("            <form action=\"searchHome.jsp\" method=\"post\">\r\n");
      out.write("            <input type=\"text\" Placeholder=\"search\" name=\"search\" >\r\n");
      out.write("            <button type=\"submit\"><i class=\"fa fa-search\"></i></button>\r\n");
      out.write("            </form>\r\n");
      out.write("           </div>\r\n");
      out.write("          </div>\r\n");
      out.write("           <br>\r\n");
      out.write("           <!--table-->\r\n");
      out.write('\r');
      out.write('\n');
      out.write(" <div class=\"footer\">\r\n");
      out.write("          <p>All Right Reserved @ Ashen Gayathra</p>\r\n");
      out.write("      </div>");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("    <title>Home</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div style=\"color: white; text-align: center; font-size: 30px;\">My Orders <i class='fab fa-elementor'></i></div>\r\n");
      out.write("    <table>\r\n");
      out.write("        <thead>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <th scope=\"col\">S.No</th>\r\n");
      out.write("                <th scope=\"col\">Product Name</th>\r\n");
      out.write("                <th scope=\"col\">Category</th>\r\n");
      out.write("                <th scope=\"col\"><i class=\"fa fa-inr\"></i> Price</th>\r\n");
      out.write("                <th scope=\"col\">Quantity</th>\r\n");
      out.write("                <th scope=\"col\"><i class=\"fa fa-inr\"></i> Sub Total</th>\r\n");
      out.write("                <th scope=\"col\">Order Date</th>\r\n");
      out.write("                <th scope=\"col\">Expected Delivery Date</th>\r\n");
      out.write("                <th scope=\"col\">Payment Method</th>\r\n");
      out.write("                <th scope=\"col\">Status</th>\r\n");
      out.write("            </tr>\r\n");
      out.write("        </thead>\r\n");
      out.write("        <tbody>\r\n");
      out.write("            ");

                int sno = 0;
                try {
                    Connection con = connectionprovider.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.email='" + email + "' and cart.orderDate is not NULL");
                    while (rs.next()) {
                        sno = sno + 1;
            
      out.write("\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>");
      out.print( sno );
      out.write("</td>\r\n");
      out.write("                            <td>");
      out.print( rs.getString(17) );
      out.write("</td>\r\n");
      out.write("                            <td>");
      out.print( rs.getString(18) );
      out.write("</td>\r\n");
      out.write("                            <td><i class=\"fa fa-inr\"></i> ");
      out.print( rs.getString(19) );
      out.write("</td>\r\n");
      out.write("                            <td>");
      out.print( rs.getString(3) );
      out.write("</td>\r\n");
      out.write("                            <td><i class=\"fa fa-inr\"></i> ");
      out.print( rs.getString(5) );
      out.write("</td>\r\n");
      out.write("                            <td>");
      out.print( rs.getString(11) );
      out.write("</td>\r\n");
      out.write("                            <td>");
      out.print( rs.getString(12) );
      out.write("</td>\r\n");
      out.write("                            <td>");
      out.print( rs.getString(13) );
      out.write("</td>\r\n");
      out.write("                            <td>");
      out.print( rs.getString(15) );
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("            ");

                    }
                } catch (Exception e) {
                    System.out.println(e);
                }
            
      out.write("\r\n");
      out.write("        </tbody>\r\n");
      out.write("    </table>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}