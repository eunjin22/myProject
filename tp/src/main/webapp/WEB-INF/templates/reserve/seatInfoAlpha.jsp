<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html xmlns:th="http://www.thymeleaf.org" lang="kor">
<head>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="UTF-8">

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="/resources/css/jquery-ui-timepicker-addon.css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<script src="./datepicker/js/datepicker.ko.js"></script>

<script type="text/javascript">
   
   
   
</script>

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

button.btn8{
   position: absolute;
   top: 85px;
   left: 95px;
}

#reserve {
   width: 600px;
   height: 600px;
   margin: 0 auto;
   /* position: relative; */
   /* background:#ddd; */
}

#reserve_form {
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
   font-size: 30px;
   font-weight: 900;
   color: #FDF5DC;
}

.etc {
   font-size: 18px;
   font-weight: 900;
   /* color: #FDF5DC; */
   color: white;
}

.size {
   width: 300px;
   height: 30px;
   padding-left: 10px;
   background-color: #FDF5DC;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
   display: inline-block;
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

.btn2 {
   width: 100px;
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
   width: 105px;
   height: 40px;
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
.btn4 {
   width: 120px;
   height: 30px;
   font-size: 14px;
   background-color: #D7A35D;
   color: #fff;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn4:hover {
   background: #D7A35D;
}
#table{
   background-color: #FDF5DC;
   border-radius: 5px;
}

 
.seat .btn {

  position: absolute;

  top: 80%;

  left: 51%;
  
  width: 150px;
  
  height: 53px;

  transform: translate(-50%, -50%);

  -ms-transform: translate(-50%, -50%);

  background-color: #D7A35D;

  color: black;

  font-size: 16px;

  /* padding: 16px 30px; */

  border: none;

  cursor: pointer;

  border-radius: 5px;

  text-align: center;

}



.seat .btn:hover {

  background-color: #D7A35D;

  color: black; 

}

.seat .btn2 {

  position: absolute;

  top: 80%;

  left: 33%;
  
  width: 150px;
  
  height: 52px;

  transform: translate(-50%, -50%);

  -ms-transform: translate(-50%, -50%);

  background-color: #D7A35D;

  color: black;

  font-size: 16px;

  /* padding: 16px 30px; */

  border: none;

  cursor: pointer;

  border-radius: 5px;

  text-align: center;

}

.seat .btn2:hover {

  background-color: #D7A35D;

  color: black; 

}

.seat .btn3 {

  position: absolute;

  top: 80%;

  left: 68%;
  
  width: 160px;
  
  height: 50px;

  transform: translate(-50%, -50%);

  -ms-transform: translate(-50%, -50%);

  background-color: #D7A35D;

  color: black;

  font-size: 16px;

  /* padding: 16px 30px; */

  border: none;

  cursor: pointer;

  border-radius: 5px;

  text-align: center;

}

.seat .btn3:hover {

  background-color: #D7A35D;

  color: black; 

}

.seat .btn4 {

  position: absolute;

  top: 80%;

  left: 86%;
  
  width: 149px;
  
  height: 50px;

  transform: translate(-50%, -50%);

  -ms-transform: translate(-50%, -50%);

  background-color: #D7A35D;

  color: black;

  font-size: 16px;

  /* padding: 16px 30px; */

  border: none;

  cursor: pointer;

  border-radius: 5px;

  text-align: center;

}

.seat .btn4:hover {

  background-color: #D7A35D;

  color: black; 

}

</style>


   
<title>The Venue Study Cafe</title>
</head>
<body>
<jsp:include page="/WEB-INF/templates/header.jsp"></jsp:include>
<%
   String USERID = (String) session.getAttribute("SessionUserID"); //정상적으로 로그인이 진행되면 USERID,USERPW에 값이 들어옴
   String USERPW = (String) session.getAttribute("SessionUserPW");
   String USERNAME = (String) session.getAttribute("SessionUserName");
   String USERPHONE = (String) session.getAttribute("SessionUserPhone");
   String USERBIRTH = (String) session.getAttribute("SessionUserBirth");
%>
<br><br>
   <div id="con">
      <div id="reserve">             
         <div id="reserve_form">
          <h3 class="login" style="letter-spacing: -1px;">대구 알파시티점 좌석배치도</h3>  
          <hr>
         <%
		   if (USERID != null && USERPW != null) {
		 %>  
        <input type="button" class="btn4" onclick="location.href='loginseatInfoAlpha.do'" value="대구 알파시티점" />
        &nbsp;&nbsp;
        <input type="button" class="btn4" onclick="location.href='loginseatInfoMan.do'" value="대구 만촌점" />  
         <%
		   } else {
         %>
         <input type="button" class="btn4" onclick="location.href='seatInfoAlpha.do'" value="대구 알파시티점" />
        &nbsp;&nbsp;
        <input type="button" class="btn4" onclick="location.href='seatInfoMan.do'" value="대구 만촌점" />  
        <%
		   }
        %>
            <form>                             
        <div id="mainHide">
        <br>  
      <table class="table table-hover" id="table">
      
         <div class="seat">
            <img src="resources/images/seat.png" width="900" height="500">
            <%
		      if (USERID != null && USERPW != null) {
		    %>
            <button type="button" class="btn" onclick="location.href='reserveAlpha4-1.do'">4인실</button>  
            <button type="button" class="btn2" onclick="location.href='reserveAlpha4-2.do'">4인실</button>    
            <button type="button" class="btn3" onclick="location.href='reserveAlpha6-1.do'">6인실</button>
            <button type="button" class="btn4" onclick="location.href='reserveAlpha6-2.do'">6인실</button>
             <%
		      } else {
		     %>
		    <button type="button" class="btn" onclick="location.href='login.do'">4인실</button>  
            <button type="button" class="btn2" onclick="location.href='login.do'">4인실</button>    
            <button type="button" class="btn3" onclick="location.href='login.do'">6인실</button>
            <button type="button" class="btn4" onclick="location.href='login.do'">6인실</button>
            <%
		      }
            %>
         </div> 
       
            
   <div class="pull-right">
   <h6 class="etc" style="letter-spacing: -1px;">※원하시는 방을 선택하세요</h6>
   </div>
   </table>
   </div>
         </form>
         </div>
         </div>
         </div>
</body>
</html>