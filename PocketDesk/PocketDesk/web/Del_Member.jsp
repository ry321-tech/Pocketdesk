<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">

            function noBack()
            {
                window.history.forward();
            }
        </script>
    </head>
    <body onLoad="noBack();" onpageshow="if(event.presisted) noBack();" onunload="">
        <%
        String del_member = request.getParameter("del_member");
        String nw_nameS = (String) session.getAttribute("network_name");
         
         try {
        

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

        PreparedStatement ps
                = con.prepareStatement(" delete from networkmembers_master where user_id = ? and network_name = ? ");

         ps.setString(1,del_member);
         ps.setString(2,nw_nameS);

        int count = ps.executeUpdate();
        if (count > 0) { 
            System.out.println("Member deleted");
            response.sendRedirect("AlertMemberDeleted.jsp");
        }
        con.close();
    } catch (Exception ex) {
        System.out.println(ex);
        ex.printStackTrace();
    }
        %>
    </body>
</html>
