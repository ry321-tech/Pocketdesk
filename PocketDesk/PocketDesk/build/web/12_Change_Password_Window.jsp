<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  </style>
  <script type="text/javascript">

            function noBack()
            {
                window.history.forward();
            }
        </script>
</head>
<body onLoad="noBack();" onpageshow="if(event.presisted) noBack();" onunload="">

<div class="container">
 

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Change Password</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
            <form role="form" action="Change_PasswordVia_Window.jsp" method="post">
            <div class="form-group">
              <label for="Password"><span class="glyphicon glyphicon-user"></span> New Password</label>
              <input type="password" class="form-control" id="password" placeholder="Enter Your New Password" name="password" required>
              <br>
              <label for="Confirm password"><span class="glyphicon glyphicon-user"></span> Confirm New Password</label>
              <input type="password" class="form-control" id="confirm_password" placeholder="Confirm Your password" required>
            </div>
            
            
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-lock"></span>Change Password</button>
              <br>
              <p></p>
          </form>
        </div>
       
        <div class="modal-footer">
            <button  onclick="location.href = 'index.html' " class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          
        </div>
      </div>
      
    </div>
  </div> 
</div>

<script>
$(document).ready(function(){
   
        $("#myModal").modal();
    });

</script>
<script src="js/confirm.js"></script>
</body>
</html>
