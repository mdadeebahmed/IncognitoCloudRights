<%@page import="com.cloud.kk.action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    String email = session.getAttribute("email").toString();
    String oldpass = request.getParameter("oldpass");
    String newpass = request.getParameter("newpass");
    int saction = Integer.parseInt(request.getParameter("saction"));
    System.out.println("The Saction Value is "+saction);
    switch (saction) {
        case 1:
            try {
                System.out.println("The Action Value");
                con = Dbconnection.getConnection();
                st = con.createStatement();
                rs = st.executeQuery("select * from reg where email='" + email + "' AND pass='"+oldpass+"'");
                if (rs.next()) {
                    if (rs.getString("pass").equals(oldpass)) {
                        st.executeUpdate("update reg set pass='"+newpass+"' where email='"+email+"' AND pass='"+oldpass+"' AND role='Owner'");
                        response.sendRedirect("opassword.jsp?msg=success");
                    } else {
                        response.sendRedirect("opassword.jsp?msgg=failed");
                    }
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
        case 2:
            try {
                con = Dbconnection.getConnection();
                st = con.createStatement();
                rs = st.executeQuery("select * from reg where email='" + email + "' AND pass='"+oldpass+"' ");
                if (rs.next()) {
                    if (rs.getString("pass").equals(oldpass)) {
                        st.executeUpdate("update reg set pass='"+newpass+"' where email='"+email+"' AND pass='"+oldpass+"' AND role='Consumer'");
                        response.sendRedirect("upassword.jsp?msg=success");
                    } else {
                        response.sendRedirect("upassword.jsp?msgg=failed");
                    }
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
        default:
            response.sendRedirect("index.jsp");
    }

%>