
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
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
            <div id="profilearea" class="header1"><img src="img\prof.png" id="profpic"/></div>
            <div id="profilearea1" class="header1"><a href="#"style="color: #ffffff"><%=session.getAttribute("user_name")%></a></div>
            <div id="profilearea2" class="header1">|</div>
            <div id="setting" class="header1"><a href="8_editProfile.jsp"><img src="img\set.png"height="30"/></a></div>
            <div id="logout" class="header1"><a href="logout.jsp" ><img src="img\lo.png"height="30"/></a></div>
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
                    <div class="twitter share"><a href="11_JoinedNetworklist.jsp" style="color: #374356">Joined Network</a></div>
                    <div class="google share"><a href="8_editProfile.jsp" style="color: #374356">Edit Profile</a></div>

                </div>
                <div class="container4">
                    <div class="facebook share"> <a href="2_CreateNetworkPage.jsp" style="color: #374356">Create a Network</a></div>
                    <div class="twitterq share"><a href="5_testInvite.jsp" style="color: #374356">Invite</a></div>
                </div>
                <div class="container5">

                    <div class="googleq share"><a href="#" style="color: #374356"></a></div>
                </div>
            </div>
        </div>





        <style>
            .card {
                margin-left: 350px;
                margin-top: 10px;
                transition: 0.3s;
                width: 550px;
                height:auto;
                border-radius: 8px;
                border: solid 2px;
            }


            img {
                border-radius: 5px 5px 0 0;
            }

            .container6 {
                padding: 2px 16px;

            }

            .chip {
                display: inline-block;
                padding: 5px 25px;
                height: 50px;
                font-size: 16px;
                line-height: 50px;
                border-radius: 25px;
                margin:5px;
                
            }

            .chip img {
                float: left;
                margin: 0 10px 0 -25px;
                height: 50px;
                width: 50px;
                border-radius: 50%;
            }


        </style>


        <h2 style="margin-left:350px; margin-top: 50px;">Network Details (<%=request.getParameter("nw_name")%>)</h2>

        <div class="card">
            <%

                try {

                    String userid = (String) session.getAttribute("user_id");
                    String nw_name
                            = request.getParameter("nw_name");

                    Class.forName("com.mysql.jdbc.Driver");

                    String sql = "select * from networks_master where network_name = ?";
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

                    PreparedStatement ps = con.prepareStatement(sql);
                    ps.setString(1, nw_name);
                    ResultSet rs = ps.executeQuery();
                    rs.next();
                    {
                    Path p = Paths.get(rs.getString("filepath"));
                    String filepath1 = p.getFileName().toString();

            %>  
            <img src="./images/<%=filepath1%>" alt="Avatar" style="width:550px; margin-left: 0px; border-radius: 5px 5px 0 0;">
          <%    } con.close();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            %> 
            <div class="container6">
                <h2><b>Admin</b></h2>
                <%   try {

                        String userid = (String) session.getAttribute("user_id");
                        String nw_name
                                = request.getParameter("nw_name");

                        Class.forName("com.mysql.jdbc.Driver");

                        String sql = "select networkadmins_master.user_id,users_master.user_name,users_master.url_img "
                                + "From networkadmins_master INNER JOIN users_master ON networkadmins_master.user_id=users_master.user_id WHERE networkadmins_master.network_name=?";
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

                        PreparedStatement ps = con.prepareStatement(sql);
                        ps.setString(1, nw_name);
                        ResultSet rs = ps.executeQuery();
                        while (rs.next()) {

                            Path p = Paths.get(rs.getString("url_img"));
                            String filepath2 = p.getFileName().toString();
                            String admin_name = rs.getString("user_name");
                %>
                <div class="chip">

                    <img src="./images/<%=filepath2%>" alt="Person" width="96" height="96">
                    <%=admin_name%>
                </div>
                <%     } con.close();
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                %> 
                
                <h2><b>Users</b></h2>
                <%   try {

                        String userid = (String) session.getAttribute("user_id");
                        String nw_name
                                = request.getParameter("nw_name");

                        Class.forName("com.mysql.jdbc.Driver");

                        String sql = "select networkmembers_master.user_id,users_master.user_name,users_master.url_img From networkmembers_master INNER JOIN users_master ON networkmembers_master.user_id=users_master.user_id WHERE networkmembers_master.network_name=?";
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

                        PreparedStatement ps = con.prepareStatement(sql);
                        ps.setString(1, nw_name);
                        ResultSet rs = ps.executeQuery();
                        while (rs.next()) {

                            Path p = Paths.get(rs.getString("url_img"));
                            String filepath2 = p.getFileName().toString();
                            String user_name = rs.getString("user_name");
                %>
                <div class="chip">
                    <img src="./images/<%=filepath2%>" alt="Person" width="96" height="96">
                    <%=user_name%>
                </div>
                <%     } con.close();
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                %> 
               <a href="13_DeleteMember.jsp"><h3 align=center style="color:red; font-weight: bold">Delete Member</h3></a>
            </div>
        </div>





        <div class="chat-sidebar"><div id="chatnamebox" class="chat-sidebar"></div>

        </div>

        <div class="header10"></div>

        <script src="js/upload-image.js" type="text/javascript"></script>

    </body>
</html>