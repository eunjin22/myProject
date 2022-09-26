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

.size {
   width: 300px;
   height: 30px;
   padding-left: 10px;
   background-color: #FDF5DC;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
}

.size2 {
   width: 100px;
   height: 30px;
   padding-left: 10px;
   background-color: #f4f4f4;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
   display: inline-block;
}

.size3 {
   width: 145px;
   height: 30px;
   padding-left: 10px;
   background-color: #f4f4f4;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
   display: inline-block;
}

.size4 {
   width: 235px;
   height: 30px;
   padding-left: 10px;
   background-color: #f4f4f4;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
   display: inline-block;
}

.btn {
   width: 310px;
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
   width: 150px;
   height: 35px;
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
   width: 300px;
   height: 32px;
   font-size: 15px;
   background-color: #D7A35D;
   color: #fff;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn3:hover {
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
input[name=userId]::placeholder {
  font-size: 0.8975em;
}

input[name=userPw]::placeholder {
  font-size: 0.8975em;
}

input[name=userPw2]::placeholder {
  font-size: 0.8975em;
}

input[name=userName]::placeholder {
  font-size: 0.8975em;
}

input[name=userBirth]::placeholder {
  font-size: 0.8975em;
}

input[name=userPhone]::placeholder {
  font-size: 0.8975em;
}

input[name=userEmail3]::placeholder {
  font-size: 0.8975em;
}




</style>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
      
      
   <!--회원가입-->
      function join(){
         var id= $('#userId').val();
          var pw= $('#userPw').val();
          var pw2= $('#userPw2').val();
          var name= $('#userName').val();
          var birth= $('#userBirth').val();
          var phone= $('#userPhone').val(); 
          var email= $('#userEmail').val(); 
          
          if(id == ""){
             alert("아이디를 입력하세요.")
          }else if(pw == ""){
             alert("비밀번호를 입력하세요.")
          }else if(pw2 == ""){
             alert("비밀번호를 확인하세요.")
          }else if(name == ""){
             alert("이름을 입력하세요.")
          }else if(birth == ""){
             alert("생년월일을 입력하세요.")
          }else if(phone == ""){
             alert("전화번호를 입력하세요.")
          }else if(email == ""){
             alert("이메일을 입력하세요.")
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
                       userBirth:birth,
                       userPhone:phone,
                       userEmail:email       
                  },
                  success: function(data){
                     if(data == ""){
                        alert("회원정보를 다시확인해주세요.")
                     }else{
                        alert("Welcome to StudyCafe!")
                        location.href="main.do"  
                     }
                  }    
             })
                  
                  
          }
      }
      
      <!--아이디 중복 -->       
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
                        $('#password_check').attr('color', '#f82a2aa3');                 
                     } else{ //같으면
                         $('#password_check').html('비밀번호 일치함<br>');
                         $('#password_check').attr('color', '#199894b3'); 
                     }
                });
             });

         </script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/templates/header.jsp"></jsp:include>
   <div id="con">
      <div id="login">
         <div id="login_form">
               <h3 class="login" style="letter-spacing: -1px;">회원가입</h3>
               <hr>
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">&nbsp;아이디</p>
                     <input type="text" class="size" id="userId" name="userId"
                     placeholder="아이디를 입력하세요">
                     <p></p> <input type="button" class="btn3" onclick="checkId()" value="아이디 확인">
                  </label>
               </div>
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">비밀번호
                     </p> <input type="password" class="size" id="userPw" name="userPw"
                     placeholder="비밀번호를 입력하세요">
                  </label>
               </div>
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">비밀번호_확인
                     </p> <input type="password" class="size" id="userPw2" name="userPw2"
                     placeholder="비밀번호 확인">
                     <p></p>
                     <font id="password_check" size="2"></font>
                     <!--  <input type="button" class="btn" onclick="checkPw()" value="비밀번호 확인"> -->
                  </label>
               </div>
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">이름
                     </p> <input type="text" class="size" id="userName" name="userName" placeholder="이름을 입력하세요">
                  </label>
               </div>
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">생년월일</p> <input type="text" class="size" id="userBirth" size="6" maxlength="6" name="userBirth" placeholder="ex) 990101">
                     <!--  <span></span>
                     <input type="radio" name="gender" value="man">남
                     <span></span> &nbsp;
                     <input type="radio" name="gender" value="woman">여-->
                  </label>

               </div>
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">전화번호
                     </p> <input type="tel" class="size" id="userPhone" size="11" maxlength="11" name="userPhone" placeholder="ex) 01012345678">
                  </label>
               </div>
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">이메일
                     </p> <input type="email" class="size" id="userEmail" name="userEmail3" placeholder="ex) studycafe@123.com">                    
                  </label>
               </div>
               <p></p>
               <br>
               <p>
                  <input type="button" class="btn2"
                     onclick="location.href='login.do'" value="뒤로가기"></input> <span></span>
                  <input type="button" class="btn2" onclick="join()" value="회원가입"/>
               </p> 
            </div>
         </div>
      </div>
</body>
</html>