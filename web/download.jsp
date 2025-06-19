<%@page import="java.io.OutputStream"%>
<%@page import="com.cloud.kk.action.TrippleDes"%>
<%@page import="com.cloud.kk.action.Dbconnection"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String fid = request.getParameter("fid");
    String pkey = request.getParameter("pkey");
    String prkey = request.getParameter("prikey");
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    ResultSet rs1 = null;
    try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        rs = st.executeQuery("select * from  uresponse  where fid='" + fid + "' AND okey='" + pkey + "' AND pkey='" + prkey + "'");
        if (rs.next()) {
            rs1 = st.executeQuery("select * from files where fid='" + fid + "'");
            if (rs1.next()) {
                String name = rs1.getString("filename");
                String cipher = rs1.getString("data");
                String cipher1 = new TrippleDes().decrypt(cipher);
                String plain = new TrippleDes().decrypt(cipher1);
                byte[] data = plain.getBytes();
                if (data != null) {
                    System.out.println("go>>>>>>>>>>");
                    response.setContentType("image/jpg");
                    response.setHeader("Content-Disposition", "attachment; filename=\"" + name + "\"");
                    OutputStream os = response.getOutputStream();
                    os.write(data);
                    os.close();
                    data = null;
                }
            }
        } else {
            response.sendRedirect("fdownload.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }


%>