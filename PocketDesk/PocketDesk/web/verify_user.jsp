<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    String user_id = 
            request.getParameter("user_id");
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
            
    Connection con = DriverManager.getConnection
("jdbc:mysql://localhost:3306/pocketdesk"
            ,"root","root");
    
    PreparedStatement pst = 
con.prepareStatement("update users_master"
+ " set verified = true where user_id = ?");
    
    pst.setString(1,user_id);
    
    int count = pst.executeUpdate();
    
    if(count > 0)
out.print("<script>alert('User Verified , You can login now !!!!')"
        + "</script>");
    
    con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
%>    

<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">

  <title>Login</title>
  <link rel="icon" href="img/logo.png">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link href="css/css_index.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="style.css"><link href="css/css_index.css" rel="stylesheet" type="text/css"/>
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
                                    
                                    <li><a href="AboutUs.html">About Us & Contact</a></li>
                                    
                                    
                              </ul>
                        </div>
                  </nav>

            </header>
	<div class="login-box">
    <div class="lb-header">
      <a href="#" class="active" id="login-box-link">Login</a>
      <a href="#" id="signup-box-link">Sign Up</a>
    </div>
    <div class="social-login">
      <a href="fblogin.jsp" style="left:120px; background-color:#3B5998">
        <i class="fa fa-facebook fa-lg"></i>
        Login in with facebook
      </a>
      
    </div>
    <form class="email-login" action="DecideLogin.jsp" method="post">
      <div class="u-form-group">
        <input type="email" required placeholder="Email" name="Email"/>
      </div>
      <div class="u-form-group">
        <input type="password" placeholder="Password" required name="Password"/>
      </div>
      <div class="u-form-group">
        <button type="submit">Log in</button>
      </div>
      <div class="u-form-group">
        <a href="6_ForgotPassword.jsp" class="forgot-password">Forgot password?</a>
      </div>
    </form>
    <form class="email-signup" action="DecideReg.jsp" method="post">
     
	  <div class="u-form-group">
        <input type="email" placeholder="Enter Your Email" required name="Email"/>
      </div>
	  <div class="u-form-group">
        <input type="uname" placeholder="Enter your name" required name="user_name" />
      </div>
      <div class="u-form-group">
        <input type="password" id="password"placeholder="Password" required name="password"/>
      </div>
      <div class="u-form-group">
        <input type="password" id="confirm_password" placeholder="Confirm Password" required />
      </div>
        <select required class="u-form-group"  name="Gender" style="width:250px; height:35px; 
         border: 1px solid #ddd; color: #333;font-size:0.8rem;-webkit-transition:all 0.1s linear;
         -moz-transition:all 0.1s linear;transition:all 0.1s linear;">
    <option value="">Select</option>            
    <option value="Male">Male</option>
    <option value="Female">Female</option>
    </select> 
      <div class="u-form-group">
        <input type="contact_no" name="mble" required 
               placeholder="Mobile No." maxlength="10" data-validation="number" 
    data-validation-allowing="negative,number" input name="color" class="form-control"
    data-validation="number" datavalidation-ignore="$" minlength="10" pattern="\d*" />
    </div>
     
        <div class="u-form-group">
            <button>Sign Up</button>
        </div>
    </form>
  </div>
  </div>  
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

