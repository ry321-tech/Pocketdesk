<%-- 
    Document   : AlertNotRegister
    Created on : Apr 15, 2018, 2:02:15 AM
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
        out.println("swal ( 'Invalid Request' ,  'Your are not a user !' ,  'error' );");
        out.println("});");
        out.println("</script>");
        %>
         <jsp:include page="index.html"/>    
    </body>
</html>
