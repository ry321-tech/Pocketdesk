

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    
String nw_name =request.getParameter("nw_name");
session.setAttribute("network_name",nw_name);


%>
<jsp:forward page="10_NetworkHome1.jsp"/>