<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="UTF-8">
<style>
        @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 100;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.otf) format('opentype');}
        @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 300;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.otf) format('opentype');} @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 400;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.otf) format('opentype');} @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 500;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.otf) format('opentype');} @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 700;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.otf) format('opentype');} @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 900;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.otf) format('opentype');}

        body{
           margin:0 auto;
        }
        body, table, div, p ,span{font-family:'Noto Sans KR';}
        
        a{
            text-decoration: none;
            color:#333;
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
        #login{
            width:600px;
            height: 600px;
            margin:0 auto;
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

        .btn{
            width:310px;
            height: 40px;
            font-size:15px;
            background-color: #D7A35D;
            color:#fff;
            border:none;
            cursor: pointer;
            border-radius: 5px;
        }
        .btn:hover{
            background:#D7A35D;
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
        hr{
            margin-top:20px;
            background:#eee;
            
        }
        .find{
            color:#ddd;
            font-size:12px;
        }
        .find span{
            padding-left:10px;
        }
        .find span::before{
            content:'|';
            color:#333;
            padding-right: 10px;
        }
        .find span:nth-child(1):before{
            content:none;
        }
        
        .find span:nth-child(1){
            padding-left:0px;
        }
        
        .find a:hover{
            color:#707070;
        }
        input[name=userPw]::placeholder {
        font-size: 0.8775em;
      }      
    </style>
   
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">


   function drop(){
      var id = $('#userId').val();
      var pw = $('#userPw').val();
      var pw3 = $('#userPw3').val();
      if(pw==""){
         alert("비밀번호를 입력하세요.")
      }else if(pw != pw3){
         alert("비밀번호를 다시 입력해주세요.")
      }
      else{
          $.ajax({
             url : "dropdrop.do",
                type : "POST",
                data : {
                userId: id,
                    userPw : pw
                },
                dataType : "text",
                success : function(data){
                   alert("탈퇴가 완료되었습니다.")
                   location.href="main.do";
                }
          
          })
      }
   }

</script>
   
   
<title>The Venue Study Cafe</title>
</head>
<body>
<jsp:include page="/WEB-INF/templates/header.jsp"></jsp:include>
<div id="con">
    <div id="login">
    <div id="login_form">
    <form>
    <h3 class="login" style="letter-spacing:-1px;">회원탈퇴</h3>
    <hr>
        <div class="form-group">
        <label>
           <p style="text-align: left; font-size:12px; color:#FDF5DC">아이디</p>
            <input type="text" name="userId" id="userId" class="size" value="${SessionUserID}" readonly>
        </label>
        </div>
        <div class="form-group">
            <label>
            <p style="text-align: left; font-size:12px; color:#FDF5DC">비밀번호</p>
            <input type="password" name="userPw" id="userPw" class="size"  placeholder="비밀번호를 입력해주세요" >
             <input type="hidden" id="userPw3" name="userPw3" value="${SessionUserPW}">
              <p></p>
             </label>
              <p></p>
              <p>
        </div>
        <input type="button" class="btn2" onclick="location.href='myPage.do'" value="뒤로가기"></input> <span></span>
        <input type="button" class="btn2" onclick="drop()" value="회원탈퇴"/> 
     </form>
    <br/>
</div>
</div>
</div>
</body>
</html>