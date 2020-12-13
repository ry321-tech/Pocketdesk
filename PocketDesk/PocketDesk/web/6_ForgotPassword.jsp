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
</head>
<body>

<div class="container">
 

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Forgot Password</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
            <form role="form" action="SendP_ResetRequest.jsp" method="post">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="email" class="form-control" id="usrname" placeholder="Enter email" name="user_id" required>
            </div>
            
            
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-envelope"></span> Send Request</button>
              <br>
              <p>You Will Receive an Email</p>
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

</body>
</html>
