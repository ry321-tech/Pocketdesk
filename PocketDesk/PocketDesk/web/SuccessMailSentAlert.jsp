<%-- 
    Document   : SuccessMailSentAlert
    Created on : Apr 13, 2018, 1:48:59 PM
    Author     : Siddharth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        out.println("<script src='js/sweetalert2.all.js' type='text/javascript'></script>");
        out.println("<script src='js/jquery.min.js' type='text/javascript'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal('Good job!', 'Invited Successfully!', 'success');");
        out.println("});");
        out.println("</script>");
        %>
         <jsp:include page="5_testInvite.jsp"/>    
    </body>
</html>
