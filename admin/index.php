<?php
session_start();
include "../user/connection.php"
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin Login</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css"/>
    <link rel="stylesheet" href="css/matrix-login.css"/>
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

</head>
<body style="background-image: url('../asserts/five.jpg');>
<div id="loginbox">
    <form name="form1" action="" method="post">
        <div class="control-group normal_text" style="color:white;text-align:center;font-family:Cursive;"><h2>Admin Login</h2></div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span><i class="icon-user"> </i></span>
                    <div style="text-align:center; margin-top:30px;border-radius: 15px 50px 30px 5px;">
                    <input style="border-radius: 15px;width:400px ;height:40px;" type="text" size="500" placeholder="Username" name="username" required/>
                                                                                       </div>
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span ><i class="icon-lock"></i></span>
                    <div style="text-align:center;">
                    <input style="border-radius: 15px;width:400px ;height:40px;"type="password"
                                                                                      placeholder="Password" name="password" required/>
                </div> 
                </div>
            </div>
        </div>
        <div >
            <center>
            <input style="border-radius: 15px;width:200px ;height:40px; margin-top:30px;" type="submit" name="submit1" value="Login" href="index.html" class="btn btn-success "/></center>
        </div>
    </form>
<?php
if(isset($_POST["submit1"]))
{
    $username=mysqli_real_escape_string($link,$_POST["username"]);
    $password=mysqli_real_escape_string($link,$_POST["password"]);
    $count=0;
    $res=mysqli_query($link,"select * from user_registration where username='$username' && role='admin' && status='active' && password='$password'");
    $count=mysqli_num_rows($res);
    if($count>0)
    {
        $_SESSION["admin"]=$username;
        ?>
        <script type="text/javascript">
            window.location="dashboard.php";
        </script>
        <?php
    }
    else
    {
        ?>
        <div class="alert alert-danger">
         Invalid username or password.
        </div>
        <?php
    }
}
?>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/matrix.login.js"></script>
</body>

</html>
