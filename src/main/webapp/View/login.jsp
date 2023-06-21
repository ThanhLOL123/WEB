<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="shortcut icon" type="x-1con" href="../image/logo.png">
    <link rel="stylesheet" href="../css/sign1.css ">
    <script type="text/javascript">
    history.pushState(null, null, location.href);
    window.onpopstate = function () {
        history.go(1);
    };
    </script>
</head>
<body>
    <div class="main">
    <div class="login-box">
            <h1>Login</h1>
           <p style="color:red" > <%=request.getAttribute("msg")!= null ? request.getAttribute("msg") :"" %> </p>
            <form action = "login_form" method = "post">
                <label for ="User">Account name</label>
                <input type="text" placeholder="" id = "User" name ="User" value = "${User}" >
                <label for = "password">Password</label>
                <input type="password" placeholder="" id ="password" name = "password" value="${password}">
                <input type="submit" value="Submit">
            <p>Only company staffs allowed to login</p>
            </form>
        </div>
        
    </div>
</body>

</html>