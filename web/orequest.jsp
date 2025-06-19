<%@page import="com.cloud.kk.action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html> 
<html>
    <head>
        <title>Control Cloud Data Access Privilege </title>
        <meta name="description" content="website description" />
        <meta name="keywords" content="website keywords, website keywords" />
        <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <!-- modernizr enables HTML5 elements and feature detects -->
        <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
    </head>
    <body>
        <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Request sent Successfully');</script>         
        <%}
            String uid = session.getAttribute("uid").toString();
            String email = session.getAttribute("email").toString();
        %>
        <div id="main">		
            <header>
                <div id="strapline">
                    <div id="welcome_slogan">
                        <h3 style="color: red">CLOUD INFORMATION ENTRY RIGHTS AND CONFIDENTIALITY THOROUGH INCOGNITO ATTRIBUTE-ORIENTED CRYPTOGRAPHY</h3>
                    </div><!--close welcome_slogan-->
                </div><!--close strapline-->	  
                <nav>
                    <br /><br />
                    <div id="menubar">
                        <ul id="nav">
                            <li class="current"><a href="ohome.jsp">Home</a></li>
                            <li><a href="opassword.jsp">Change Password</a></li>
                            <li><a href="orequest.jsp">Request</a></li>
                            <li><a href="upload.jsp">File Upload</a></li>
                            <li><a href="fdetails.jsp">File Details</a></li>
                            <li><a href="index.jsp">Log Out</a></li>
                        </ul>
                    </div><!--close menubar-->	
                </nav>
            </header>
            <div id="site_content"><br />
                <div style="width: 1350px;height: 300px;" >
                    <table style="margin-left: 150px;">
                        <tr>
                            <th>Unique ID</th>
                            <th>Email</th>
                            <th>Owner Key</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        <tr>
                            <%
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = Dbconnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from request where mailid='" + email + "'");
                                    if (rs.next()) {%>
                            <td><%=rs.getString("uid")%></td>
                            <td><%=rs.getString("mailid")%></td>
                            <td><%=rs.getString("prikey")%></td>
                            <td><%=rs.getString("status")%></td>    
                            <td><a href="oaction.jsp?<%=rs.getString("mailid")%>,<%=rs.getString("uid")%>" style="text-decoration: none">Request</a></td>
                            <%}
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>
                        </tr>
                    </table>
                </div>
            </div><!--close site_content-->  	
            <footer style="margin-top: 80px">
                <label>Copyright &copy; &nbsp;2023-2025</label>
            </footer>
        </div><!--close main-->
        <!-- javascript at the bottom for fast page loading -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/image_slide.js"></script>
    </body>
</html>
