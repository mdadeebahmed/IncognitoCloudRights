<%@page import="com.cloud.kk.action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st =null;
    String[] data = request.getQueryString().split(",");
    try{
        con = Dbconnection.getConnection();
        st = con.createStatement();
        int i = st.executeUpdate("update request set status='Pending',pkey='Pending',prikey='Pending' where mailid='"+data[0]+"' AND uid='"+data[1]+"' ");
        if(i!=0)
        {
            response.sendRedirect("orequest.jsp?msg=success");
        }
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
%>