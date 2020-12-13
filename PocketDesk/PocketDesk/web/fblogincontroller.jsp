<%@page import="java.sql.*" %>
<%

    String user_name = (String) request.getParameter("user_name");
    String user_email = (String) request.getParameter("user_email");

    //String uemail = request.getParameter("email");
    //  String nw_name = request.getParameter("nw_name");
    try {
        Class.forName("com.mysql.jdbc.Driver");

        String sql = "select * from users_master where user_id = ?";
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

        PreparedStatement ps1 = con.prepareStatement(sql);

        ps1.setString(1, user_email);

        ResultSet rs = ps1.executeQuery();

        if (rs.isBeforeFirst()) {
            session.setAttribute("user_id", user_email);
%><jsp:forward page="LoginProcess.jsp"/> <%
        } else {  
      %><jsp:forward page="AlertNotMember.jsp"/> <%      
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>
<br><%=user_name%><br>
<%=user_email%><br>
