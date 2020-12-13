<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>


<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
        <link type="text/css" rel="stylesheet" href="css/ustmaster.css" />
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
        <link rel="stylesheet" href="css/homepage_style.css">
        <link rel="stylesheet" href="css/network_creation.css">
        <script src="https://cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://cdn.jsdelivr.net/respond/1.4.2/respond.min.js"></script>


    </head>
    <body>
        <div class="header1">
            <div id="img3" class="header1"><img src="img/logo.png" id="img3" /></div>
            <div id="profilearea5" class="header1"><a href="1_HomePage.jsp"style="color: #ffffff"> Home</a></div>
            <div id="profilearea" class="header1"><a href="#"><img src="img\prof.png"id="profpic" /></a></div>
            <div id="profilearea1" class="header1"><a href="#"style="color: #ffffff">Profile</a></div>
            <div id="profilearea3" class="header1">|</div>
            <div id="profilearea4" class="header1"><img src="img\noti.png"height="19"/> Notification</div>
            <div id="profilearea6" class="header1">|</div>
            <div id="profilearea7" class="header1"><img src="img\chat.png"height="19"/>chat</div>
            <div id="profilearea2" class="header1">|</div>
            <div id="setting" class="header1"><img src="img\set.png"height="30"/></div>
            <div id="logout" class="header1"><a href="logout.jsp"><img src="img\lo.png"height="30"/></a></div>
        </div>
        <div class="bodyn">
        </div>
        <-- left container -->
        <div class="wrapper">
            <div class="container">
                <div class="container1"></div>
                <div class="container2">
                    <img src="./images/<%=session.getAttribute("url_img")%>" alt="">
                    <h2 style="color:#069"><%=session.getAttribute("user_name")%></h2>
                    <span><%=session.getAttribute("user_id")%></span>
                    <p style="color:#56367c; font-weight:bold">Mobile NO. :</p>
                    <p><%=session.getAttribute("mble")%></p>
                </div>
                <div class="container3">

                    <div class="facebook share"> <a href="4_CreatedNetwork.jsp" style="color: #374356">Created Network</a></div>
                    <div class="twitter share"><a href="index.html" style="color: #374356">Joined Network</a></div>
                     <div class="google share"><a href="8_editProfile.jsp" style="color: #374356">Edit Profile</a></div>
                </div>
                <div class="container4">
                    <div class="facebook share"> <a href="2_CreateNetworkPage.jsp" style="color: #374356">Create a Network</a></div>
                    <div class="twitterq share"><a href="#" style="color: #374356">Delete Network</a></div>
                </div>
                <div class="container5">
                    <div class="googleq share"><a href="5_testInvite.jsp" style="color: #374356">Invite for join</a></div>
                </div>
            </div>
        </div>

        <div class="test" style="margin-left:400px; margin-top:80px;height:90px;">

            <font color='Black'><h1>List of Networks</h1>
            <br>
            <br>
            <form action="7_NetworkSetting.jsp" method="post" >
                <h3 style="font-weight: bold">Select Network</h3><br>
                <br>
                <br>
                <%

                    try {

                        String userid = (String) session.getAttribute("user_id");

                        Class.forName("com.mysql.jdbc.Driver");
              //String s=request.getParameter("username");
                        String sql = "select * from networks_master where user_id = ?";
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

                        PreparedStatement ps = con.prepareStatement(sql);
                        ps.setString(1, userid);
                        ResultSet rs = ps.executeQuery();
                %>
                <select name="nw_name" required="required" style= " font-size: 15px; margin-left:-280px; margin-top:-175px;height:38px; width: 200px;" >
                    <option value="">Select</option> 
                    <%
                        while (rs.next()) {
                    %>
                    <option><%=rs.getString("network_name")%></option>
                    <%
                        }
                    %>

                </select>
                <br>
                <%
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                %> 


                <br>
                <div class="u-form-group1">
                    <button id ="btnprofile">Go To Setting</button>
                </div>
            </form>
        </div>
        <div class="chat-sidebar"><div id="chatnamebox" class="chat-sidebar"></div>

        </div>

        <div class="header10"></div>

        <script src="js/upload-image.js" type="text/javascript"></script>

    </body>
</html>