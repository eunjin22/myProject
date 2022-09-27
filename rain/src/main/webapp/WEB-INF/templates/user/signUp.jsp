<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
    #btn{
		width:270px;
		height:50px;		
		}
    </style>
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
        <title>Sign Up - Ioniq</title>
        
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
		
		 <!--회원가입-->
	      function join(){
	         var id= $('#userId').val();
	          var pw= $('#userPw').val();
	          var pw2= $('#userPw2').val();
	          var name= $('#userName').val();
	          var phone= $('#userPhone').val();  
	          
	          if(id == ""){
	             alert("아이디를 입력하세요.")
	          }else if(pw == ""){
	             alert("비밀번호를 입력하세요.")
	          }else if(pw2 == ""){
	             alert("비밀번호를 확인하세요.")
	          }else if(name == ""){
	             alert("이름을 입력하세요.")
	          }else if(phone == ""){
	             alert("전화번호를 입력하세요.")
	          }else{
	             $.ajax({
	                  url:'signUp.do',
	                  type:'POST',
	                  dataType: 'text',
	                  data: { 
	                       userId:id,
	                       userPw:pw,
	                       userPw2:pw2,
	                       userName:name,
	                       userPhone:phone  
	                  },
	                  success: function(data){
	                     if(data == ""){
	                        alert("회원정보를 다시확인해주세요.")
	                     }else{
	                        alert("Rendrella에 오신 것을 환영합니다!")
	                        location.href="main.do"  
	                     }
	                  }    
	             })
	                  
	                  
	          }
	      }
	      

		/* 아이디 중복체크ㄴ */  
	      function checkId() {
	            $.ajax({
	               url : "idCheck.do",
	               type : "GET",
	               dataType : "text", 
	               data : {
	                  userId : $("#userId").val() //userId의 id값이 userId인 입력란의 값을 저장
	               },
	               success : function(data) {
	                  if (data == "no") {
	                     alert("중복된 아이디입니다.");
	                  } else if (data == "ok") {
	                     alert("사용가능한 아이디입니다.")
	                  }
	               }
	            });
	         };
	      
	            <!--비밀번호확인-->
	            $(function(){
	                $('#userPw').keyup(function(){ //userPw: 비밀번호
	                      $('#userPw2').html('');  //userPw2: 비밀번호 확인
	                });
	                   $('#userPw2').keyup(function(){
	                    if($('#userPw').val() != $('#userPw2').val()){ //비밀번호가 다르면
	                        $('#password_check').html('비밀번호 일치하지 않음<br>');
	                        $('#password_check').attr('color', '#DA70D6');                 
	                     } else{ //같으면
	                         $('#password_check').html('비밀번호 일치함<br>');
	                         $('#password_check').attr('color', '#199894b3'); 
	                     }
	                });
	             });

	         </script>
    </head>
  <body data-bs-spy="scroll" data-bs-target="#navbarExample">
  <jsp:include page="/WEB-INF/templates/header.jsp"></jsp:include>
        <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1 class="text-center">회원가입</h1>
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

                            <!-- Sign Up Form -->
                            <form>
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="userId" name="userId" placeholder="id">
                                    <label for="floatingInput">아이디</label>
                                    <br> 
                                    <input type="button" class="form-control-submit-button" onclick="checkId()" value="아이디 확인">
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="password" class="form-control" id="userPw" name="userPw" placeholder="Password">
                                    <label for="floatingPassword">비밀번호</label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="password" class="form-control" id="userPw2" name="userPw2" placeholder="Password Check">
                                    <label for="floatingPassword">비밀번호 확인</label>
                                    <font id="password_check" size="2"></font>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="userName" name="userName" placeholder="Your name">
                                    <label for="floatingInput">이름</label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="tel" class="form-control" id="userPhone" name="userPhone" placeholder="tel">
                                    <label for="floatingInput">전화번호</label>
                                </div>                                
                                <input type="button" class="form-control-submit-button" onclick="location.href='main.do'" value="뒤로가기" id="btn">
                                <span></span>
                                <input type="button" class="form-control-submit-button" onclick="join()" id="btn" value="회원가입"/>
                            </form>
                            <!-- end of sign up form -->

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