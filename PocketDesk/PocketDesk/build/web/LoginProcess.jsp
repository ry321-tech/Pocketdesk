<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%
    response.setContentType("text/html");

//PrintWriter out = response.getWriter();
%> 
${sessionScope.user_id}<%    try {
        request.getSession();

        String userid = (String) 
            session.getAttribute("user_id");

        System.out.println(userid);
        Class.forName("com.mysql.jdbc.Driver");
//String s=request.getParameter("username");
        String sql = 
"select * from users_master where user_id = ?";
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

        PreparedStatement ps = 
                con.prepareStatement(sql);
        ps.setString(1, userid);
        ResultSet rs = ps.executeQuery();%>
<table border='1'col width="300" col height="50" >
    <tr bgcolor='gray'>

        <th>Title</th>
        <th>User Id</th>
        <th>Gender</th>
        <th>NO</th>
        <th>URL</th>

        <%
            while (rs.next()) {
        %>
    <tr><td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
    </tr>

</tr>
<%
    Path p = Paths.get(rs.getString("url_img"));
    String filepath = p.getFileName().toString();
    session.setAttribute("url_img", filepath);
%>

<%
    String user_id = rs.getString(2);
    session.setAttribute("user_name", user_id);

    String mble = rs.getString(5);
    session.setAttribute("mble", mble);

%>
<h1><%=session.getAttribute("user_name")%></h1>
<img src="./images/<%=filepath%>" width="500" height="500"/>
<img src="./images/<%=session.getAttribute("url_img")%>" alt="">



<%

    }
    con.close();
%>
</table>
<jsp:forward page="1_HomePage.jsp"/>
<%
    } catch (Exception e) {
        System.out.println(e);
    }
%>

 