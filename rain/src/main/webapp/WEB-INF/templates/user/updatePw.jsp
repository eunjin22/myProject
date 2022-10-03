<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
    #btn2{
		width:450px;
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
        <title>비밀번호 변경</title>
        
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
   
   function modifyPw(){
      var pw = $('#userPw').val();
      var pw2 = $('#userPw2').val();
      var pw3 = $('#userPw3').val();
      var pw4 = $('#userPw4').val();
      
      if(pw != pw4){
         alert("현재 비밀번호를 다시 확인해주세요.")
      }else if(pw2 ==""){
         alert("새 비밀번호를 올바르게 입력하세요.")
      }else if(pw == pw2 || pw == pw3){
         alert("현재 비밀번호와 동일합니다. 다시 입력해주세요.")   
      }else if(pw3 =="" || pw2 != pw3){
         alert("입력한 비밀번호를 확인해 주세요.")
      }else{
         $.ajax({
               url : "userPw.do",
              type : "POST",
              data : {
                 userId : $("#userId").val(),
                 userPw : $("#userPw2").val() 
           },
              dataType : "text",
              success : function(data){
                 alert("변경되었습니다.")
                 opener.parent.location="http://localhost:8800/rain/login.do";
                 self.close();
           },
              error : function(){
                 alert("변경실패.");
        }
     })
   }
  }
</script>
</head>
<body>
<div class="ex-form-1 pt-5 pb-5">
  <div class="container">
     <div class="row">
        <div class="col-xl-6 offset-xl-3">
           <div class="text-box mt-5 mb-5" >
			<form>
               <h3 class="login" style="letter-spacing: -1px;">비밀번호 변경</h3>
               <hr>
               <div class="text-box mt-5 mb-5">
                  <input type="hidden" id="userId" name="userId" class="form-control"
                     placeholder="아이디를 입력해주세요" value="${SessionUserID}" required/>
               </div>
               <div class="text-box mt-5 mb-5">   
                     <p style="text-align: left; font-size: 15px; color: #000069; font-weight: 900;">현재 비밀번호</p>
                     <input type="hidden" id="userPw4" name="userPw4" value="${SessionUserPW}">
                     <input type="password" name="userPw" id="userPw" class="form-control" size="11" maxlength="11" required>
               </div>     
           	   <div class="text-box mt-5 mb-5">
                     <p style="text-align: left; font-size: 15px; color: #000069; font-weight: 900;">새 비밀번호</p>
                     <input type="password" name="userPw2" id="userPw2" class="form-control" size="11" maxlength="11" required>
           	   </div>
           	   <div class="text-box mt-5 mb-5">
                     <p style="text-align: left; font-size: 15px; color: #000069; font-weight: 900;">새 비밀번호 확인</p>
                     <input type="password" name="userPw3" id="userPw3" class="form-control" size="11" maxlength="11" required>
               </div>
               <div class="text-box mt-5 mb-5">
                  <p></p>
                  <p>
               </div>
               <input type="button" id="btn2" class="form-control-submit-button" onclick="modifyPw()" value="변경" />
            </form>
            </div>
            </div>
            </div>
            </div>
            </div>
</body>
</html>