<%-- 
    Document   : logout
    Created on : Apr 6, 2018, 3:42:17 PM
    Author     : Siddharth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script type="text/javascript">
            
            function noBack()
            {
                window.history.forward();
            }
            </script>
    </head>
    <body onLoad="noBack();" onpageshow="if(event.presisted) noBack();" onunload="">
    
<% session.invalidate(); %>
 <%
        out.println("<script src='js/sweetalert2.all.js' type='text/javascript'></script>");
        out.println("<script src='js/jquery.min.js' type='text/javascript'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal('Thanks for visiting!', 'You have been Sucessfully logout!', 'success');");
        out.println("});");
        out.println("</script>");
        %>
         <jsp:include page="index.html"/>    
        
</body>
       
    </body>
</html>
