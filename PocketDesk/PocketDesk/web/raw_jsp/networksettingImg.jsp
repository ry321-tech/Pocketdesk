

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.sql.*"%>
<html>
    <head>
    <body>
<%

    try {

        String userid = (String) session.getAttribute("user_id");
        String nw_name
                = request.getParameter("nw_name");

        Class.forName("com.mysql.jdbc.Driver");

        String sql = "select * from networks_master where network_name = ?";
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, nw_name);
        ResultSet rs = ps.executeQuery();
        rs.next();

        Path p = Paths.get(rs.getString("filepath"));
        String filepath1 = p.getFileName().toString();
      
%>      <h1><%=filepath1%></h1> 
<img src="./images/<%=filepath1%>" width="500" height="500"/>
<%     } catch (Exception ex) {
        ex.printStackTrace();
    }
%> 

        
    </body>
</head>

</html>