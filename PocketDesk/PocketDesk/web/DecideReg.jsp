<%@page import="java.io.File"%>
<%@page import="dto.User" %>
<%@page import="dao.UserDAO" %>
<%@page import="dao.Mailer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/sweetalert.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
          String email = 
                  request.getParameter("Email");
          String pass = 
                  request.getParameter("password"); 
          String name = 
                  request.getParameter("user_name");
          String mble = 
                  request.getParameter("mble");          
String Gender = 
                  request.getParameter("Gender");
String imgurl = "C:" + File.separator + "Users" + File.separator + "Siddharth" + File.separator + "Documents" + File.separator + "NetBeansProjects" + File.separator + "PocketDesk" + File.separator +"web" + File.separator + "images" + File.separator + "profile.jpg" ;
        %>    
        
        <jsp:useBean class="dto.User" id="u"/>
        <jsp:setProperty name="u" property="user_id"
                         value="<%=email%>"/>
        <jsp:setProperty name="u" property="password"
                         value="<%=pass%>"/>  
        <jsp:setProperty name="u" property="user_name"
             value="<%=name%>"/> 
       <jsp:setProperty name="u" property="contact_no" 
                             value="<%=mble%>"/> 
       <jsp:setProperty name="u" property="user_gender"
                             value="<%=Gender%>"/>
       <jsp:setProperty name="u" property="url_img"
                             value="<%=imgurl%>"/>                      
<jsp:setProperty name="u" property="verified" value="false"/>
                             
        <%
            UserDAO obj = new UserDAO();
            
            boolean b = obj.Register(u);
            
             if(b)
            {
              String to = email;
              String em_name = name;
              System.out.println(to);
              System.out.println(em_name);
              
              String subject = "Registered Successfully in Pocket Desk";
    String msg = "Dear " + em_name+ ", you have been successfully registered using email id " + to
            + "\n To visit our website please click the following link!!! \n";
    String url = 
"<a href=http://localhost:8084/PocketDesk/"
+ "verify_user.jsp?user_id="+to+">VERIFY</a>";
    Mailer.send(to, subject, msg + url);  

            

        %>


        <jsp:forward page="RegSuccessAlert.jsp"/>
        <%
          }
          else
          {
                  
        %>
         <jsp:forward page="RegFailedAlert.jsp"/>
        
        <%
            }
        %>      
       
    </body>
</html>
