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
        <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('File Upload Successfully');</script>  
        <%}
            if (request.getParameter("msgg") != null) {%>
        <script>alert('File Upload Failed');</script>  
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
                <%
                    String email = session.getAttribute("email").toString();
                    System.out.println("The Registered Mail Id "+email);
                    Connection con = Dbconnection.getConnection();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from request where mailid='"+email+"' AND status='Granted'");
                    if (rs.next()) {%>
                <div  style="border: 1px solid red;border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 500px;height: 250px;margin-left: 250px;margin-top: 60px">
                    <center><h1 style="display: block;">File Upload Here...!</h1></center><hr>
                    <center> 
                        <%
                            Random m = new Random();
                            int n = m.nextInt(1000) + 500 - 10;
                        %>
                        <form name="f2" action="Upload" method="post" enctype="multipart/form-data"style="margin-right:  50px">
                            <label style="font-size: 23px">File ID</label><input class="textbox" value="<%=n%>" readonly=""type="text"  name="fid" style="margin-left: 83px;width: 250px" required=""/><br /><br />
                            <label style="font-size: 23px">File Name </label><input class="textbox" type="text" placeholder="Enter File Name" name="fname" style="margin-left: 45px;width: 250px;height: 25px;" required=""/><br /><br />
                            <label style="font-size: 23px">File Browse</label><input  type="file"  name="file" size="50" style="margin-left: 30px;width: 250px" required=""/><br /><br /><br />
                            <input type="submit" value="Upload" class="button" style="margin-left: 80px;margin-top: -10px;width: 100px;height: 30px;background-color: #33cc77" />
                        </form> 
                    </center>
                </div>  
                <%} else {%>
                <div  style="border-top-left-radius: 20px;border-bottom-right-radius: 20px;background: white;width: 500px;height: 250px;margin-left: 250px;margin-top: 60px">
                    <center>
                        <h2>You Are Not Authorized</h2>
                        <h3>Please send request to N-Authorities</h3>
                    </center>
                </div> 
                <%}
                %>

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
