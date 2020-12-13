<%@page import="java.sql.*" %>

<%
    String uemail = request.getParameter("email");
    String nw_name = request.getParameter("nw_name");
    try {
        Class.forName("com.mysql.jdbc.Driver");

        String sql = "select * from users_master where user_id = ?";
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, uemail);

        ResultSet rs = ps.executeQuery();

        if (rs.isBeforeFirst()) {
            try {
                String sql1 = "INSERT INTO networkmembers_master"
                        + "(network_name,user_id) VALUES"
                        + "(?,?)";

                PreparedStatement ps1 = con.prepareStatement(sql1);
                ps1.setString(1, nw_name);
                ps1.setString(2, uemail);

                int count1 = ps1.executeUpdate();
                if (count1 > 0) {
                    try {
                        Boolean status = true;
                        String sql2 = "update networkinvite_master set status = ? where invited_id = ?";

                        PreparedStatement ps2 = con.prepareStatement(sql2);
                        ps2.setBoolean(1, status);
                        ps2.setString(2, uemail);
                        int count2 = ps2.executeUpdate();
                        if (count2 > 0) {
                            response.sendRedirect("AlertSuccessJoined.jsp");
                        }
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }

        } else {
            response.sendRedirect("AlertNotRegister.jsp");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>