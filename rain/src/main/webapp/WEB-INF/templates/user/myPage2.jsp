<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- Webpage Title -->
<title>My page</title>

<!-- Styles -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;1,400&display=swap"
	rel="stylesheet">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/fontawesome-all.min.css" rel="stylesheet">
<link href="resources/css/swiper.css" rel="stylesheet">
<link href="resources/css/styles.css" rel="stylesheet">

<!-- Favicon  -->
<link rel="icon" href="resources/images/favicon.png">

<style>
#btn {
	width: 270px;
	height: 50px;
	display: inline-block;
}

#navbarExample {
	padding: 0px 0px 8px;
}

#btn2 {
	width: 80px;
	height: 30px;
	display: inline-block;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">

 function modifyPw(){
    var pass = $('#userPw').val(); 
    var sePass = $("#userPw2").val();
      
      if(pass == ""){
          alert("비밀번호를 입력하세요.");
          
       }else if(pass != sePass){
          alert("비밀번호가 일치하지 않습니다.")
       }else{
         var width = 420;
         var height = 700;
         
         var left = (window.screen.width/2) - (width/2);      
         var top = (window.screen.height/4);
           
         var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
         const url = "https://9912-220-122-16-168.ngrok.io/rain/pw.do";
         window.open(url, "변경", windowStatus);
       }
 } 
 
 function modifyPhone(){
     var pass = $('#userPw').val(); 
     var sePass = $("#userPw2").val();
    
       if(pass == ""){
           alert("비밀번호를 입력하세요.");
        }else if(pass != sePass){
           alert("비밀번호가 일치하지 않습니다.")
        }else{
          var width = 420;
          var height = 700;
          
          var left = (window.screen.width/2) - (width/2);  
          var top = (window.screen.height/4);
            
          var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
          const url = "https://9912-220-122-16-168.ngrok.io/rain/phone.do";
          window.open(url, "변경", windowStatus);
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
                        <h1 class="text-center">My Page</h1>
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
                        <div class="text-box mt-5 mb-5" >
                            <!-- <div class="mb-4"> 
                            <b></b><a class="blue" style="font-size:2.0em; font-weight: bold; display:inline-flex;" href="main.do">QR</a>
                           
							<b></b><a class="blue" style="font-size:1.7em; font-weight: bold; display:inline-flex;" href="myrentList.do">대여내역</a>
							</div>  -->
                            <!-- Sign Up Form -->
                            <form>
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="userId" name="userId" placeholder="id" value="${SessionUserID}" readonly>
                                    <label for="floatingInput">Id</label>                          
                                </div>
                                <div class="mb-4 form-floating">
                                	<input type="hidden" id="userPw2" name="userPw2" value="${SessionUserPW}">
                     				<input type="password" class="form-control" id="userPw" name="userPw" value="${SessionUserPW}" placeholder="비밀번호를 입력하세요" autocomplete="off" required >
                                     <input type="button" class="form-control-submit-button" onclick="modifyPw()" value="수정" id="btn2" style="float: right;"> 
                                    <label for="floatingPassword">Password</label> 
                                    <p style="text-align: left; font-size: 13px; color: #FF6464; font-weight: 900;">※비밀번호 확인 후 회원정보변경이 가능합니다.</p>
                                </div>
                                <br>
                                <br>
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="userName" name="userName" placeholder="Your name" value="${user.userName}" readonly>
                                    <label for="floatingInput">Your name</label>
                                </div>
                                <div class="mb-4 form-floating">
                     				<input type="tel" class="form-control" id="userPhone" name="userPhone" autocomplete="off" value="${user.userPhone}" required >
                                     <input type="button" class="form-control-submit-button" onclick="modifyPhone()" value="수정" id="btn2" style="float: right;"> 
                                    <label for="floatingPassword">PhoneNumber</label>       
                                </div>
                                <br><br>
                                <input type="button" class="form-control-submit-button" onclick="location.href='main.do'" value="뒤로가기" id="btn">
                                <span></span>
                                <input type="button" class="form-control-submit-button" onclick="location.href='myrentList.do'" value="대여내역" id="btn">
                            </form>
                            <!-- end of sign up form -->
 
                      </div>  <!-- end of text-box  -->
                    </div> <!-- end of col -->
               </div> <!-- end of row -->
           </div> <!-- end of container -->
       </div> <!-- end of ex-basic-1 -->
        <!-- end of basic -->


        <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                    <br><br>
                       <p class="p-small">Contact  :  010-4598-1524</p>
                    </div> <!-- end of col -->


					
                    <div class="col-lg-6">
                     <br><br>
                         <p class="p-small">RENT By &nbsp;UNIVERSITY</p>    
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
        <script src="resources/js/bootstrap.min.js"></script>
<!-- Bootstrap framework -->
<script src="resources/js/swiper.min.js"></script>
<!-- Swiper for image and text sliders -->
<script src="resources/js/purecounter.min.js"></script>
<!-- Purecounter counter for statistics numbers -->
<script src="resources/js/replaceme.min.js"></script>
<!-- ReplaceMe for rotating text -->
<script src="resources/js/scripts.js"></script>
<!-- Custom scripts -->
</body>
</html>