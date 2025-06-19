<%@page import="com.cloud.kk.action.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    String uname = request.getParameter("username");
    String pass = request.getParameter("password");
    int saction = Integer.parseInt(request.getParameter("saction"));
    switch (saction) {
        case 1:
            try {
                con = Dbconnection.getConnection();
                st = con.createStatement();
                rs = st.executeQuery("select * from reg where role='Owner' AND email='"+uname+"' AND pass='"+pass+"'");
                if(rs.next())
                {
                    session.setAttribute("uid", rs.getString("uid"));
                    session.setAttribute("email", rs.getString("email"));
                    response.sendRedirect("ohome.jsp?msg=success");
                }
                else
                {
                   response.sendRedirect("owner.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
        case 2:
            try {
                con = Dbconnection.getConnection();
                st = con.createStatement();
               rs = st.executeQuery("select * from reg where role='Consumer' AND email='"+uname+"' AND pass='"+pass+"'");
                if(rs.next())
                {
                    session.setAttribute("email", rs.getString("email"));
                    response.sendRedirect("uhome.jsp?msg=success");
                }
                else
                {
                   response.sendRedirect("user.jsp?msgg=failed");
                } rs = st.executeQuery("");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
        case 3:
            try {
                if(uname.equalsIgnoreCase("Authority")&&pass.equalsIgnoreCase("Authority"))
                {
                    response.sendRedirect("ahome.jsp?msg=success");
                }
                else
                {
                    response.sendRedirect("authority.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
        case 4:
            try {
                if(uname.equalsIgnoreCase("Cloud")&&pass.equalsIgnoreCase("Cloud"))
                {
                    response.sendRedirect("chome.jsp?msg=success");
                }
                else
                {
                    response.sendRedirect("cloud.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
        default:
            response.sendRedirect("index.jsp");
    }
%>