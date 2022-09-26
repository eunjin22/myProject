<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
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

#info{
   font-size: 50px;
}
#info2{
   font-size: 40px;
}

#seat{
   font-size: 30px;
}
ul{
    list-style-type: none;
    margin: 0px;
    padding: 0px;
}
li{
   float: left;
   margin: 0px;
   padding: 0px;
   margin-right: 20px;
   list-style-type: none; 
}
a:link { 
  color : white;
  text-decoration: none;
}
a:visited {
  color : white;
  text-decoration: none;
}
a:hover {
  color : white;
}
a:active {
  color : white;
  text-decoration: none;
}
/* navbar */
.navbar-default {
    background-color:    #282828;  /* transparent; */
    border-color:    #282828;
    height: 10%;
}
/* title */
.navbar-default .navbar-brand {
    color: #ffffff;
    float: left;
    font-size: 20px;
}

</style>
<title>The Venue Study Cafe</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="The Venue template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
   href="resources/styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
   href="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
   href="resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
   href="resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link href="resources/plugins/jquery-datepicker/jquery-ui.css" rel="stylesheet"
   type="text/css">
<link href="resources/plugins/jquery-timepicker/jquery.timepicker.css"
   rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="resources/styles/about.css">
<link rel="stylesheet" type="text/css"
   href="resources/styles/about_responsive.css">
</head>
<body>
 <%
   String USERID = (String) session.getAttribute("SessionUserID"); //정상적으로 로그인이 진행되면 USERID,USERPW에 값이 들어옴
   String USERPW = (String) session.getAttribute("SessionUserPW");
   String USERNAME = (String) session.getAttribute("SessionUserName");
   String USERPHONE = (String) session.getAttribute("SessionUserPhone");
   String USERBIRTH = (String) session.getAttribute("SessionUserBirth");
   %>
 <div class="super_container">

      <!-- Header -->

      <div class="header">
         <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
               <div class="navbar-header">                  
                  <a href="main.do" class="navbar-brand"
                     style="text-decoration: none;"> <span
                     style="font: 1em Edwardian Script; font-size: 150%;">The
                        Venue</span> <br> 
                        <span style="font: 1em Edwardian Script; font-size: 80%;">S T U D Y &nbsp; C A F E</span>
                  </a>
               </div>
              <nav class="navbar navbar-default navbar-fixed-top">
                <ul>
                     <li><a href="main.do" class="navbar-brand2">홈</a></li>
                     <li><a href="about.do" class="navbar-brand2">회사소개</a></li>
                     <li><a href="list.do" class="navbar-brand2">자유게시판</a> </li>               
                           <%
                              if (USERID != null && USERPW != null && (USERID.equals("ADMIN")))   { // 로그인이 됐을시
                           %>
                           <li><a href="" class="navbar-brand2">전체관리자</a></li> <!--예약목록  -->
                           <li><a href="adminReserveList.do" class="navbar-brand2">예약목록</a></li> <!--예약목록  -->
                           <li><a href="userList.do" class="navbar-brand2">회원목록</a></li> <!--회원목록 -->
                           <li><a href="adminInsertform.do" class="navbar-brand2">관리자등록</a></li> <!--관리자등록 --> 
                           <li><a href="logout.do" class="navbar-brand2">로그아웃</a></li>
                           <%
                              } else if (USERID != null && USERPW != null && (USERID.equals("ADMIN1")))   { // 로그인이 됐을시
                           %>
                           <li><a href="" class="navbar-brand2">대구알파시티점</a></li>
                           <li><a href="admin1ReserveList.do" class="navbar-brand2">예약목록</a></li> <!--예약목록  -->
                           <li><a href="userList.do" class="navbar-brand2">회원목록</a></li> <!--회원목록 --> 
                           <li><a href="logout.do" class="navbar-brand2">로그아웃</a></li>
                           <%
                              } else if (USERID != null && USERPW != null && (USERID.equals("ADMIN2")))   { // 로그인이 됐을시
                           %>
                           <li><a href="" class="navbar-brand2">대구만촌점</a></li>
                           <li><a href="admin2ReserveList.do" class="navbar-brand2">예약목록</a></li> <!--예약목록  -->
                           <li><a href="userList.do" class="navbar-brand2">회원목록</a></li> <!--회원목록 --> 
                           <li><a href="logout.do" class="navbar-brand2">로그아웃</a></li>
                           <%
                              }else if(USERID != null && USERPW != null){   
                           %>
                           <li><a href="loginseatInfoAlpha.do" class="navbar-brand2">예약하기</a></li>
                           <li><a href="reserveConfirmAlpha.do" class="navbar-brand2">예약현황</a></li>
                           <li><a href="myPage.do" class="navbar-brand2">마이페이지</a></li>                   
                           <li><a href="logout.do" class="navbar-brand2">로그아웃</a></li>
                           <%
                              } else{ //로그인이 안됐을시
                           %>                           
                           <li><a href="seatInfoAlpha.do" class="navbar-brand2">예약하기</a></li>
                           <li><a href="login.do" class="navbar-brand2">로그인</a></li>
                           <%
                              }
                           %>
                        </ul>
                    </nav>
                   
                    
                    
                  </div>
                  </nav>
               </div>
            </div>
      <!--/header-->
      <div class="hamburger_bar trans_400 d-flex flex-row align-items-center justify-content-start">
         <div class="hamburger">
            <div
               class="menu_toggle d-flex flex-row align-items-center justify-content-start">
               <span>menu</span>
               <div class="hamburger_container">
                  <div class="menu_hamburger">
                     <div class="line_1 hamburger_lines"
                        style="transform: matrix(1, 0, 0, 1, 0, 0);"></div>
                     <div class="line_2 hamburger_lines"
                        style="visibility: inherit; opacity: 1;"></div>
                     <div class="line_3 hamburger_lines"
                        style="transform: matrix(1, 0, 0, 1, 0, 0);"></div>
                  </div>
               </div>
            </div>
         </div>
         </div>
         

      <!-- Home -->
      <div id="con">
      <div class="home">
         <div class="parallax_background parallax-window"
            data-parallax="scroll" data-image-src="images/about.jpg"
            data-speed="0.8"></div>
         <div class="home_container">
            <div class="container">
               <div class="row">
                  <div class="col">
                     <div class="home_content text-center">
                        <div class="home_subtitle page_subtitle" style="font-size:8.0em">The Venue is</div>
                        <br><br>
                        <div class="home_title" id="info">
                           About us
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>

      <!-- Intro -->

      <div class="intro">
         <div class="container">
            <div class="row">
               <div class="col">
                  <div class="intro_content">

                     <div class="intro_title">
                        <h2>The Venue Introduce</h2>
                     </div>
                     <div class="intro_text">
                        <p>당신의 꿈을 펼칠 공간<br>The Venue, &nbsp; 학습공간에 프리미엄을 담다.</p>
                        <br>
                        <p>저희는 여러분들의 최적의 공부 환경을 위해<br> 최선의 서비스를 제공 합니다.</p>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-lg-8">
                        <div class="intro_image">
                           <img src="resources/images/about_intro.jpg"
                              alt="https://unsplash.com/@quanle2819">
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <!-- A cafe -->

      <div class="chefs">
         <div class="container">
            <div class="row">
               <div class="col">
               <div class="home_content text-center">
                  <div class="section_title_container" id="info">
                      <div class="section_title" id="info">
                        <h1>The Venue Branch</h1>
                     </div>
                  </div>
                  <br>
                  <br>
                  <br>
                  <br>
                  <div class="section_title_container" id="info">
                     <div class="section_title" id="info">
                           대구알파시티점
                     </div>
                  </div>
                  </div>
               </div>
            </div>
            <div class="row chefs_text_row">
               <div class="col-lg-6">
                  <div class="chefs_text">
                  </div>
               </div>
               <div class="col-lg-6">
                  <div class="chefs_text">

                  </div>
               </div>
               
            </div>
            <div class="row chefs_row row-eq-height">
               <div class="col-lg-5">
                  <div class="chefs_text">
                     <img src="resources/images/no1.PNG" style="width:730px; height:500px;" alt="">
                  </div>
               </div>
               <br><br><br>
               <div class="intro_content">
                    <div class="intro_title">
                        <h2>Improved concentration</h2>
                     </div>
                     <div class="intro_text">
                        
                        <br>
                        <p>자유로운 분위기 속 집중력 향상,&nbsp; 공부 습관을 만들어주는<br> 최적의 학습공간을 제공합니다.</p>
                     </div>
                  </div>
               &nbsp;&nbsp;&nbsp;&nbsp;
               <div class="col-lg-7">
                  <div class="chefs_text">
                     <img src="resources/images/no2.PNG" style="width:730px; height:500px;" alt="">
                  </div>
               </div>
            </div>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div class="row chefs_row row-eq-height">
               <div class="col-lg-5">
                  <div class="chefs_text">
                  <div class="section_title" id="seat">
               <br><br>
                        <h1>SEAT</h1>
                     </div>
                     <img src="resources/images/seat.png" style="width:900px; height:500px;" alt="">
                  </div>
               </div>
            </div>
            <br>
            <br>
            <br><br>
            <br>
            <br>
            <br>

         
         </div>

         <!-- Chef -->
         <div
            class="col-xl-3 col-md-6 chef_col d-flex flex-column align-items-center justify-content-end">
            <div class="chef">
               <div class="chef_content text-center">
               </div>
            </div>
         </div>
      </div>
      <!--  -->
      <!-- B cafe -->
            
      <div class="chefs">
         <div class="container">
            <div class="row">
               <div class="col">
                  <div class="home_content text-center">
                  <div class="section_title_container" id="info2">
                     <div class="section_title" id="info">
                           대구만촌점
                     </div>
                  </div>
                  </div>
               </div>
            </div>
            <div class="row chefs_text_row">
               
            </div>
            
            <div class="row chefs_row row-eq-height">
               <div class="col-lg-5">
                  <div class="chefs_text">
                     <img src="resources/images/ffff.jpg" style="width:730px; height:500px;" alt="">
                  </div>
               </div>
               <div class="intro_content">

                     <div class="intro_title">
                        <h2>최적의 환경</h2>
                     </div>
                     <div class="intro_text">
                        <p>자유로운 분위기 속 공부 습관을 만들어주는<br> 최적의 학습공간을 제공합니다.</p>
                     </div>
                  </div>
               &nbsp;&nbsp;&nbsp;&nbsp;
               <div class="col-lg-7">
                  <div class="chefs_text">
                     <img src="resources/images/aaaa.jpg" style="width:730px; height:500px;" alt="">
                  </div>
               </div>
            </div>
            <br><br><br>
            <div class="row chefs_row row-eq-height">
               <div class="col-lg-5">
                  <div class="chefs_text">
                  <div class="section_title" id="seat">
               <br><br>
                        <h1>SEAT</h1>
                     </div>
                     <img src="resources/images/al.png" style="width:900px; height:500px;" alt="">
                  </div>
               </div>
            </div>
            
               
            
            
         </div>

         <!-- Chef -->
         <div
            class="col-xl-3 col-md-6 chef_col d-flex flex-column align-items-center justify-content-end">
            <div class="chef">
               <div class="chef_content text-center">            
               </div>
            </div>
         </div>
      </div>
      <!-- 이용안 cafe -->

      <div class="chefs">
         <div class="container">
            <div class="row">
               <div class="col">
                  <div class="section_title_container">
                     <div class="section_title">
<br><br><br><br><br>
                        <h1>Information</h1>
                     </div>
                  </div>
               </div>
            </div>
            <div class="row chefs_row row-eq-height">
               <div class="col-lg-5">
                  <div class="chefs_text">
                     <img src="resources/images/abc1.png" alt="">
                  </div>
               </div>
            </div>
            <div class="row chefs_row row-eq-height">
               <div class="col-lg-5">
                  <div class="chefs_text">   
                     <img src="resources/images/abc2.png" alt="">
                     <br>
                     <br>
                     <br>
                     <br>
                     <br>
                     <br>
                     <br>
                     <br>
                     <br>
                      <h1>Guide</h1>
                      <br>
                      <br>
                     <img src="resources/images/doing.png" alt="">
                     <br>
                     <br>
                     <br>
                     <br>
                     
                     <img src="resources/images/reserve.png" alt="">
                  </div>
               </div>
            </div>   
         </div> 
      
      <!-- Footer -->

<br><br><br>
   <footer class="footer">
      <div class="container">
         <div class="row">

            <!-- Footer Logo -->
            <div class="col-lg-3 footer_col">
               <div class="footer_logo">
                  <div class="footer_logo_title">The Venue</div>
                
                  <div class="footer_logo_subtitle">Study Cafe</div>
               </div>

            </div>

            <!-- Footer About -->
            <div class="col-lg-6 footer_col">
               <div class="footer_about">
                  <p>
                     카페형 독서공간 / 스터디카페 <br>여러분들의 성공을 위하여 공간을 연구하고 제공합니다.<br>책과
                     음악과 공간이 있는 The Venue에서 가치 있는 시간을 보내세요!
                  </p>
               </div>
            </div>

            <!-- Footer Contact -->
            <div class="col-lg-3 footer_col">
               <div class="footer_contact">
                  <ul>
                     <li
                        class="d-flex flex-row align-items-start justify-content-start">
                        <div>
                           <div class="footer_contact_title">Address:</div>
                        </div>
                        <div class="footer_contact_text">Daegu SuseongGu
                           AlphaCity1Ro 170</div>
                     </li>
                     <li
                        class="d-flex flex-row align-items-start justify-content-start">
                        <div>
                           <div class="footer_contact_title">Contact:</div>
                        </div>
                        <div class="footer_contact_text">+53 655 5600</div>
                     </li>
                     <li
                        class="d-flex flex-row align-items-start justify-content-start">
                        <div>
                           <div class="footer_contact_title">Email:</div>
                        </div>
                        <div class="footer_contact_text">dip@gmail.com</div>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </footer>
   </div>

   <script src="resources/js/jquery-3.2.1.min.js"></script>
   <script src="resources/styles/bootstrap-4.1.2/popper.js"></script>
   <script src="resources/styles/bootstrap-4.1.2/bootstrap.min.js"></script>
   <script src="resources/plugins/greensock/TweenMax.min.js"></script>
   <script src="resources/plugins/greensock/TimelineMax.min.js"></script>
   <script src="resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
   <script src="resources/plugins/greensock/animation.gsap.min.js"></script>
   <script src="resources/plugins/greensock/ScrollToPlugin.min.js"></script>
   <script src="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
   <script src="resources/plugins/easing/easing.js"></script>
   <script src="resources/plugins/parallax-js-master/parallax.min.js"></script>
   <script src="resources/plugins/jquery-datepicker/jquery-ui.js"></script>
   <script src="resources/plugins/jquery-timepicker/jquery.timepicker.js"></script>
   <script src="resources/js/about.js"></script>
</body>
</html>