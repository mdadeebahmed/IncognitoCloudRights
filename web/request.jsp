<%@page import="com.cloud.kk.action.Mail"%>
<%@page import="com.cloud.kk.action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String pkey =null,prikey=null;
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    ResultSet rs1 = null;
    String email = session.getAttribute("email").toString();
    String msg = null;
    String fid = request.getQueryString().toString();
    try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        rs = st.executeQuery("select * from files where fid='" + fid + "'");
        if (rs.next()) {
            rs1 = st.executeQuery("select * from request where uid='" + rs.getString("uid") + "'");
            if (rs1.next()) {
                pkey = rs1.getString("pkey");
                prikey = rs1.getString("prikey");
                int i = st.executeUpdate("insert into uresponse(fid, uid, okey, pkey, status) values('" + fid + "','" + email + "','" + rs1.getString("pkey") + "','" + rs1.getString("prikey") + "','Granted')");
                if (i!=0) {
                    System.out.println("Success");
                    msg = "File ID :" + fid + "\nOwner Key :" + pkey + "\nN-Authorities Key :" + prikey;
                    Mail m = new Mail();
                    m.keyMail(msg, "KK", email);
                    response.sendRedirect("ufdetails.jsp?msg=success");
                }
            }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>