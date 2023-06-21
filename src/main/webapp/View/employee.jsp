<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="x-1con" href="../image/logo.png">
    <title>Atena Center Admin</title>
    <link rel="stylesheet" href="../css/employee.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
                        <i class="fa-solid fa-right-from-bracket" ></i>
                        <p>Log Out</p>
                        <span>></span>
                    </a>
                </div>
            </div>

        </div>
        
        <div class="board"  style="margin: 100px 0 30px 30px" >
            <table width="100%">
                <thead>
                    <tr>
                        <td>Name</td>
                        <td>Phone</td>
                        <td>Age</td>
                        <td>CCCD</td>
                        <td>Taikhoan</td>
                        <td>Sex</td>
                        
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="item">
                    <tr>
                        <td class="people">
                            <div class="people-de">
                                <h5>${item.name}</h5>
                                
                            </div>
                        </td>        

                        <td class="phone">
                            <h5>${item.phone}</h5>
                        </td>

                        <td class="Age">
                            <h5>${item.age}</h5>
                        </td>

                        <td class="cccd">
                            <h5>${item.cccd}</h5>
                        </td>

                        <td class="taikhoan">
                        	<h5>${item.taikhoan}</h5>
                        	
                         <td class="sex">
                        	<h5>${item.sex}</h5>
                        <td class="Delete_info"><a href='#'  onclick="confirmDelete('${item.taikhoan}')">Delete</a></td>
                    </tr>
                    
                     </c:forEach>
                </tbody>
            </table>
        </div>
    </section>

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
    function confirmDelete(taikhoan) {
      Swal.fire({
        title: 'Are you sure?',
        text: "This action cannot be undone!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
      }).then((result) => {
        if (result.isConfirmed) {
          window.location.href = 'deleteE?key=' + taikhoan;
        }
      });
    }
  </script>

</body>
</html>