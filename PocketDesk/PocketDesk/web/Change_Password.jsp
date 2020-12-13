
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%

    String oldpassword = request.getParameter("oldpassword");
    String user_id = (String) session.getAttribute("user_id");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");
        String sql1 = " select * from users_master where user_id = ? and "
                + " password = ?";
        PreparedStatement ps = con.prepareStatement(sql1);
        ps.setString(1, user_id);
        ps.setString(2, oldpassword);
        ResultSet rs = ps.executeQuery();
        if (rs.isBeforeFirst()) {

            try {

                String password = request.getParameter("password");
                PreparedStatement ps1
                        = con.prepareStatement("update users_master set password = ? where user_id = ?");
                ps1.setString(1, password);
                ps1.setString(2, user_id);
                int count = ps1.executeUpdate();
                if (count > 0) {
                    response.sendRedirect("AlertSuccessPasswordChanged.jsp");
                }

            } catch (Exception e) {
                System.out.println(e);
            }

        } else {
            response.sendRedirect("AlertPasswordIncorrect.jsp");
        }
        con.close();
    } catch (Exception e) {
        System.out.println(e);
    }
%>