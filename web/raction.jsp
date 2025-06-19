<%@page import="com.cloud.kk.action.Mail"%>
<%@page import="com.cloud.kk.action.Dbconnection"%>
<%@page import="java.util.UUID"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%
    Connection con = null;
    Statement st = null;
    String[] data = request.getQueryString().split(",");
    String prikey = UUID.randomUUID().toString().substring(0,6);
    String pkey = UUID.randomUUID().toString().substring(0,6);
    String msg=null;
    try{
        con = Dbconnection.getConnection();
        st = con.createStatement();
        int i = st.executeUpdate("update request set prikey='"+prikey+"',pkey='"+pkey+"',status='Granted' where mailid='"+data[0]+"' AND uid='"+data[1]+"'");
        if(i!=0)
        {
            msg="Unique Id :"+data[1]+"\nKey :"+prikey;
            Mail m = new Mail();
            m.passMail(msg, "testjpinfotech@gmail.com", data[0]);
            response.sendRedirect("response.jsp?msg=success");
        }
        else
        {
            response.sendRedirect("response.jsp?msgg=failed");
        }
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
%>