
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
        out.println("<script src='js/sweetalert2.all.js' type='text/javascript'></script>");
        out.println("<script src='js/jquery.min.js' type='text/javascript'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal('Success!', 'Your password has been changed, Now you can login via new password', 'success');");
        out.println("});");
        out.println("</script>");
        %>
         <jsp:include page="index.html"/>    