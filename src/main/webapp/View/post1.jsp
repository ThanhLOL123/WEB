
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atena Center Employee</title>
    <link rel="stylesheet" href="../css/employee2.css">
    <link rel="shortcut icon" type="x-1con" href="../image/logo.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    
</head>
<body>

    <div class="hero">
        <nav>
            <div class="heading"  > 
                <img src="../image/logo.png" class="logo">
                <p>Atena Center</p>
            </div> 
            <img src="../image/admin.png" class="user-pic" onclick="toggleMenu()">

            <div class="sub-menu-wrap" id="submenu">
                <div class="sub-menu">
                   
                    <hr>

                    <a href="logout" class="sub-menu-link">
                        <i class="fa-solid fa-right-from-bracket" ></i>
                        <p>Log Out</p>
                        <span>></span>
                    </a>
                </div>
            </div>
        </nav>

        <div class="board">
            <table width="100%">
                <thead>
                    <tr>
                        <td>Name</td>
                        <td>Age</td>
                        <td>Telephone</td>
                        <td>Goals</td>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${listUser}" var="item">
                
                    <tr>
                        <td class="people">
                            <div class="people-de">
                                <h5>${item.first_name} ${item.last_name}</h5>
                                <p>${item.email}</p>
                            </div>
                        </td>        

                        <td class="people-des">
                            <h5>${item.age}</h5>
                        </td>

                        <td class="telephone">
                            <h5>${item.phone}</h5>
                        </td>

                        <td class="Goals">
                            <h5>${item.target}</h5>
                        </td>

                        
                    </tr>
	</c:forEach>
                </tbody>
            </table>
        </div>

    </div>

        <script>
            let submenu = document.getElementById("submenu");

            function toggleMenu(){
                submenu.classList.toggle("open-menu");
            }
        </script>

</body>
</html>