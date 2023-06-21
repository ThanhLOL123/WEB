
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="shortcut icon" type="x-1con" href="../image/logo.png">
    <link rel="stylesheet" href="../css/sign1.css">
</head>
<body>
    <div class="main">
        <div class="signup-box">
            <h1>Register </h1>
            <h4>Please fill in your information</h4>
            <form id="register" action = "signin" method ="post">
                <label for = "first_name">First name</label>
                <input type="text" placeholder="" id ="first_name" name = "first_name" onblur="checkFname();">
                <span class="txt_red" style="red" id="error_fname"></span>

                <label for = "last_name">Last name</label>
                <input type="text" placeholder="" id="last_name" name = "last_name" onblur="checkLname();">
                <span class="txt_red" style="red" id="error_lname"></span>

                <label for = "age">Age</label>
                <input type="text" placeholder="" id ="age" name = "age" onblur="checkAge();">
                <span class="txt_red" style="red" id="error_age"></span>

                <label for ="email">Email</label>
                <input type="text" placeholder="" id ="email" name = "email" onblur="checkEmail();">
                <span class="txt_red" style="red" id="error_email"></span>

                <label for = "phone">Phone number</label>
                <input type="text" placeholder="" id ="phone" name = "phone" onblur="checkPhone();">
                <span class="txt_red" style="red" id="error_phone"></span>

                <label for = "target">Your target</label>
                <input type="text" placeholder="" id ="target" name ="target" onblur="checkTarget();">
                <span class="txt_red" style="red" id="error_target"></span>

                <input type="submit" value="Submit" onclick="send(event);">
            </form>
        </div>
    </div>
    <script>
        function checkFname(){
            var fname = document.getElementById("first_name").value;
            var check_error_fname = document.getElementById("error_fname");
            var regexFname = /^[\p{L}\s]+$/u;
            if (fname == "" || fname == null) {
                check_error_fname.innerHTML = "First name cannot be blank";
            } else if (!regexFname.test(fname)) {
                check_error_fname.innerHTML = "First name is invalid";
            } else {
            check_error_fname.innerHTML = "";
                return fname;
        }
        }
        
        function checkLname(){
            var lname = document.getElementById("last_name").value;
            var check_error_lname = document.getElementById("error_lname");
            var regexLname = /^[\p{L}\s]+$/u;
            if (lname == "" || lname == null) {
                check_error_lname.innerHTML = "Last name cannot be blank";
            } else if (!regexLname.test(lname)) {
                check_error_lname.innerHTML = "Last name is invalid";
            } else {
            check_error_lname.innerHTML = "";
                return lname;
        }
        }
        
        function checkAge(){
            var age = document.getElementById("age").value;
            var check_error_age = document.getElementById("error_age");
            var regexAge = /^\d{1,2}$/;
            if (age == "") {
                check_error_age.innerHTML = "Age cannot be blank";
            } else if (!regexAge.test(age)) {
                check_error_age.innerHTML = "Age is invalid";
            } else {
                check_error_age.innerHTML = "";
                return age;
            }
        }

        function checkEmail(){
            var email = document.getElementById("email").value;
            var check_error_email = document.getElementById("error_email");
            var regexEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            if (email == "") {
                check_error_email.innerHTML = "Email cannot be blank";
            } else if (!regexEmail.test(email)) {
                check_error_email.innerHTML = "Email is invalid";
            } else {
                check_error_email.innerHTML = "";
                return email;
            }
        } 
        function checkPhone(){
            var phone = document.getElementById("phone").value;
            var check_error_phone = document.getElementById("error_phone");
            var regexPhone = /^0\d{9,10}$/g;
            if (phone == "") {
                check_error_phone.innerHTML = "Phone Number cannot be blank";
            } else if (!regexPhone.test(phone)) {
                check_error_phone.innerHTML = "Phone Number is invalid";
            } else {
                check_error_phone.innerHTML = "";
                return phone;
            }
        }
        
        function checkTarget(){
            var target = document.getElementById("target").value;
            var check_error_target = document.getElementById("error_target");
            if (target == "" || target == null) {
                check_error_target.innerHTML = "Your target cannot be blank";
            } else {
                check_error_target.innerHTML = "";
                return target;
            }
        }
      
        
         
         function send(event) {
            event.preventDefault();
             if (checkFname() && checkLname() &&checkPhone() && checkAge() && checkEmail() && checkTarget()) {
             document.getElementById("register").submit(); 
             document.getElementById("form").submit();         
             }
         }
    </script>

</body>
</html>