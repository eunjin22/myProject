<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <!-- SEO Meta Tags -->
        <meta name="description" content="Your description">
        <meta name="author" content="Your name">

        <!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->
        <meta property="og:site_name" content="" /> <!-- website name -->
        <meta property="og:site" content="" /> <!-- website link -->
        <meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
        <meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
        <meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
        <meta property="og:url" content="" /> <!-- where do you want your post to link to -->
        <meta name="twitter:card" content="summary_large_image"> <!-- to have large image post format in Twitter -->

        <!-- Webpage Title -->
        <title>Log In - Ioniq</title>
        
        <!-- Styles -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;1,400&display=swap" rel="stylesheet">
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="resources/css/fontawesome-all.min.css" rel="stylesheet">
        <link href="resources/css/swiper.css" rel="stylesheet">
        <link href="resources/css/styles.css" rel="stylesheet">
        
        <!-- Favicon  -->
        <link rel="icon" href="resources/images/favicon.png">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">

   function login(){
      var id = $("#userId").val();
      var pw = $("#userPw").val();
      if(id == ""){
         alert("아이디를 입력하세요.");
      }else if(pw == ""){
         alert("비밀번호를 입력하세요.");
      }else{
         $.ajax({
            url : "login.do",
            type : "POST",
            data :{
               userId : id,
               userPw : pw
            },
            datatype:"text",
            
            success : function(data){               
               if(data == "ok"){
                  location.href = "main.do";
               }else{
                  alert("로그인정보를 다시 확인해주세요.")
               }
         }
      })
   }      
}
   
</script>
    </head>
     <body data-bs-spy="scroll" data-bs-target="#navbarExample">
   <%
   String USERID = (String) session.getAttribute("SessionUserID"); //정상적으로 로그인이 진행되면 USERID,USERPW에 값이 들어옴
   String USERPW = (String) session.getAttribute("SessionUserPW");
   %>
   
   <!-- Navigation -->
        <nav id="navbarExample" class="navbar navbar-expand-lg fixed-top navbar-light" aria-label="Main navigation">
            <div class="container">

                <!-- Image Logo -->
                <a class="navbar-brand logo-image" href="main.do"><img src="resources/images/logo.svg" alt="alternative"></a> 

                <!-- Text Logo - Use this if you don't have a graphic logo -->
                <!-- <a class="navbar-brand logo-text" href="index.html">Ioniq</a> -->

                <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                    <ul class="navbar-nav ms-auto navbar-nav-scroll">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="main.do">HOME</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="main.do#features">ABOUT</a>
                        </li>
                        <%
                              if (USERID != null && USERPW != null && (USERID.equals("ADMIN"))) { // 로그인이 됐을시
                        %>
                        <li class="nav-item">
                            <a class="nav-link" href="main.do#details">RENT LIST</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="main.do#pricing">Q&A</a>
                        </li>
                        <span class="nav-item">
                        	<a href="logout.do" class="btn-outline-sm" >Log out</a>
                    	</span>
                        <%
                              }else if(USERID != null && USERPW != null){  // 사용자로그인
                         %> 
                        <li class="nav-item">
                            <a class="nav-link" href="main.do#details">RENT UMBRELLA</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="main.do#pricing">Q&A</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="myPage.do">MYPAGE</a>
                        </li>
                        <span class="nav-item">
                        	<a href="logout.do" class="btn-outline-sm" >Log out</a>
                    	</span>
                        <%
                              } else{ //로그아웃상태
                        %>
                        <li class="nav-item">
                            <a class="nav-link" href="main.do#details">RENT UMBRELLA</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="main.do#pricing">Q&A</a>
                        </li>
                        <span class="nav-item">
                        	<a href="login.do" class="btn-outline-sm" >Log in</a>
                    	</span>
                    	<%
                              }
                        %>
                    	</ul>
                    </div>
                 </div>
              </nav>

        <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1 class="text-center">Log In</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->
        
        
        <!-- Basic -->
        <div class="ex-form-1 pt-5 pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 offset-xl-3">
                        <div class="text-box mt-5 mb-5">
                            <p class="mb-4">You don't have a password? Then please <a class="blue" href="signUp.do">Sign Up</a></p>

                            <!-- Log In Form -->
                            <form>
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="userId" name="userId" placeholder="id">
                                    <label for="floatingInput">Id</label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="password" class="form-control" id="userPw" name="userPw" placeholder="Password">
                                    <label for="floatingPassword">Password</label>
                                </div>
                                <div class="mb-4 form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">I agree with the site's stated <a href="privacy.html">Privacy Policy</a> and <a href="terms.html">Terms & Conditions</a></label>
                                </div>
                                 <input type="button" onclick="login()" class="form-control-submit-button" value="Log in"/>
                            </form>
                            <!-- end of log in form -->

                        </div> <!-- end of text-box -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of ex-basic-1 -->
        <!-- end of basic -->


        <!-- Footer -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-col first">
                            <h6>About Website</h6>
                            <p class="p-small">학교 안에서 자유롭게 대여가능한 RENDRELLA, <br> 지금 바로 만나보세요! <br>
                            	본관, 의양관, 사회관, 공학관,<br>바우어관, 본관에서 만나요~*^^*
                            </p>
                        </div> <!-- end of footer-col -->
                        <div class="footer-col second">
                            <h6>Links</h6>
                            <ul class="list-unstyled li-space-lg p-small">
                                <li>Important: <a href="terms.html">Terms & Conditions</a>, <a href="privacy.html">Privacy Policy</a></li>
                                <li>Useful: <a href="#">Colorpicker</a>, <a href="#">Icon Library</a>, <a href="#">Illustrations</a></li>
                                <li>Menu: <a href="#header">Home</a>, <a href="#features">Features</a>, <a href="#details">Details</a>, <a href="#pricing">Pricing</a></li>
                            </ul>
                        </div> <!-- end of footer-col -->
                        <div class="footer-col third">
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-facebook-f fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-twitter fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-pinterest-p fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-instagram fa-stack-1x"></i>
                                </a>
                            </span>
                            <p class="p-small">Quam posuerei pellent esque university <a href="mailto:contact@site.com"><strong>contact@site.com</strong></a></p>
                        </div> <!-- end of footer-col -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of footer -->  
        <!-- end of footer -->

   
        <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <p class="p-small">Copyright © <a href="#your-link">RENDRELLA</a></p>
                    </div> <!-- end of col -->

                    <div class="col-lg-6">
                        <p class="p-small">RENT By<a href="https://themewagon.com/">UNIVERSITY</a></p>    
                    </div> <!-- end of col -->
                </div> <!-- enf of row -->
            </div> <!-- end of container -->
        </div> <!-- end of copyright --> 
        <!-- end of copyright -->


        <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <p class="p-small">Copyright © <a href="#your-link">Your name</a></p>
                    </div> <!-- end of col -->
                    <div class="col-lg-6">
                        <p class="p-small">Distributed By<a href="https://themewagon.com/"> Themewagon</a></p>
                    </div> <!-- end of col -->
                </div> <!-- enf of row -->
            </div> <!-- end of container -->
        </div> <!-- end of copyright --> 
        <!-- end of copyright -->
        

        <!-- Back To Top Button -->
        <button onclick="topFunction()" id="myBtn">
            <img src="resources/images/up-arrow.png" alt="alternative">
        </button>
        <!-- end of back to top button -->
            
        <!-- Scripts -->
        <script src="resources/js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
        <script src="resources/js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
        <script src="resources/js/purecounter.min.js"></script> <!-- Purecounter counter for statistics numbers -->
        <script src="resources/js/replaceme.min.js"></script> <!-- ReplaceMe for rotating text -->
        <script src="resources/js/scripts.js"></script> <!-- Custom scripts -->
    </body>
</html>