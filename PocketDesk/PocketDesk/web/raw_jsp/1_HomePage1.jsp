
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">  
<link type="text/css" rel="stylesheet" href="css/ust.css"/>
<link rel="stylesheet" href="css/homepage_style.css">

</head>
<body>
    

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">


<div class="header1">
<div class="header1">
<div id="img3" class="header1"><img src="img/logo.png" id="img3" /></div>
<div id="profilearea5" class="header1"><a href="1_HomePage.jsp"style="color: #ffffff"> Home</a></div>
<div id="profilearea" class="header1"><a><img src="img\prof.png"id="profpic" /></a></div>
<div id="profilearea1" class="header1"><a style="color: #ffffff">Profile</a></div>
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

      <div class="facebook share"> <a href="index.html" style="color: #374356">Created Network</a></div>
      <div class="twitter share"><a href="index.html" style="color: #374356">Joined Network</a></div>
      <div class="google share"><a href="3_UpdateProfile.jsp" style="color: #374356">Edit Profile</a></div>
    </div>
    <div class="container4">
      <div class="facebook share"><a href="2_CreateNetworkPage.jsp" style="color: #374356">Create a Network</a></div>
      <div class="twitterq share"><a href="index.html" style="color: #374356">Delete Network</a></div>
    </div>
    <div class="container5">
      <div class="googleq share"><a href="5_testInvite.jsp" style="color: #374356">Invite for join</a></div>
    </div>
  </div>
</div>

<div class="post00">
</div>
<div class="post10">
</div><div class="post20">
</div><div class="post30">
</div><div class="post40">
</div><div class="post50">
</div>
<div class="header0001">
</div>



<div class="post">
<div id="column-1" class="post">update status | add photos/videos | create photo album<hr><br><br><br><br><br><br><hr></div>
<div id="postpos" class="post"><input type="submit" id="buttonpost" value="post"/></div>
<div id="postboxpos" class="post"><textarea placeholder="What's in your mind" id="postbox" type="text"></textarea></div>

</div>

<div class="post1"><img src="img\prof.png"id="profpic"/><br><br><img src="img/wall.jpg" height="411" width="580"/><br><br><p6>Like  Comment  Share</p6><br><hr><p1>Amit Deb</p1><p2> and</p2><p1> 5 others</p1><p2> like this</p2>
<div id="post2text" class="post1"><p3>Rani Mukharji </p3><p2>with </p2><p1> Arup Pegu</p1><p2> and</p2><p1> 15 others.</p1><br><p4>4 hrs.</p4></div>
<div id="commentprof2" class="post1"><img src="img\prof.png"id="profpic"/></div>
<div id="commentboxpos2" class="post1"><input type="textarea" placeholder="comment" id="commentbox"/></div>
</div>

<div  class="post2"><img src="img\prof.png"id="profpic"/><br><br><img src="img\wall.jpg" height="411" width="580"/><br><br><p6>Like  Comment  Share</p6><br><hr><p1>Amit Deb</p1><p2> and</p2><p1> 5 others</p1><p2> like this</p2>
<div id="post2text" class="post2"><p3>Rani Mukharji </p3><p2>with </p2><p1> Arup Pegu</p1><p2> and</p2><p1> 15 others.</p1><br><p4>4 hrs.</p4></div>
<div id="commentprof2" class="post2"><img src="img\prof.png"id="profpic"/></div>
<div id="commentboxpos2" class="post2"><input type="textarea" placeholder="comment" id="commentbox"/></div>
</div>

<div class="post3"><img src="img\prof.png"id="profpic"/><br><br><img src="img\wall.jpg" height="411" width="580"/><br><br><p6>Like  Comment  Share</p6><br><hr><p1>Amit Deb</p1><p2> and</p2><p1> 5 others</p1><p2> like this</p2>
<div id="post2text" class="post2"><p3>Rani Mukharji </p3><p2>with </p2><p1> Arup Pegu</p1><p2> and</p2><p1> 15 others.</p1><br><p4>4 hrs.</p4></div>
<div id="commentprof2" class="post2"><img src="img\prof.png"id="profpic"/></div>
<div id="commentboxpos2" class="post2"><input type="textarea" placeholder="comment" id="commentbox"/></div>
</div>

<div class="post4"><img src="img\prof.png"id="profpic"/><br><br><img src="img\wall.jpg" height="411" width="580"/><br><br><p6>Like  Comment  Share</p6><br><hr><p1>Amit Deb</p1><p2> and</p2><p1> 5 others</p1><p2> like this</p2>
<div id="post2text" class="post2"><p3>Rani Mukharji </p3><p2>with </p2><p1> Arup Pegu</p1><p2> and</p2><p1> 15 others.</p1><br><p4>4 hrs.</p4></div>
<div id="commentprof2" class="post2"><img src="img\prof.png"id="profpic"/></div>
<div id="commentboxpos2" class="post2"><input type="textarea" placeholder="comment" id="commentbox"/></div>
</div>

<div class="post5"><img src="img\prof.png"id="profpic"/><br><br><img src="img\wall.jpg" height="411" width="580"/><br><br><p6>Like  Comment  Share</p6><br><hr><p1>Amit Deb</p1><p2> and</p2><p1> 5 others</p1><p2> like this</p2>
<div id="post2text" class="post2"><p3>Rani Mukharji </p3><p2>with </p2><p1> Arup Pegu</p1><p2> and</p2><p1> 15 others.</p1><br><p4>4 hrs.</p4></div>
<div id="commentprof2" class="post2"><img src="img\prof.png"id="profpic"/></div>
<div id="commentboxpos2" class="post2"><input type="textarea" placeholder="comment" id="commentbox"/></div>
</div>


<div class="chat-sidebar">


<div class="header10"></div>


</body>
</html>
