
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Image Show</title>
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");
                Statement st = con.createStatement();
                String sql = "SELECT * FROM networks_master where network_id=21";
                ResultSet rs = st.executeQuery(sql);
                if (rs.isBeforeFirst()){
                  
                    String path = rs.getString("filepath");
        %>


       
                 <%
                    String lStr = "images/1523218345274_2.jpg";
lStr = lStr.substring(lStr.lastIndexOf("/"));
System.out.println(lStr);
            %>
           <h1><%=lStr%></h1>
           <img src="othimg<%=lStr%>" alt=""/>
       <%
               }
            } catch (Exception e) {
                out.println(e);
            }
        %> 
    
    </body>
</html>
