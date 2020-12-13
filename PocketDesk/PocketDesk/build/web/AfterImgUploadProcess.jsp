<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%
response.setContentType("text/html");
%> 
${sessionScope.user_id}<%

try{
request.getSession();

       String userid=(String)session.getAttribute("user_id");

Class.forName("com.mysql.jdbc.Driver");

   String sql="select * from users_master where user_id = ?";
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk","root","root");

PreparedStatement ps=con.prepareStatement(sql);
                               ps.setString(1,userid);
   ResultSet rs=ps.executeQuery();%>
  
  
       <%  rs.next();{
           Path p = Paths.get(rs.getString("url_img"));
           String filepath = p.getFileName().toString();
           session.setAttribute("url_img",filepath);
           response.sendRedirect("AfterImgUploadProcessAlert.jsp");
           %>    
<% }con.close();
    }catch(Exception e){
    System.out.println(e);
    }
%>

  
 