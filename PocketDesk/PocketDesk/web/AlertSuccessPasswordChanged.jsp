
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
        out.println("<script src='js/sweetalert2.all.js' type='text/javascript'></script>");
        out.println("<script src='js/jquery.min.js' type='text/javascript'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal('Success!', 'Your password has been changed !', 'success');");
        out.println("});");
        out.println("</script>");
        %>
         <jsp:include page="1_HomePage.jsp"/>    