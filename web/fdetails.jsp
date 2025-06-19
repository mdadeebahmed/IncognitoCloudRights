<%@page import="com.cloud.kk.action.Dbconnection"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
            <div id="site_content">
                <div  style="border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 500px;height: 250px;margin-left: 250px;margin-top: 60px">
                    <table>
                        <tr>
                            <th>File ID</th>
                            <th>File Name</th>
                            <th>Upload Time</th>
                            <th>File Size</th>
                        </tr>
                        <tr>
                        <%
                            String email = session.getAttribute("email").toString();
                            System.out.println("The Registered Mail Id " + email);
                            Connection con = Dbconnection.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from files where owner='" + email + "'");
                            while (rs.next()) {%>
                            <td><%=rs.getString("fid")%></td>
                            <td><%=rs.getString("filename")%></td>
                            <td><%=rs.getString("CDate")%></td>
                            <td><%=rs.getString("size")%>KB</td>
                        </tr>
                        <%}%>
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
