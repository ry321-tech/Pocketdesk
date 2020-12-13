<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        out.println("<script src='js/sweetalert2.all.js' type='text/javascript'></script>");
        out.println("<script src='js/jquery.min.js' type='text/javascript'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal('Done', 'Your Profile Image has been uploaded. It may take a few seconds to display!', 'success');");
        out.println("});");
        out.println("</script>");
        %>
        <jsp:include page="3_UpdateProfile.jsp"/>   