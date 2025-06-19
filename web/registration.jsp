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
            <script>alert('Registration Successfully\n Email id as Your username');</script>    
            <%}
            if(request.getParameter("msgg")!=null)
            {%>
            <script>alert('Registration Failed');</script>  
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
                <div><h1 style="text-align:  center">Registration Form</h1></div>
                <br />
                <div class="container">
                    <div  class="form1">
                        <form id="contactform" name="f1" action="registrationProcess.jsp" method="GET"> 
                            <p class="contact"><label for="name">Name</label></p> 
                            <input id="name" name="name" type="text"placeholder="First and last name" required=""  tabindex="1" > 

                            <p class="contact"><label for="email">Email</label></p> 
                            <input id="email" name="email" placeholder="example@domain.com" required="" type="email"> 
                            <fieldset>
                                <label>Date Of Birth</label><br /><br />
                                <input type="date" style="width: 400px" name="dob" required=""/>
                            </fieldset>
                            <label>Gender</label><br /><br />
                            <select class="select-style gender" name="gender" required="">
                                <option value="select" >i am..</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select><br><br>
                             <label>Role</label><br /><br />
                            <select class="select-style gender" name="role" required="">
                                <option value="select" >Please Select</option>
                                <option value="Owner">Owner</option>
                                <option value="Consumer">Consumer</option>
                            </select><br><br>
                            <p class="contact"><label for="phone">Mobile phone</label></p> 
                            <input id="phone" name="phone" placeholder="phone number" required="" type="text"> <br>
                            <center><input class="buttom" name="submit" id="submit" tabindex="5" value="Sign me up!" type="submit"></center>
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
