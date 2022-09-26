<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="UTF-8">
<style>
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
   background-color:  #fff3cf;
   background-image: url("img/bg.jpg");
   background-position: center center;
   background-repeat: no-repeat;
   background-size: cover;
   padding: 0;
}

#login {
   width: 600px;
   height: 600px;
   margin: 0 auto;
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
   background-color:#FDF5DC;
   border: none;
   border-radius: 5px;
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

</style>

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
                 opener.parent.location="http://localhost:8800/tp/login.do";
                 self.close();
           },
              error : function(){
                 alert("변경실패.");
        }
     })
   }
  }
    
</script>


<title>The Venue Study Cafe</title>
</head>
<body>
   <div id="con">
      <div id="login">
         <div id="login_form">
            <form>
               <h3 class="login" style="letter-spacing: -1px;">비밀번호 변경</h3>
               <hr>
               <div class="form-group">
                  <input type="hidden" id="userId" name="userId" class="size"
                     placeholder="아이디를 입력해주세요" value="${SessionUserID}" required/>
                      <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">현재 비밀번호</p>
                     <input type="hidden" id="userPw4" name="userPw4" value="${SessionUserPW}">
                     <input type="password" name="userPw" id="userPw" class="size" size="11" maxlength="11" required>
                     
                  </label>
                   <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">새 비밀번호</p>
                     <input type="password" name="userPw2" id="userPw2" class="size" size="11" maxlength="11" required>
                  </label>
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">새 비밀번호 확인</p>
                     <input type="password" name="userPw3" id="userPw3" class="size" size="11" maxlength="11" required>
                  </label>
               </div>
               <div class="form-group">
                  <p></p>
                  <p>
               </div>
               <input type="button" class="btn2" onclick="modifyPw()" value="변경" />
            </form>
            <br/>
         </div>
         </div>
         </div>
</body>
</html>