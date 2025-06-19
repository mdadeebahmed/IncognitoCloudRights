<%@page import="com.cloud.kk.action.Dbconnection"%>
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
            <%
                if(request.getParameter("msgg")!=null)
                {%>
                <script>alert('Please Enter Correct Owner Key and N-Authorities');</script>  
                <%}
            %>
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
                <div style="width: 1350px;height: 300px;">
                    <form action="download.jsp" method="post">
                        <table style="margin-left: 100px">
                            <tr>
                                <th>File ID</th>
                                <th>N-Authorities Key</th>
                                <th>Owner Key</th>
                                <th>Action</th>
                            </tr>
                            <tr>
                                <%
                                    String email = session.getAttribute("email").toString();
                                    Connection con = null;
                                    Statement st = null;
                                    ResultSet rs = null;
                                    try {
                                        con = Dbconnection.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from uresponse where uid='" + email + "'");
                                        while (rs.next()) {%>
                                        <td><input type="text" value="<%=rs.getString("fid")%>" name="fid" style="text-align: center" readonly=""/></td>
                                <td><input type="text" name="pkey" required=""/></td>
                                <td><input type="text" name="prikey" required=""/></td>
                                <td><input type="submit" name="Download" /></td>
                            </tr> 
                            <%}
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
                            %>
                        </table>
                    </form>
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
