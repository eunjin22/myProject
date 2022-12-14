<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
</style>

<script type="text/javascript">
   
   $(function() {
      $("#reserveDate").datepicker({ minDate: 0});      
   } );
   
   function reservecheck() {
      var resNo = $("#reserveNo").val();
      var id = $("#userId").val();
      var name = $("#userName").val();
      var phone = $("#userPhone").val();
      var rDate = $("#reserveDate").val();
      var sTime = $("#reserveSTime").val();
      var eTime = $("#reserveETime").val();
      var rNo = $("#roomNo").val();
      var bNo = $("#branchNo").val();
      var uBirth = $("#userBirth").val();
      
      
      if(rDate == ""){
         alert("?????? ????????? ???????????????.")
      }else if(sTime == ""){
         alert("????????????????????? ???????????????.")
      }else if(eTime == ""){
         alert("????????????????????? ???????????????.")
      }else if(rNo == ""){
         alert("?????? ???????????? ???????????????.")
      }else if(bNo == ""){
         alert("??????????????? ???????????????.")
      }else{
         $.ajax({
            url:'insertreserve.do',
            type:'POST',
            data:{
               reserveNo:resNo,
               userId:id,
               userName:name,
               userPhone:phone,
               reserveDate:rDate,
               reserveSTime:sTime,
               reserveETime:eTime,
               roomNo:rNo,
               branchNo:bNo,
               userBirth:uBirth
            },
            datatype:'JSON',
            
            success: function(data) {
               if(data == "ok") {
                  alert("????????? ?????????????????????.");               
                  location = "reserveConfirm.do"
               } else if(data == "fail") {
                  alert("?????? ????????? ????????????.");
               } else if(data == "over"){
                  alert("??????????????? ?????? ??????????????????.")
               }
            }
         });
      }
   }
   
</script>
   
<title>The Venue Study Cafe</title>
</head>
<body>
<jsp:include page="/WEB-INF/templates/header.jsp"></jsp:include>
<br><br>
   <div id="con">
      <div id="reserve">
         <div id="reserve_form">
            <form method="post" action="insertreserve.do">
               <h3 class="login" style="letter-spacing: -1px;">????????????</h3>
               <hr>
               <div class="form-group">
               <input type="hidden" id="userBirth" name="userBirth" value="${SessionUserBirth}">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">??????????????????</p>
                     <input type="text" class="size" id="userId" name="userId" readonly="readonly" value="${SessionUserID}">
                      <input type="hidden" id="userPw" name="userPw" value="${SessionUserPW}">
                  </label>
               </div>
               
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">????????????</p> 
                     <input type="text" class="size" id="userName" name="userName" readonly="readonly" value="${SessionUserName}">
                  </label>
               </div>
               
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">????????? ?????????</p>
                     <input type="text" class="size" id="userPhone" name="userPhone" readonly="readonly" value="${SessionUserPhone}">
                  </label>
               </div>
               
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">????????????</p>  
                     <input type="text" class="size" id="reserveDate" placeholder=" ??????????????????" name="reserveDate">
                  </label>
               </div>
               
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">??????????????????</p> 
                     <select id="reserveSTime" name="reserveSTime" class="size">
                  <option value="">??????????????????</option>
                  <%for(int i=10; i<=23; i++) {%>
                  <option value="<%=i%>"><%=i %></option>
                  <%} %>
               </select>
                  </label>       
               </div>
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">??????????????????</p> 
                     <select id="reserveETime" name="reserveETime" class="size">
                  <option value="">??????????????????</option>
                  <%for(int i=11; i<=24; i++) {%>
                  <option value="<%=i%>"><%=i %></option>
                  <%} %>
               </select>
                  </label>
               </div>
               
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">???????????????</p> 
                     <select id="roomNo" name="roomNo" class="size">           
                  <option value="3">3 - 6??????</option>
               </select>
                  </label>
               </div>
               
               <div class="form-group">
                  <label>
                     <p style="text-align: left; font-size: 12px; color: #FDF5DC">????????????</p> 
                     <select id="branchNo" name="branchNo" class="size">
                           
                  <option value="2">2??? ???????????????</option>
               </select>
                  </label>
               </div>
                  <p></p>
                  <br>
                  <p>
                     <input type="button" class="btn2" onclick="location.href='loginseatInfoMan.do'" value="?????? ??????" />  
                     <!-- <button type="submit" class="btn2">?????? ??????</button> -->
                     <input type="button" class="btn2" onclick="reservecheck()" value="????????????" />
                  </p>
            </form>
         </div>
</body>
</html>