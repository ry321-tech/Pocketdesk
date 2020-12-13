<%@page import="java.sql.*" %>
<%@page import="dao.Mailer"%>
<%
    String to = 
request.getParameter("invite_user");

    String nw_name = 
            request.getParameter("nw_name");

    String subject = "Invite From Pocket Desk";
    String msg = "Please click on following link"
            + " to accept the invitation and bring the world more closer !!! \n";

    String url = "http://localhost:8084/PocketDesk/VerifyUser.jsp?"
            + "email=" + to + "&nw_name=" + nw_name;

    Mailer.send(to, subject, msg + url);

%>
<%    try {

        String userid = (String) session.getAttribute("user_id");

        Boolean status = false;

        Class.forName("com.mysql.jdbc.Driver");
//String s=request.getParameter("username");

        String sql = "INSERT INTO networkinvite_master"
                + "(network_name,user_id,invited_id,status) VALUES"
                + "(?,?,?,?)";

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, nw_name);
        ps.setString(2, userid);
        ps.setString(3, to);
        ps.setBoolean(4, status);
        int count = ps.executeUpdate();
        if (count > 0) {
            response.sendRedirect("SuccessMailSentAlert.jsp");
        }
        con.close();
    } catch (Exception ex) {
        System.out.println(ex);
        ex.printStackTrace();
    }%>

