<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" lang="kor">
<head>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="UTF-8">
<style>
/* @import url('http://fonts.googleapis.com/earlyaccess/nanumgothic.css'); */
@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 100;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 300;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 400;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 500;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 700;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 900;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.otf)
      format('opentype');
}

body {
   margin: 0 auto;
}
/* body, table, div, p ,span{font-family:'Nanum Gothic';} */
body, table, div, p, span {
   font-family: 'Noto Sans KR';
}

a {
   text-decoration: none;
   color: #333;
}

#con {
   width: 100%;
   height: 100vh;
   background-image: url("https://blog.kakaocdn.net/dn/dC8sug/btqE1C7CoHK/W1cWrwnkVwXYcDJxyyqoQk/img.jpg");
   background-position: center center;
   background-repeat: no-repeat;
   background-size: cover;
   padding: 0;
}

#login {
   width: 600px;
   height: 600px;
   margin: 0 auto;
   /* position: relative; */
   /* background:#ddd; */
}

#login_form {
   /* text-align:center; */
   border-radius: 10px;
   padding: 50px;
   background-color: rgba(051, 051, 051, 0.9);
   text-align: center;
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%); 
}

.login {
   font-size: 25px;
   font-weight: 900;
   color: #FDF5DC;
}
.size5 {
   width: 300px;
   height: 30px;
   padding-left: 10px;
   background-color: #FDF5DC;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
   display :inline-block;
}

.size {
   width: 340px;
   height: 30px;
   padding-left: 10px;
   background-color: #FDF5DC;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
   display :inline-block;
}

.size2 {
   width: 100px;
   height: 30px;
   padding-left: 10px;
   background-color: #f4f4f4;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
   display :inline-block;
}

.size3 {
   width: 145px;
   height: 30px;
   padding-left: 10px;
   background-color: #f4f4f4;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
   display :inline-block;
}

.size4 {
   width: 235px;
   height: 30px;
   padding-left: 10px;
   background-color: #f4f4f4;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
   display :inline-block;
}

.btn {
   width: 340px;
   height: 40px;
   font-size: 15px;
   background-color: #D7A35D;
   color: #fff;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn:hover {
   background: #D7A35D;
}

.btn2 {
   width: 165px;
   height: 40px;
   font-size: 15px;
   background-color: #D7A35D;
   color: #fff;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn2:hover {
   background: #D7A35D;
}

.btn3 {
   width: 37px;
   height: 36px;
   font-size: 11px;
   background-color: #D7A35D;
   color: #fff;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn3:hover {
   background: #D7A35D;
}

.btn4 {
   width: 70px;
   height: 38px;
   font-size: 15px;
   background-color: #D7A35D;
   color: #fff;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn4:hover {
   background: #D7A35D;
}

.btn5 {
   width: 170px;
   height: 35px;
   font-size: 15px;
   background-color: #D7A35D;
   color: #fff;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn5:hover {
   background: #D7A35D;
}


hr {
   margin-top: 20px;
   background: #eee;
}

.find {
   color: #ddd;
   font-size: 12px;
}

.find span {
   padding-left: 10px;
}

.find span::before {
   content: '|';
   color: #333;
   padding-right: 10px;
}

.find span:nth-child(1):before {
   content: none;
}

.find span:nth-child(1) {
   padding-left: 0px;
}

.find a:hover {
   color: #707070;
}

.num1 {
   width: 60px;
   text-align: left;
}

.num2 {
   width: 235px;
}

.id_ok {
   color: #008000;
   display: none;
}

.id_already {
   color: #6A82FB;
   display: none;
}
input[name=userPw]::placeholder {
  font-size: 0.8775em;
}

</style>
   <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
   <script type="text/javascript">
   
/*    $(function(){
      var id = $('#userId').val();
         var pw = $('#userPw3').val();
         
         if(id == "" && pw == ""){
            alert("로그인 후 사용해주세요.")
               location.href = "login.do";
         }else{
            location.href = "myPage.do";
         }
   })
    */
   
   function checkPw(){
      var pass = $("#userPw").val();
      var sePass = $("#userPw3").val();
      
      if(pass.length < 6){
         alert("비밀번호는 6자리 이상을 입력하세요.")
         return false;
      }
      if(pass =="" || pass != sePass){
         alert("비밀번호를 다시 입력해주세요.");
      }else{
         alert("비밀번호가 일치합니다.")
      }
   };
   
  
 /*비밀번호확인하고 넘어갈수있음  */
    function modifyNames(){
       var pass = $('#userPw').val(); 
       
        if(pass == ""){
            alert("비밀번호를 입력하세요.");
         } else{
           var width = 420;
           var height = 700;
           
           var left = (window.screen.width/2) - (width/2);     
           var top = (window.screen.height/4);
             
           var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
           const url = "http://localhost:8800/tp/name.do";
           window.open(url, "변경", windowStatus);
         }
      }
   
   function modifyPhone(){
      var pass = $('#userPw').val(); 
     
        if(pass == ""){
            alert("비밀번호를 입력하세요.");
         }else{
           var width = 420;
           var height = 700;
           
           var left = (window.screen.width/2) - (width/2);  
           var top = (window.screen.height/4);
             
           var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
           const url = "http://localhost:8800/tp/phone.do";
           window.open(url, "변경", windowStatus);
         }
      }
   
   function modifyEmail(){
      var pass = $('#userPw').val(); 
        
        if(pass == ""){
            alert("비밀번호를 입력하세요.");
         }else{
           var width = 420;
           var height = 700;
           
           var left = (window.screen.width/2) - (width/2);  
           var top = (window.screen.height/4);
             
           var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
           const url = "http://localhost:8800/tp/email.do";
           window.open(url, "변경", windowStatus);
         }
      }
   
   function modifyPw(){
      var pass = $('#userPw').val(); 
        
        if(pass == ""){
            alert("비밀번호를 입력하세요.");
            
         }else{
           var width = 420;
           var height = 700;
           
           var left = (window.screen.width/2) - (width/2);  
           var top = (window.screen.height/4);
             
           var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
           const url = "http://localhost:8800/tp/pw.do";
           window.open(url, "변경", windowStatus);
         }
   }
   
   function userSave(){
      var pass = $('#userPw').val(); 
       
       if(pass == ""){
           alert("비밀번호를 입력하세요.");
        }else{
           alert("회원정보가 변경되었습니다.")
           location.href = "logout.do";
        }
      
   }
   
   
   </script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/templates/header.jsp"></jsp:include> 
   <div id="con">
      <div id="login">
         <div id="login_form">
            <form>
               <h3 class="login" style="letter-spacing: -1px;">마이페이지</h3>
               <hr>
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">아이디</p>
                     <input type="text" class="size" id="userId" name="userId" 
                      value="${SessionUserID}" readonly>
                  </label>
               </div>
               <!--  <input type="hidden" value="${pw.SessionUserPW}" id="sspw"/>--> 
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">비밀번호
                     </p>
                     <input type="hidden" id="userPw3" name="userPw3" value="${SessionUserPW}">
                     <input type="password" class="size5" id="userPw" name="userPw" value="${SessionUserPW}" required>
                      <input type="button" class="btn3" onclick="modifyPw()" value="변경">
                      <p style="text-align: left; font-size: 13px; color: #FF6464">※비밀번호 확인 후 회원정보변경이 가능합니다.</p>
                  </label>
               </div>
              <!-- <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #666">PASSWORD_CHECK
                     </p> <input type="password" class="size" id="userPw2" name="userPw2" placeholder="비밀번호 확인" required>
                     <p></p><input type="button" class="btn" onclick="checkPw()" value="비밀번호 확인">
                      <p style="text-align: left; font-size: 12px; color: #FF0000">※비밀번호 확인 후 회원정보변경이 가능합니다.</p>
                  </label>
               </div> --> 
                 <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">이름
                     </p> 
                     <input type="text" class="size5" id="userName" name=userName value="${user.userName}" readonly>
                     <input type="button" class="btn3" onclick="modifyNames()" value="변경">
                     <!--  <a href="javascript:modifyNames()">수정</a>-->
                  </label>
               </div>
             
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">전화번호
                     </p> 
                     <input type="tel" class="size5" id="userPhone" size="11" maxlength="11" 
                     value="${user.userPhone}" name="userPhone" required>
                     <input type="button" class="btn3" onclick="modifyPhone()" value="변경">
                  </label>
               </div>
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">이메일</p> 
                     <input type="email" class="size5" id="userEmail" placeholder="ex)abc@naver.com"  name="email"  value="${user.userEmail}" required>
                     <input type="button" class="btn3" onclick="modifyEmail()" value="변경">
                  </label>
                  
               </div>
                 <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">생년월일
                     </p> 
                     <input type="text" name=userBirth class="size" id="userBirth" size="6" maxlength="6" value="${user.userBirth}" readonly>
                     <!-- <input type="button" class="btn3" onclick="modifyBirth()" value="수정"> -->
                    </label>
                  
               </div>
                  <p></p>
                  
                    <p>
                     <input type="hidden" class="btn2" onclick="userUpdate()" value="저장"></input>
                     <input type="button" class="btn5" onclick="location.href='reserveConfirm.do'" value="예약내역조회"></input>
                     <input type="button" class="btn5" onclick="location.href='drop.do'" value="회원탈퇴"></input>
                     <br><br>
                     <p align="right">
                     <input type="button" class="btn4" onclick="location.href='main.do'" value="홈으로"></input>
                     </p>
                  </p>
            </form>
         </div>
         <!-- input type -> ajax // submit -> ajax 필요업성-->
</body>
</html>