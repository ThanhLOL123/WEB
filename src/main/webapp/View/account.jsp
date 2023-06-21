<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="x-1con" href="image/logo.png">
    <title>Atena Center Admin</title>
    <link rel="stylesheet" href="../css/account.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>
    <section id="menu">
        <div class="logo">
            <img src="../image/logo.png" alt="">
            <h2>Atena center</h2>
        </div>
        
        <div class="items">
         <li><i class="fa-solid fa-chart-simple"></i></i><a href="postU">Queue</a></li>
            <li><i class="fa-solid fa-rocket"></i><a href="postE">Employee</a></li>
            <li><i class="fa-solid fa-screwdriver-wrench"></i><a href="../View/account.jsp">Create account</a></li>
        </div>
    </section>

    <section id="interface">
        <div class="navigation">
            <div class="n1">
                <div>
                    <i id="menu-btn" class="fas fa-bars"></i>
                </div>
            </div>
          
            
            <div class="profile">
                <div class="profile-pic">
                    <img src="../image/admin.png" id="subphoto" width = 100 height = 100 alt="" onclick="toggleMenu()">
                </div>
            </div>

            <div class="sub-menu-wrap" id="submenu">
                <div class="sub-menu">
                    <div class="user-info">
                        
                        
                    </div>
                    <hr>

                    
                    <a href="logout" class="sub-menu-link">
                        <i class="fa-solid fa-right-from-bracket"></i>
                        <p>Log Out</p>
                        <span>></span>
                    </a>
                </div>
            </div>

        </div>
        <div class="account">
            <div class="container">
                <div class="title">Create Account</div>
                <div class="content">
             <p style="color:red; padding: 5px" > <%=request.getAttribute("msg")!= null ? request.getAttribute("msg") :"" %> </p>
                  <form id="form" action="signFE_form" method="post"> 
                    <div class="user-details">
                        <div class="input-box">
                            <label for ="Name" class="details">Full Name <span class = "txt_red">(*)</span></label>
                            <input type="text" placeholder="Enter your name" id = "Name" name ="Name" onblur="checkName();">
                            <span class="txt_red" id="error_name"></span>
                        </div>
                        <div class="input-box">
                            <label for ="Phone" class="details">Phone Number <span class = "txt_red">(*)</span></label>
                            <input type="text" placeholder="Enter your phone number" id = "Phone" name ="Phone" onblur="checkPhone();">
                            <span class="txt_red" id="error_phone"></span>
                        </div>
                        <div class="input-box">
                            <label for ="Age" class="details">Age <span class = "txt_red">(*)</span></label>
                            <input type="text" placeholder="Enter your age" id = "Age" name ="Age" onblur="checkAge();">
                            <span class="txt_red" id="error_age"></span>
                        </div>
                        <div class="input-box">
                            <label for ="CCCD" class="details">Citizen Identity Card <span class = "txt_red">(*)</span></label>
                            <input type="text" placeholder="Enter your CID" id = "CCCD" name ="CCCD" onblur="checkCCCD();">
                            <span class="txt_red" id="error_cccd"></span>
                        </div>
                        <div class="input-box">
                            <label for ="User" class="details">Username <span class = "txt_red">(*)</span></label>
                            <input type="text" placeholder="Enter your username" id = "User" name ="User" onblur="checkUser();">
                            <span class="txt_red" id="error_user"></span>
                        </div>
                        <div class="input-box">
                            <label for = "password" class="details">Password <span class = "txt_red">(*)</span></label>
                            <input type="password" placeholder="Enter your password" id ="password" name = "password" onblur="checkPass();">
                            <span class="txt_red" id="error_pass"></span>
                        </div>
                        <div class="gender-box">
                            <label for ="gender" class="details">Gender<span class = "txt_red">(*)</span></label>
                            <div class="gender-category" id="gender">
                                <input checked="checked" type="radio" name="gender" id="male" value = "Male">
                                <label for="gender">Male</label>
                                <input type="radio" name="gender" id="female" value = "Female">
                                <label for="gender">Female</label>
                            </div>
                        </div>
                        <div class="input-box">
                            <label for = "Confirm_password" class="details">Confirm Password <span class = "txt_red">(*)</span></label>
                            <input type="password" placeholder="Confirm your password" id ="Confirm_password" name = "Confirm_password" onblur="checkCon_pass();">
                            <span class="txt_red" id="error_con_pass"></span>
                        </div>
                    </div>
                    <div class="button"  onclick="create(event);">
                        <input type="submit" value="Submit">
                    </div>
                  </form>
                </div>
            </div>
        </div>
    </section>
 
	<c:if test="${sessionScope.check == true }"><script>
	Swal.fire('Congrats!','Account Successfully Created!','success');
	
  
    </script> </c:if>
    <%
	session.setAttribute("check", false);
	%>
    <script>
        $('#menu-btn').click(function(){
            $('#menu').toggleClass("active");
        })
    </script> 

    <script>
        let submenu = document.getElementById("submenu");

        function toggleMenu(){
            submenu.classList.toggle("open-menu");
        }
    </script>
 
    <script>
        const form = document.getElementById('form');
        form.addEventListener('submit', e => {
        });

        
        function checkName(){
            var name = document.getElementById("Name").value;
            var check_error_name = document.getElementById("error_name");
            var regexName = /^[\p{L}\s]+$/u;
            if (name == "" || name == null) {
                check_error_name.innerHTML = "Full Name cannot be blank";
            } else if (!regexName.test(name)) {
                check_error_name.innerHTML = "Full Name is invalid";
            } else {
                check_error_name.innerHTML = "";
                return name;
            }
        }
        
        function checkPhone(){
            var phone = document.getElementById("Phone").value;
            var check_error_phone = document.getElementById("error_phone");
            var regexPhone =/^0\d{9,10}$/g;
            if (phone == "") {
                check_error_phone.innerHTML = "Phone Number cannot be blank";
            } else if (!regexPhone.test(phone)) {
                check_error_phone.innerHTML = "Phone Number is invalid";
            } else {
                check_error_phone.innerHTML = "";
                return phone;
            }
        }
        function checkAge(){
            var age = document.getElementById("Age").value;
            var check_error_age = document.getElementById("error_age");
            var regexAge = /[0-9]{2}/;//tuổi có 2 chữ số
            if (age == "") {
                check_error_age.innerHTML = "Age cannot be blank";
            } else if (!regexAge.test(age)) {
                check_error_age.innerHTML = "Age is invalid";
            } else {
                check_error_age.innerHTML = "";
                return age;
            }
        }

        function checkCCCD(){
            var cccd = document.getElementById("CCCD").value;
            var check_error_cccd = document.getElementById("error_cccd");
            var regexCCCD = /^\d{12}$/g;//CCCD có 12 chữ số
            if (cccd == "") {
                check_error_cccd.innerHTML = "CID cannot be blank";
            } else if (!regexCCCD.test(cccd)) {
                check_error_cccd.innerHTML = "CID is invalid";
            } else {
                check_error_cccd.innerHTML = "";
                return cccd;
            }
        }
        function checkUser(){
            var user = document.getElementById("User").value;
            var check_error_user = document.getElementById("error_user");
            var regexUser = /^[a-z0-9_-]{3,16}$/; //username có thể là chữ cái, số, dấu gạch dưới, gạch nối, có từ 3-16 ký tự
            if (user == "" || user == null) {
                check_error_user.innerHTML = "Username cannot be blank";
            } else if (!regexUser.test(user)) {
                check_error_user.innerHTML = "Username is invalid";
            } else {
                check_error_user.innerHTML = "";
                return user;
            }
        }
        
        function checkPass(){
            var pass = document.getElementById("password").value;
            var check_error_pass = document.getElementById("error_pass");
            var regexPass = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/; //Tối thiểu tám ký tự, ít nhất một chữ cái và một số
            if (pass == "") {
                check_error_pass.innerHTML = "Password cannot be blank";
            } else if (!regexPass.test(pass)) {
                check_error_pass.innerHTML = "Minimum eight characters, at least 1 letter and 1 number";
            } else {
                check_error_pass.innerHTML = "";
                return pass;
            }
        }
        
        function checkCon_pass(){
            var con_pass = document.getElementById("Confirm_password").value;
            var check_error_con_pass = document.getElementById("error_con_pass");
            var regexPass = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/; //Tối thiểu tám ký tự, ít nhất một chữ cái và một số
            var pass = checkPass();

            if (con_pass == "") {
                check_error_con_pass.innerHTML = "Confirm password cannot be blank";
            } else if (!regexPass.test(con_pass)) {
                check_error_con_pass.innerHTML = "Minimum eight characters, at least 1 letter and 1 number";
            } else if (con_pass != pass) {
                check_error_con_pass.innerHTML = "Password does not match!";
            } else {
                check_error_con_pass.innerHTML = "";
                return con_pass;
            }
        }
        function create(event) {
        	event.preventDefault();
            if (checkName() && checkPhone() && checkAge() && checkCCCD() && checkUser() && checkPass() && checkCon_pass() ) {
            
            document.getElementById("form").submit();
           
            } else {
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Please fill out required information!',
                    })
            }

         }
     
    </script>

  
   
    
</body>
</html>