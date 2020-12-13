<%@page import="dto.User" %>
<%@page import="dao.UserDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        
        <%
          String uid = 
                  request.getParameter("Email");
          String pass = 
                  request.getParameter("Password");    
                 

        %>    
    
        <jsp:useBean class="dto.User" id="u"/>
        <jsp:setProperty name="u" property="user_id"
                         value="<%=uid%>"/>
        <jsp:setProperty name="u" property="password"
                         value="<%=pass%>"/>  
                         
        <%
            UserDAO obj = new UserDAO();
            
            boolean b = obj.checkUser(u);
            
            if(b)
            {
             session.setAttribute("user_id", uid);

        %>
        


        <jsp:forward page="LoginProcess.jsp"/>
        <%
          }
          else
          {
                  
        %>
         <jsp:forward page="LoginFailedAlert.jsp"/>
        
        <%
            }
        %>   
        
        
        <%
            
            %>
    </body>
   
</html>

