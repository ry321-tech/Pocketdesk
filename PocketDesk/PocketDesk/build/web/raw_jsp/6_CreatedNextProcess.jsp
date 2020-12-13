

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.sql.*"%>
<html>
    <head>
    <body>
<%   try {

        String userid = (String) session.getAttribute("user_id");
        String nw_name
                = request.getParameter("nw_name");

        Class.forName("com.mysql.jdbc.Driver");

        String sql ="select networkadmins_master.user_id,users_master.user_name,users_master.url_img "
                +"From networkadmins_master INNER JOIN users_master ON networkadmins_master.user_id=users_master.user_id WHERE networkadmins_master.network_name=?";
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

        PreparedStatement ps = con.prepareStatement(sql);
      ps.setString(1, nw_name);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){

        Path p = Paths.get(rs.getString("url_img"));
        String filepath1 = p.getFileName().toString();
        String user_name=rs.getString("user_name");
%>      <h1><%=user_name%></h1> 
<img src="./images/<%=filepath1%>" width="500" height="500"/>


<%     } }catch (Exception ex) {
        ex.printStackTrace();
    }
%> 

        
    </body>
</head>

</html>