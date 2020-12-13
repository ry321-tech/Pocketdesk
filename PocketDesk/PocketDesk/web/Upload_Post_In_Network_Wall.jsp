<%-- 
    Document   : post_master_create
    Created on : Apr 12, 2018, 9:55:21 AM
    Author     : Siddharth
--%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 // String timeStamp= new SimpleDateFormate("yyy-MM-dd hh:mm:ss").formate(Calanedar.getInstance().getTime());
    //String date= new java.util.Date().toString();
    long date =  System.currentTimeMillis();
    //Date d = new Date(date);
    Timestamp ts = new Timestamp(date);
String user_id=(String) session.getAttribute("user_id");
String network_name= (String) session.getAttribute("network_name");
    try {
        
        
        String url_img = 
                  request.getParameter("url_img");
        String post_content = 
                  request.getParameter("post_content");
        
        Class.forName("com.mysql.jdbc.Driver");
                    Connection con= (Connection) 
DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk","root","root");
                    
		    PreparedStatement ps= 
con.prepareStatement("insert into posts_master(user_id,post_date,post_content, network_name) values (?,?,?,?)");
                    ps.setString(1,user_id);
                    //ps.setString(2,date);
                    ps.setTimestamp(2,ts);
                    ps.setString(3,post_content);
                     ps.setString(4,network_name);
		    int count = ps.executeUpdate();
		    if(count>0)
		    {
		    	 response.sendRedirect("AlertPost_Uploaded.jsp");
		    }
		    con.close();
      } catch(Exception ex) {
         System.out.println(ex);
         ex.printStackTrace();
      }
   
%>
    