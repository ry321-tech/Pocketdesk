<%@page import="java.sql.*" %>
<%
String s=request.getParameter("network_name");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=
DriverManager.getConnection(
"jdbc:mysql://localhost:3306/pocketdesk",
        "root","root");
PreparedStatement ps=
con.prepareStatement(
        "select * from networks_master where network_name=?");

ps.setString(1,s);
ResultSet rs=ps.executeQuery();
if(rs.isBeforeFirst()){
  out.print("Network Name already taken");
}
else
out.print("Network Name available"); 
con.close();
}catch(Exception e){e.printStackTrace();}
%>