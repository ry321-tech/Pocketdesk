
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    try {
        String user_id = (String) session.getAttribute("user_id");
        String user_name = request.getParameter("user_name");

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

        PreparedStatement ps
                = con.prepareStatement("update users_master set user_name = ? where user_id = ?");

        ps.setString(1,user_name );
         ps.setString(2,user_id);

        int count = ps.executeUpdate();
        if (count > 0) {
            try {
                String sql1 = "select * from users_master where user_id = ?";
                PreparedStatement ps1 = con.prepareStatement(sql1);
                ps1.setString(1, user_id);
                ResultSet rs = ps1.executeQuery();
                rs.next();
                String name = rs.getString("user_name");
                session.setAttribute("user_name",name);
                response.sendRedirect("AlertUserNameUpdated.jsp");
%>    
<% } catch (Exception e) {
                System.out.println(e);
            }

        }
        con.close();
    } catch (Exception ex) {
        System.out.println(ex);
        ex.printStackTrace();
    }

%>

