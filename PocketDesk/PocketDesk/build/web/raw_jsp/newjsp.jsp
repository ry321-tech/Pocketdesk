<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<html>
<body>
 <%@ page import="java.io.*"%>
 <%@ page import="java.sql.*"%>
 <%@ page import="java.util.*"%>
 <%@ page import="java.text.*"%>
 <%@ page import="javax.servlet.*"%>
 <%@ page import="javax.servlet.http.*"%>
 <%@ page import="javax.servlet.http.HttpSession"%>
 <%@ page language="java"%>
 <%@ page session="true"%>
 <%@ page import="java.sql.*"%>
<% 

Connection con = null;
Statement stmt = null;
ResultSet rs = null;
try {
Class.forName("com.mysql.jdbc.Driver");
con =DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk","root","root");
stmt = con.createStatement();
rs = stmt.executeQuery("select * from networks_master where network_id = 53");%>

<%
            rs.next();
            Path p = Paths.get(rs.getString("filepath"));
            String filepath = p.getFileName().toString();
            session.setAttribute("filepath",filepath);
         %>
         
<%=filepath%>

 <img src="./images/<%=filepath%>" width="500" height="500"/>
 <img src="./images/<%=session.getAttribute("filepath")%>" alt="">
 

 
<%  }

catch (Exception e) {
out.println("DB problem"); 
return;
}
finally {
rs.close();
stmt.close();
con.close();
}
%>
</body>
 </html>