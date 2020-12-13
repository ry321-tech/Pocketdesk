
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%  String password = request.getParameter("password");
    String user_id = (String)session.getAttribute("user_id");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");
        
        PreparedStatement ps
                = con.prepareStatement("update users_master set password = ? where user_id = ?");
        ps.setString(1, password);
        ps.setString(2, user_id);
        int count = ps.executeUpdate();
        if (count > 0) {
            System.out.println("Password Changed");
            session.invalidate();
            System.out.println("Session Closed");
            response.sendRedirect("AlertSuccessPaWChange.jsp");
        }
        con.close();
    } catch (Exception e) {
        System.out.println(e);
    }
%>