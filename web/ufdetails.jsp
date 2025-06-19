<%@page import="com.cloud.kk.action.TrippleDes"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.cloud.kk.action.Dbconnection"%>
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
            if(request.getParameter("msg")!=null)
            {%>
            <script>alert('Request Successfully');</script>  
            <%}
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
                            <li class="current"><a href="uhome.jsp">Home</a></li>
                            <li><a href="upassword.jsp">Change Password</a></li>
                            <li><a href="ufdetails.jsp">File Details</a></li>
                            <li><a href="fdownload.jsp">File Download</a></li>
                            <li><a href="index.jsp">Log Out</a></li>
                        </ul>
                    </div><!--close menubar-->	
                </nav>
            </header>
            <div id="site_content"><br />
                <div style="width: 1350px;height: 1000px;">
                    <table style="margin-left: 300px">
                        <tr>
                            <th>File ID</th>
                            <th>File Name</th>
                            <th>Action</th>
                        </tr>
                        <tr>
                            <%
                                try {
                                    Connection con = Dbconnection.getConnection();
                                    Statement st = con.createStatement();
                                    ResultSet rs = st.executeQuery("select * from files");
                                    while (rs.next()) {%>
                            <td><%=rs.getString("fid")%></td>
                            <td><%=new TrippleDes().encrypt(rs.getString("filename"))%></td>
                            <td><a href="request.jsp?<%=rs.getString("fid")%>" style="text-decoration: none">Request</a></td>
                        </tr>            
                        <%}
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }
                        %>
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
