
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<link type="text/css" rel="stylesheet" href="css/ustmaster.css" />
<link rel="stylesheet" href="css/homepage_style.css">
<link rel="stylesheet" href="css/network_creation.css">
</head>
<body>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">

<div class="header1">
<div id="img3" class="header1"><img src="img/logo.png" id="img3" /></div>
<div id="profilearea5" class="header1">Home<a href="home11.html"></div>
<div id="profilearea" class="header1"><a href="profile.php"><img src="img\prof.png"id="profpic" /></a></div>
<div id="profilearea1" class="header1"><a href="profile.php"style="color: #ffffff">Profile</a></div>
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
      <img src="img/profile.jpg" alt="">
      <h2>Johnny Depp</h2>
      <span>American actor</span>
      <p>Johnny Depp is an American actor</p>
    </div>
    <div class="container3">

      <div class="facebook share"> <a href="index.html" style="color: #374356">Created Network</a></div>
      <div class="twitter share"><a href="index.html" style="color: #374356">Joined Network</a></div>
      <div class="google share"><a href="index.html" style="color: #374356">Edit Profile</a></div>
    </div>
	
    <div class="container4">
      <div class="facebook share"> <a href="create.jsp" style="color: #374356">Create a Network</a></div>
      <div class="twitterq share"><a href="index.html" style="color: #374356">Delete Network</a></div>
    </div>
    <div class="container5">
          <div class="googleq share"><a href="index.html" style="color: #374356">Invite for join</a></div>
    </div>
  </div>
</div>

<div class="test" style="margin-left:400px; margin-top:100px;height:35px;">
 
 <font color='Black' ><h1> <i> Create  Network </i></h1><br>
 <br>
      <form class="create_network" action="Fileupload.jsp" method="post" enctype="multipart/form-data">
      <div class="u-form-group1">
        <input type="network_name" placeholder="Network Name"name="network_name" required/>
      </div>
      <div class="u-form-group1">
        <input type="email" placeholder="Enter email id whom to invite name="Email"/>
      </div>
	  <br>
	  <br>
	  <div class="u-form-group1">
     <font color='Blaack'> Photo  <input type="file"  name="image" multiple>
      </div>
	  
      <div class="u-form-group1">
        <button style="margin-left:15%;">Create</button>
      </div>
    </form>
</div>


<div class="chat-sidebar"><div id="chatnamebox" class="chat-sidebar">jb</div>

</div>

<div class="header10"></div>

</body>
</html>