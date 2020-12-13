<%@page import="java.sql.*" %>
<%
String s=request.getParameter("del_member");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=
DriverManager.getConnection(
"jdbc:mysql://localhost:3306/pocketdesk",
        "root","root");
PreparedStatement ps=
con.prepareStatement(
        "select * from users_master where user_id=?");

ps.setString(1,s);
ResultSet rs=ps.executeQuery();
if(rs.isBeforeFirst()){
  out.print(rs.getString("user_name"));
}
out.print("User-id available"); 
con.close();
}catch(Exception e){e.printStackTrace();}
%>