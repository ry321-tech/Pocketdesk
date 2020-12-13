<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">

  <title>Login</title>
  <link rel="icon" href="img/logo.png"">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="css/fontawesome.min.css">
  <link href="css/css_index.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/fontawesome.min.css">
 <link href="css/css_index.css" rel="stylesheet" type="text/css"/>
</head>


<body>
      
   <div class="wrapper">
            <header>

                  <nav>

                        <div class="menu-icon">
                              <i class="fa fa-bars fa-2x"></i>
                        </div>

                        <div class="logo">
                             <img src="img/logo.png" id="img3" /> Pocket Desk
                        </div>

                        <div class="menu">
                              <ul>
                                    <li><a href="index.html">Login Page</a></li>
                                    <li><a href="AboutUs.html">About Us & Contact</a></li>
                              </ul>
                        </div>
                  </nav>

            </header>
       <center>
<h1>Login Page</h1> 
<script>
  // This is called with the results from from FB.getLoginStatus().
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      testAPI();
    } else if (response.status === 'not_authorized') {
      // The person is logged into Facebook, but not your app.
      document.getElementById('status').innerHTML = 'Login with Facebook ';
    } else {
      // The person is not logged into Facebook, so we're not sure if
      // they are logged into this app or not.
      document.getElementById('status').innerHTML = 'Login with Facebook ';
    }
  }
  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }
  window.fbAsyncInit = function() {
  FB.init({ 
    appId      : '1967143483566945',
    cookie     : true,  // enable cookies to allow the server to access 
                        // the session
    xfbml      : true,  // parse social plugins on this page
    version    : 'v2.2' // use version 2.2
  });
  // Now that we've initialized the JavaScript SDK, we call 
  // FB.getLoginStatus().  This function gets the state of the
  // person visiting this page and can return one of three states to
  // the callback you provide.  They can be:
  //
  // 1. Logged into your app ('connected')
  // 2. Logged into Facebook, but not your app ('not_authorized')
  // 3. Not logged into Facebook and can't tell if they are logged into
  //    your app or not.
  //
  // These three cases are handled in the callback function.

  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });
  };
  // Load the SDK asynchronously
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk')); 

  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI() { 
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me?fields=name,email', function(response) {
      console.log('Successful login for: ' + response.name); 
         
      document.getElementById("status").innerHTML = '<p>Welcome '+response.name+'! <a href=fblogincontroller.jsp?user_name='+ response.name.replace(" ", "_") +'&user_email='+ response.email +'>Continue with facebook login</a></p>'
    });
  }  
</script> 
<!--
  Below we include the Login Button social plugin. This button uses
  the JavaScript SDK to present a graphical Login button that triggers
  the FB.login() function when clicked.
-->
<br><br>
<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
</fb:login-button>
<h1>
<div id="status">
</div> 
</h1>
 <script type="text/javascript">
</script>
</center>
       
	 
	<div class="footer">
           <i> All Right reserved &copy 2018</i>
	</div>		

  <script src="js/jquery.min.js"></script>
  <script src="js/index.js"></script>
  <script src="js/confirm.js"></script>

<div class="fullscreen-bg">
    <video loop muted autoplay poster="img/videoframe.jpg" class="fullscreen-bg__video">
        <source src="pro.mp4" type="video/mp4">       
    </video>
</div>

</body>

</html>
