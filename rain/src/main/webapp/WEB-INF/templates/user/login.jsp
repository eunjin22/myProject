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
        <title>Log In</title>
        
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
	 <jsp:include page="/WEB-INF/templates/header.jsp"></jsp:include>

        <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1 class="text-center">로그인</h1>
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

                            <!-- Log In Form -->
                            <form>
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="userId" name="userId" placeholder="id" autocomplete="off">
                                    <label for="floatingInput">아이디</label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="password" class="form-control" id="userPw" name="userPw" placeholder="Password" autocomplete="off">
                                    <label for="floatingPassword">비밀번호</label>
                                </div>
                                 <input type="button" class="form-control-submit-button" onclick="location.href='signUp.do'" value="회원가입" id="btn">
                                <span></span>
                                <input type="button" class="form-control-submit-button" onclick="login()" value="로그인" id="btn">
                            </form>
                            <!-- end of log in form -->

                        </div> <!-- end of text-box -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of ex-basic-1 -->
        <!-- end of basic -->

		<br><br><p></p><p></p><p></p><p></p><br><br><p></p><p></p><p>
		<br><p></p><p></p><p>
 
        <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                    <br><br>
                        <p class="p-small">Contact  :  <a href="#your-link">010-4598-1524</a></p>
                    </div> <!-- end of col -->


					
                    <div class="col-lg-6">
                     <br><br>
                        <p class="p-small">RENT By<a href="https://themewagon.com/">UNIVERSITY</a></p>    
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