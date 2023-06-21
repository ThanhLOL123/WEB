

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Atena English Center </title>
        <link rel="shortcut icon" type="x-1con" href="../image/logo.png">
        <link rel="stylesheet" href="../css/style.css ">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
</head>
<body>
	<section>
            <div class="banner">
                <div id="navbar" class="navbar">
                    <img src="../image/logo.png" id="logo" class="logo">
                    <nav>
                        <ul id="menuList">
                            <li><a href = "#">Home</a></li>
                            <li><a href = "#information">Information</a></li>
                            <li><a href = "#lectures">Lectures</a></li>
                            <li><a href = "#courses">Courses</a></li>
                            <li><a href = "#feedback">Feedback </a></li>
                            <li><a href = "#about">About </a></li>                       
                        </ul>
                    </nav>
                    <img src="../image/menuIcon.png" class="menu-icon" onclick="togglemenu()">
                                       
                </div> 
                <script>
                function scrollValue() {
                    var navbar = document.getElementById('navbar');
                    var scroll = window.scrollY;
                    if (scroll < 200) {
                        navbar.classList.remove('sticky');
                    } else {
                        navbar.classList.add('sticky');
                    }
                }
                
                window.addEventListener('scroll', scrollValue);
                </script>           
                
                <div class ="content">
                    <h1>ATENA CENTER</h1>
                    <p>Sign up and start your glorious learning journey,<br> Follow us on social media to get latest updates</p>
                <div>
                    <button type="button" onclick="location.href='signin.jsp'"><span></span>Register</button>
                  
                </div>
            </div>
                <script>
                    var menuList = document.getElementById("menuList");

                    menuList.style.maxHeight = "0px";
                    
                    function togglemenu() {
                        if ( menuList.style.maxHeight == "0px")
                            {
                                menuList.style.maxHeight = "200px";
                            }
                        else {
                            menuList.style.maxHeight = "0px";
                        }
                    }
                </script>
                
        </section>    
        
        
         <section class="info">
            <div class="main">
                <img src="../image/logo.png">
                <div class="about-text">
                    <h2>Prepare for your future</h2>
                    <p>Our website make learning accessible and convenient with on-demand, self-paced lessons, flexible virtual meetings, and asynchronous assignments.</p>
                </div>
            </div>
        </section>

        <section id="information" class="promo">
            <div class="benefit">
                <h3>What we can offer you!</h3>
            </div>
            <div class="box">
                <div class="card">
                    <i class="fa-solid fa-book"></i>
                    <h5>Tailor-made effective solutions</h5>
                    <div class="pra">
                        <p>Our experts develop your learning solution to closely meet the needs of your organisation. Targeted, relevant content means you can be sure your staff reach their learning goals.</p>
                        <p style="text-align: center;"><a class="button" href="#">Read more</a></p>
                    </div>
                </div>
                
                <div class="card">
                    <i class="fa-solid fa-computer"></i>
                    <h5>Easy to manage: online or in person, or both</h5>
                    <div class="pra">
                        <p>Our flexible delivery options are designed to fit your team’s schedules: self-directed, online, in-person or blended, your staff can learn when and where it suits them, 24/7.</p>
                        <p style="text-align: center;"><a class="button" href="#">Read more</a></p>
                    </div>
                </div>

                <div class="card">
                    <i class="fa-solid fa-award"></i>
                    <h5>The best teachers</h5>
                    <div class="pra">
                        <p>But what really makes the difference is the expertise of our teachers: they are highly qualified with workplace experience that means they understand your context and needs.</p>
                        <p style="text-align: center;"><a class="button" href="#">Read more</a></p>
                    </div>
                </div>
            </div>
        </section>


        <section id="lectures" class="lec-list">
            <div class="intro">
                <h3>World-class lectures</h3>
            </div>
            <div class="container"> 
                <div class="veiw-box">
                    <div id="lecture">
                        
                        <div class="teacher">
                            <img src="../image/teacher1.jpg" alt="">
                            <p>Professor Albus Dumbledore will be sharing his work on mobile education platforms for indigent students.</p>
                            <h3>Aus Dumbledore</h3>
                            <div class="rating">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                        </div>
                        
                        <div class="teacher space">
                            <img src="../image/teacher2.jpg" alt="">
                            <p>A researcher and BSU faculty member since 2010, Dr. Laghari will be joining the summit to speak about new horizons for education.
                                Trisca Laghari, PHD</p>
                            <h3>Sevarus Snape</h3>
                            <div class="rating">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                        </div>
                        
                        <div class="teacher">
                            <img src="../image/teacher3.jpg" alt="">
                            <p>Dr. Petros has been working on immersive learning platforms. He will be sharing his latest findings and best practices.
                                Yanis Petros, PHD</p>
                            <h3>Gojo Satoru</h3>
                            <div class="rating">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                            </div>
                        </div>
                        
                        
                    </div>
                    
                    <div class="controls">
                        <span id="control1"></span>
                        <span id="control2" class="active"></span>
                        <span id="control3"></span>
                    </div>
                    
                </div>
            </div>
             
            <script>
            
                var lecture = document.getElementById('lecture');
                var control1 = document.getElementById('control1');
                var control2 = document.getElementById('control2');
                var control3 = document.getElementById('control3');
                
                
                control1.onclick=function(){
                    lecture.style.transform = "translateX(870px)";
                    control1.classList.add("active");
                    control2.classList.remove("active");
                    control3.classList.remove("active");
                }
                
                control2.onclick=function(){
                    lecture.style.transform = "translateX(0px)";
                    control1.classList.remove("active");
                    control2.classList.add("active");
                    control3.classList.remove("active");
                }
                
                control3.onclick=function(){
                    lecture.style.transform = "translateX(-870px)";
                    control1.classList.remove("active");
                    control2.classList.remove("active");
                    control3.classList.add("active");
                }
            </script>
    
        </section>
         
        <section id="courses" class="courses-list">
            <div class="course">
                <h3>Courses</h3>
            </div>
            <div class="list">
                <div class="item">
                    <img src="../image/course1.png" alt="" class="co-img">
                    <div class="course-ct">
                        <h5>Communication courses</h5>
                        <ul class="course-text">
                            <li>Efficient Class Reports</li>
                            <li>One-to-One Class</li>
                            <li>24 Hours a Day</li>
                            <li><a href = "giaotiep.jsp">More Details</a></li>
                        </ul>
                    </div>
                </div>
                <div class="item">
                    <img src="../image/course2.png" alt="" class="co-img">
                    <div class="course-ct">
                        <h5>Toeic courses</h5>
                        <ul class="course-text">
                            <li>Be confident for the TOEIC test</li>
                            <li>Learn a range of strategies for each part of the test</li>
                            <li>Understand the speed you have to work at through timed practice exercises</li>
                            <li><a href = "toic.jsp"> More Details</a></li>
                        </ul>
                
                    </div>
                </div>
                <div class="item">
                    <img src="../image/course3.png" alt="" class="co-img">
                    <div class="course-ct">
                        <h5>Ielts courses</h5>
                        <ul class="course-text">
                            <li>Advice from IELTS experts</li>
                            <li>IELTS mock papers</li>
                            <li>Plan and track</li>
                            <li>Interactive exercises</li>
                            <li><a href = "aieo.jsp"> More Details</a></li>
                        </ul>
                    </div>
                </div>             
            </div>
        </section>

        <section id="feedback" class="feedback">
            <div class="feeds">
                <h3>Why people love us</h3>
                <p>Get inspired and learn more about us through reviews</p>
            </div>
            <div class="slider">
                <div class="slides">
                    <input type="radio" name="radio-btn" id="radio1" checked>
                    <input type="radio" name="radio-btn" id="radio2">
                    <input type="radio" name="radio-btn" id="radio3">
                    <input type="radio" name="radio-btn" id="radio4">

                    <div class="slide first">
                        <img src="../image/feedback1.png" alt="">
                    </div>
                    <div class="slide first">
                        <img src="../image/feedback2.png" alt="">
                    </div>
                    <div class="slide first">
                        <img src="../image/feedback3.png" alt="">
                    </div>
                    <div class="slide first">
                        <img src="../image/feedback4.png" alt="">
                    </div>
                </div>

                <div class="navigation-manual">
                    <label for="radio1" class="manual-btn"></label>
                    <label for="radio2" class="manual-btn"></label>
                    <label for="radio3" class="manual-btn"></label>
                    <label for="radio4" class="manual-btn"></label>
                </div>
            </div>

        </section>

        <footer id="about" class="footer">
            <div class="container2">
                <div class="row">
                    <div class="footer-col">
                        <h4>Contact us</h4>
                        <ul>
                            <li><a href="#">Email: Hello@reallygreatsite.com</a></li>
                            <li><a href="#">Phone num: (123)-456-7890</a></li>
                            <li><a href="#">Mailing Address: 23 Anywhere St.AnyCity State Country 12345</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <h4>Follow us</h4>
                        <div class="social-links">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        
        
</body>
</html>