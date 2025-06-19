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
        <script>alert('Password Changed Successfully');</script>  
        <%}
            if (request.getParameter("msgg") != null) {%>
        <script>alert('Please Enter Correct Password');</script>
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
                <div id="login">
                    <%
                        int i=1;
                    %>
                    <center><h2 style="font-size: 20px;font-family: Times New Roman"><span class="fontawesome-lock"></span>Password &nbsp;&nbsp;Change &nbsp;&nbsp; Here</h2></center>
                    <form action="preset.jsp" method="POST">
                        <fieldset>
                            <p><label for="username" style="color: red">Old Password</label></p>
                            <p><input type="password" id="username" name="oldpass" placeholder="Enter Username" required=""></p>
                            <p><label for="password"style="color: red"> New Password</label></p>
                            <p><input type="password" id="password"  name="newpass" placeholder="Password" required=""></p> 
                            <input type="hidden" value="<%=i%>" name="saction" />
                            <p><input type="submit" value="Reset Here" style="margin-left: 143px;"></p>
                        </fieldset>
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
