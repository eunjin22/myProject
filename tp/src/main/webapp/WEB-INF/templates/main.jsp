<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
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
  color : #D7A35D;
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
<title>The Venue</title>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="The Venue template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
   href="resources/styles/bootstrap-4.1.2/bootstrap.min.css">
<link
   href="http://localhost:8800/team/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
   href="resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
   href="resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link href="resources/plugins/colorbox/colorbox.css" rel="stylesheet"
   type="text/css">
<link href="resources/plugins/jquery-datepicker/jquery-ui.css"
   rel="stylesheet" type="text/css">
<link href="resources/plugins/jquery-timepicker/jquery.timepicker.css"
   rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
   href="resources/styles/main_styles.css">
<link rel="stylesheet" type="text/css"
   href="resources/styles/responsive.css">

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

      <div
         class="hamburger_bar trans_400 d-flex flex-row align-items-center justify-content-start">
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

      <!-- Menu -->

      <div class="menu trans_800">
         <div
            class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
            <ul>
               <li><a href="main.do">홈</a></li>               
               <li><a href="about.do" class="navbar-brand2">회사소개</a></li>
               <li><a href="list.do">자유게시판</a></li>
               <%
               if (USERID != null && USERPW != null && (USERID.equals("ADMIN")))   { // 로그인이 됐을시
               %>
               <li><a href="">전체관리자</a></li> <!--예약목록  -->
               <li><a href="adminReserveList.do">예약목록</a></li> <!--예약목록  -->
               <li><a href="userList.do">회원목록</a></li> <!--회원목록 -->
               <li><a href="adminInsertform.do" class="navbar-brand2">관리자등록</a></li> <!--관리자등록 -->
               <li><a href="logout.do">로그아웃</a></li>
               <%
                } else if (USERID != null && USERPW != null && (USERID.equals("ADMIN1")))   { // 로그인이 됐을시
               %>
               <li><a href="">대구알파시티점</a></li>
               <li><a href="admin1ReserveList.do">예약목록</a></li> <!--예약목록  -->
               <li><a href="userList.do">회원목록</a></li> <!--회원목록 --> 
               <li><a href="logout.do">로그아웃</a></li>
               <%
                  } else if (USERID != null && USERPW != null && (USERID.equals("ADMIN2")))   { // 로그인이 됐을시
               %>
               <li><a href="">대구만촌점</a></li>
               <li><a href="admin2ReserveList.do">예약목록</a></li> <!--예약목록  -->
               <li><a href="userList.do">회원목록</a></li> <!--회원목록 --> 
               <li><a href="logout.do">로그아웃</a></li>
               <%
                  } else if(USERID != null && USERPW != null){   
               %>
               <li><a href="loginseatInfoAlpha.do">예약하기</a></li>
               <li><a href="reserveConfirmAlpha.do">예약현황</a></li>
               <li><a href="myPage.do">마이페이지</a></li>
               <li><a href="logout.do">로그아웃</a></li>
               <%
                  } else{ //로그인이 안됐을시
               %>
               <li><a href="login.do">로그인</a></li>
               <%
                  }
               %>
            </ul>
         </div>
         <div class="menu_reservations_phone ml-auto">Contact: +53 655 5600</div>
      </div>

      <!-- Home -->

      <div class="home">
         <div class="parallax_background parallax-window"
            data-parallax="scroll"
            data-image-src="https://blog.kakaocdn.net/dn/dC8sug/btqE1C7CoHK/W1cWrwnkVwXYcDJxyyqoQk/img.jpg"
            data-speed="0.8"></div>
         <div class="home_container">
            <div class="container">
               <div class="row">
                  <div class="col">
                     <div class="home_content text-center">
                        <div class="home_subtitle page_subtitle">The Venue is</div>
                        <div class="home_title">
                           <h1>STUDY CAFE</h1>
                        </div>
                        <div class="home_text ml-auto mr-auto"></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="scroll_icon"></div>
      </div>



<!-- Google Map -->

      <div class="map">
         <div id="google_map" class="google_map">
            <div class="map_container">
               <div id="map"></div>
            </div>
         </div>
      </div>

   </div>

   </div>
   </div>
   </div>
   </div>

   <!-- Footer -->

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
   <script src="resources/plugins/colorbox/jquery.colorbox-min.js"></script>
   <script src="resources/plugins/jquery-datepicker/jquery-ui.js"></script>
   <script src="resources/plugins/jquery-timepicker/jquery.timepicker.js"></script>
   <script src="resources/js/custom.js"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>
</body>
</html>