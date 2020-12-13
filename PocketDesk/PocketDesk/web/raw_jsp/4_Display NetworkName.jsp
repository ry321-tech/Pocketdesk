
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%
response.setContentType("text/html");

//PrintWriter out = response.getWriter();

//${sessionScope.user_id}
%> 



<%

try{

       String userid=(String)session.getAttribute("user_id");
       

Class.forName("com.mysql.jdbc.Driver");
//String s=request.getParameter("username");
   String sql="select * from networks_master where user_id = ?";
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk","root","root");

PreparedStatement ps=con.prepareStatement(sql);
                               ps.setString(1,"namrtajjjj@gmail.com");
   ResultSet rs=ps.executeQuery();%>
   
       
   <select name="nw_name">
       <option>Select Network</option>
       <%
         while(rs.next()){
       %>
       <option><%=rs.getString("network_name")%></option>
        <%
        }
        %>
   </select>
</table>
<%
   }
catch(Exception e){
System.out.println(e);
e.printStackTrace();
}
%>

 
