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
        <title>전화번호 변경</title>
        
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
		   
		   function modifyPhone(){
		      var phone = $('#userPhone').val();
		      if(phone==""){
		         alert("변경할 전화번호를 입력하세요.")
		      }else{
		            $.ajax({
		               url : "userPhone.do",
		               type : "POST",
		               data : {
		                userId : $("#userId").val(),
		                 userPhone : $("#userPhone").val()
		            },
		               dataType : "text",
		               success : function(data){
		                  alert("변경되었습니다.")
		                  opener.parent.location="https://9912-220-122-16-168.ngrok.io/rain/myPage2.do";
		                  self.close();
		            },
		               error : function(){
		                  alert("변경실패~");
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
               <h3 class="login" style="letter-spacing: -1px;">전화번호 변경</h3>
               <hr>
               <div class="text-box mt-5 mb-5">
                  <input type="hidden" id="userId" name="userId" class="form-control"
                     placeholder="아이디를 입력해주세요" value="${SessionUserID}" required/>
               </div>
               <div class="text-box mt-5 mb-5">   
                     <p style="text-align: left; font-size: 15px; color: #000069; font-weight: 900;">전화번호</p>
                     <input type="tel" name="userPhone" id="userPhone" maxlength="11" class="form-control" autocomplete="off" required>
               </div>    
               <div class="text-box mt-5 mb-5">
                  <p></p>
                  <p>
               </div>
               <input type="button" id="btn2" class="form-control-submit-button" onclick="modifyPhone()" value="변경" />
            </form>
            </div>
            </div>
            </div>
            </div>
            </div>
</body>
</html>