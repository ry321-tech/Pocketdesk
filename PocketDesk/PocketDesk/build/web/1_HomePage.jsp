
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%
    String user_id = (String) session.getAttribute("user_id");
    if (user_id == null) {
        response.sendRedirect("InvalidRequestAlert.jsp");
    }
%>
<html>
    <head>

        <link type="text/css" rel="stylesheet" href="css/ust.css"/>
        <link rel="stylesheet" href="css/homepage_style.css">
        <script type="text/javascript">

            function noBack()
            {
                window.history.forward();
            }
        </script>
    </head>
    <body onLoad="noBack();" onpageshow="if(event.presisted) noBack();" onunload="">


        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">


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

        <div class="post00">
        </div>

        <div class="header0001">
        </div>



        <div class="post">
            
            <form action="Upload_Post.jsp" method="post">
            <div id="column-1">
                <h5>Select Network</h5> <br><hr><br><br><br><br><br><br><hr><br></div>
                
<%

                    try {

                        String userid = (String) session.getAttribute("user_id");

                        Class.forName("com.mysql.jdbc.Driver");
              //String s=request.getParameter("username");
                        String sql = "select * from networkmembers_master where user_id = ?";
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

                        PreparedStatement ps = con.prepareStatement(sql);
                        ps.setString(1, userid);
                        ResultSet rs = ps.executeQuery();
                %>
            <select name="nw_name" required="required" style= " font-size: 15px; margin-left:-525px; margin-top:-375px;height:39px; width: 200px">
                <option value="">Select</option>
                <%
                        while (rs.next()) {
                    %>
                    <option><%=rs.getString("network_name")%></option>
                    <%
                        }
                    %>
            </select>
             <%     con.close();
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                    
                %> 
            <br>
            <div id="postpos" class="post"><button style="width:100px;
                                                   margin-left:225%;
                                                   background-color: black;
                                                   border: none;
                                                   outline: none;
                                                   color: white;
                                                   font-size: 14px;
                                                   font-weight: normal;
                                                   padding: 9px 1px;
                                                   border-radius: 5px;
                                                   text-transform: uppercase;">Post</button></div>
            <div id="postboxpos" class="post">
                 
                    <textarea type="postbox" required name="post_content" placeholder="What's in your mind" id="postbox" maxlength="300" ></textarea>
                    <h6 style="color:orchid"><br>(Text limit 300 letter)</h6>    
            </div>
           
            </form>
            <div style="margin-left: 2px; margin-top: -9px;background-color: white; width:817px; font-weight: bold">
            <h2 >Your post in all networks</h2></div>
          

            
            <style>
                    #postdisplay {
                        width: 800px;
                        height:0px;
                        padding: 0px;

                        margin-top: 0.5%;
                    }
                    .postdisplay2 {
                            width: 800px;
                            height:110%;
                            background-color: white;
                            padding: 10px;
                            border: 1px solid gray;
                            margin-bottom: 5px;
                        }
                        
                         .postdisplay4 {
                            width: 70%;
                            height:40%;
                            background-color: white;
                            color:#2E4880;
                            padding: 10px;
                            border: 1px solid gray;
                            margin-left: 15%;
                        }
                        
                        .test {
                            border-radius: 50%;
                            height:120px;
                            width:120px;
                            margin-top:5px; 
                            margin-left:-5px;
                            margin-bottom: -90px;

                        }
                        
                        .b1{
                        background-color: #008CBA; /* Green */
                        border: none;
                        color: white;
                        border-radius: 20px;
                        padding: 10px 32px;
                        text-align: center;
                        text-decoration: none;
                        display: inline-block;
                        font-size: 16px;
                        margin: 4px 2px;
                        cursor: pointer;
                    }

   </style>
               
                    <div id="postdisplay">
                    </div>
                  

                    
       <!--post display --> 
       <%   try {

                        String userid = (String) session.getAttribute("user_id");
                        
                       // String nw_name
                               // = request.getParameter("nw_name");

                        Class.forName("com.mysql.jdbc.Driver");

                        String sql = "select posts_master.user_id, posts_master.network_name, posts_master.post_date, posts_master.post_content, users_master.user_name,users_master.url_img From posts_master INNER JOIN users_master ON posts_master.user_id=users_master.user_id WHERE posts_master.user_id = ? ORDER BY posts_master.post_date DESC ";
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pocketdesk", "root", "root");

                        PreparedStatement ps = con.prepareStatement(sql);
                        ps.setString(1, userid);
                        ResultSet rs = ps.executeQuery();
                        while (rs.next()) {
                            String network_name1 = rs.getString("network_name");            
                            Path p = Paths.get(rs.getString("url_img"));
                            String img = p.getFileName().toString();
                            String user_name = rs.getString("user_name");
                            String post_content=rs.getString("post_content");
                            String post_date=rs.getString("post_date");
                %><div class="postdisplay2">
                    <h2> <%=user_name%> (<%=network_name1%>)</h2>
                    <h4 style="float:right;margin-top:-15px"> <%=post_date%></h4>

                        <img  class="test" src="./images/<%=img%>" alt="Avatar" >

                        <div class="postdisplay4">
                            <h4>
                                <%=post_content%>
                            </h4>
                        </div>
                        <!--<button  class="b1">Like</button>-->
                        
                    </div>
                    <%     }
                        con.close();
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                %> 
 </div>
        <div class="header10"></div>


    </body>
</html>
