<?php
    include "login.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<?php
    require 'config.php';
    include('header.php');
?>
    <div class="form">
        <h1>Log In </h1>
        <br>
        <br>
        <form action="login.php" method="post" name="login">
            <label>Username</label>

            <input type="text" name="username" placeholder="Enter your username" required />
            <br>
            <label>Enter your password</label>
            <br>
            <input type="password" name="password" placeholder="Enter your password" required />
            <br>
            <!--<?php echo $error_messa; ?>-->
            <br><br>
            <input name="Login" type="submit" name="login" />
        </form>
        <br>
       <!-- <p>Don't have account Register?<a href="register.php">Register</p>-->
    </div>
</body>



</body>
</html>