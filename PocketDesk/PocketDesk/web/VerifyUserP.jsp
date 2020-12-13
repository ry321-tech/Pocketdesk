<%@page import="java.sql.*" %>

<%
    String email = request.getParameter("email");
    session.setAttribute("user_id",email);
    String key = request.getParameter("key");
    
    try {
        Class.forName("com.mysql.jdbc.Driver");

        String sql = "select * from check_key where pass_key = ?";
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, key);

        ResultSet rs = ps.executeQuery();

        if (rs.isBeforeFirst()) {
            System.out.println("true link");
            String status = "used";
            String sql2 = "update check_key set pass_key = ? where pass_key = ?";

            PreparedStatement ps2 = con.prepareStatement(sql2);
            ps2.setString(1, status);
            ps2.setString(2, key);
            int count2 = ps2.executeUpdate();
            if (count2 > 0) {
                System.out.println("done replacement");
%><jsp:forward page="12_Change_Password_Window.jsp"/><%
            }
        } else {
            response.sendRedirect("AlertInvalidUrl.jsp");
        }
        con.close();
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>


<!--

            try {

                String check_url = request.getRequestURL().toString() + "?" + request.getQueryString();
                String sql2 = "INSERT INTO check_url"
                        + "(check_url) VALUES"
                        + "(?)";
                Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
                PreparedStatement ps2 = con2.prepareStatement(sql2);
                ps2.setString(1, check_url);

                int count2 = ps2.executeUpdate();
                if (count2 > 0) {
                    try {
                        String sql3 = "INSERT INTO networkmembers_master"
                                + "(network_name,user_id) VALUES"
                                + "(?,?)";

                        PreparedStatement ps3 = con1.prepareStatement(sql3);
                        ps3.setString(1, nw_name);
                        ps3.setString(2, uemail);

                        int count3 = ps3.executeUpdate();
                        if (count3 > 0) {
                            try {
                                Boolean status = true;
                                String sql4 = "update networkinvite_master set status = ? where invited_id = ?";

                                PreparedStatement ps4 = con1.prepareStatement(sql4);
                                ps4.setBoolean(1, status);
                                ps4.setString(2, uemail);
                                int count4 = ps4.executeUpdate();
                                if (count4 > 0) {
                                    response.sendRedirect("AlertSuccessJoined.jsp");
                                }
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }
                        }
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }

                }
            } catch (Exception ex) {
                response.sendRedirect("AlertInvalidUrl.jsp");
                ex.printStackTrace();
            }

        }
-->