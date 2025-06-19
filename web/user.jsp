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
            if (request.getParameter("msgg") != null) {%>
        <script>alert('Please Enter Correct Username and Password');</script>  
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
                            <li class="current"><a href="index.jsp">Home</a></li>
                            <li><a href="owner.jsp">Data Owner</a></li>
                            <li><a href="user.jsp">Data Consumer</a></li>
                            <li><a href="authority.jsp">Attribute Authority</a></li>
                            <li><a href="cloud.jsp">Cloud Server</a></li>
                        </ul>
                    </div><!--close menubar-->	
                </nav>
            </header>
            <div id="site_content">
                <div id="login">
                    <%
                        int i = 2;
                    %>
                    <center><h2 style="font-size: 20px;font-family: Times New Roman"><span class="fontawesome-lock"></span>Welcome &nbsp;&nbsp;to &nbsp;&nbsp; Data&nbsp;&nbsp; Consumer</h2></center>
                    <form action="loginaction.jsp" method="POST">
                        <fieldset>
                            <p><label for="username" style="color: red">Username</label></p>
                            <p><input type="text" id="username" name="username" placeholder="Enter Username" required=""></p>
                            <p><label for="password"style="color: red">Password</label></p>
                            <p><input type="password" id="password"  name="password" placeholder="Password" required=""></p> 
                            <input type="hidden" value="<%=i%>" name="saction" />
                            <p><input type="submit" value="Sign In"></p>
                            <p style="margin-top: -25px"><input type="reset" value="Reset"></p><br /><br />
                            <p><label style="color: black   ;margin-left: 150px">New User&nbsp;</label><a href="registration.jsp"style="text-decoration: none">Click Here</a></p>
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
