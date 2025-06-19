<%@page import="com.cloud.kk.action.Mail"%>
<%@page import="java.util.UUID"%>
<%@page import="com.cloud.kk.action.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%
    Connection con = null;
    Statement st = null;
    String pass = null, msg = null;
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");
    String role = request.getParameter("role");
    String mob = request.getParameter("phone");
    try {
        String uid = UUID.randomUUID().toString().substring(0, 6);
        pass = UUID.randomUUID().toString().substring(0, 6);
        msg = "Unique Id :" + uid + "\nEmail :\t" + email + "\nPassword :\t " + pass;
        con = Dbconnection.getConnection();
        st = con.createStatement();
        int i = st.executeUpdate("insert into reg(uid,name, email, pass, dob, gender, role, mob)values('" + uid + "','" + name + "','" + email + "','" + pass + "','" + dob + "','" + gender + "','" + role + "','" + mob + "')");
        if (i != 0) {
            if (role.equals("Owner")) {
                st.executeUpdate("insert into request values('"+uid+"','"+email+"','Waiting','Waiting','Waiting')");
                Mail m = new Mail();
                m.passMail(msg, "testjpinfotech@gmail.com", email);
                response.sendRedirect("registration.jsp?msg=success");
            } else {
                Mail m = new Mail();
                m.passMail(msg, "testjpinfotech@gmail.com", email);
                response.sendRedirect("registration.jsp?msg=success");
            }
        } else {
            response.sendRedirect("registration.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>