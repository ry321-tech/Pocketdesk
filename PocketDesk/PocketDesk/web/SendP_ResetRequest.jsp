<%@page import="java.sql.*" %>
<%@page import="dao.Mailer"%>

<%
    String user_id = request.getParameter("user_id");
    //String nw_name = request.getParameter("nw_name");
    Long t = System.currentTimeMillis();
    String key = Long.toString(t);
    try {

        Class.forName("com.mysql.jdbc.Driver");

        String sql = "select * from users_master where user_id = ? ";

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, user_id);

        ResultSet rs = ps.executeQuery();

        if (rs.isBeforeFirst()) {
            try{
            System.out.println("select query done");
            String sql1 = "INSERT INTO check_key"
                        + "(pass_key) VALUES"
                        + "(?)";
            PreparedStatement ps1 = con.prepareStatement(sql1);
                ps1.setString(1, key);
                int count = ps1.executeUpdate();   
                if (count > 0) {
                    System.out.println("insert  query done");
                    String subject = "Email From Pocket Desk";
                    String msg = "Please click on following link"
                            + " to Reset Your password !!! \n"
                            + "This link will be valid for one time only.";

                    String url = "http://localhost:8084/PocketDesk/VerifyUserP.jsp?"
                            + "email=" + user_id + "&key=" + key;

                    Mailer.send(user_id, subject, msg + url);
                    %><jsp:forward page="AlertP_SResetRequest.jsp"/><%
                }
               
            }
            catch (Exception ex) {
        System.out.println(ex);
        ex.printStackTrace();
    }
            
         } else {
%><jsp:forward page="AlertInvalid_P_Request.jsp"/><%
        }
        con.close();
    } catch (Exception ex) {
        System.out.println(ex);
        ex.printStackTrace();
    }%>

