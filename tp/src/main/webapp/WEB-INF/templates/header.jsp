<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--header-->
<html>
<style>
/* navbar */
.navbar-default {
    background-color:    #282828;  /* transparent; */
    border-color:    #282828;
    height: 9%;
}
/* title */
.navbar-default .navbar-brand {
    color: #ffffff;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
    color: #ffffff;
}
/* link */
.navbar-default .navbar-nav > li > a {
    color: #ffffff;
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
    color: #D7A35D;
}
.navbar-default .navbar-nav > .active > a, 
.navbar-default .navbar-nav > .active > a:hover, 
.navbar-default .navbar-nav > .active > a:focus {
    color: #D7A35D;
    background-color: #D7A35D;
}
.navbar-default .navbar-nav > .open > a, 
.navbar-default .navbar-nav > .open > a:hover, 
.navbar-default .navbar-nav > .open > a:focus {
    color: #D7A35D;
    background-color: #D7A35D;
}
/* caret */
.navbar-default .navbar-nav > .dropdown > a .caret {
    border-top-color: #D7A35D;
    border-bottom-color: #D7A35D;
}
.navbar-default .navbar-nav > .dropdown > a:hover .caret,
.navbar-default .navbar-nav > .dropdown > a:focus .caret {
    border-top-color: #D7A35D;
    border-bottom-color: #D7A35D;
}
.navbar-default .navbar-nav > .open > a .caret, 
.navbar-default .navbar-nav > .open > a:hover .caret, 
.navbar-default .navbar-nav > .open > a:focus .caret {
    border-top-color: #D7A35D;
    border-bottom-color: #D7A35D;
}
/* mobile version */
.navbar-default .navbar-toggle {
    border-color: #969696;
}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
    background-color: #969696;
}
.navbar-default .navbar-toggle .icon-bar {
    background-color: #D7A35D;
}
@media (max-width: 767px) {
    .navbar-default .navbar-nav .open .dropdown-menu > li > a {
        color: #D7A35D;
    }
    .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
    .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
        color: #D7A35D;
    }
}
</style>
<body>

   <%
   String USERID = (String) session.getAttribute("SessionUserID"); //정상적으로 로그인이 진행되면 USERID,USERPW에 값이 들어옴
   String USERPW = (String) session.getAttribute("SessionUserPW");
   String USERNAME = (String) session.getAttribute("SessionUserName");
   String USERPHONE = (String) session.getAttribute("SessionUserPhone");
   String USERBIRTH = (String) session.getAttribute("SessionUserBirth");
   %>


   <div class="header">
      <nav class="navbar navbar-default navbar-fixed-top">
         <div class="container">
            <div class="navbar-header">

               <button type="button" class="navbar-toggle collapsed"
                  data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                  aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span> <span
                     class="icon-bar"></span> <span class="icon-bar"></span> <span
                     class="icon-bar"></span>
               </button>
               <a href="main.do" class="navbar-brand"
                  style="text-decoration: none;"> 
               <span style="font: 1em Edwardian Script;font-size:150%;" >The Venue</span> 
               <br>
               <span style="font: 1em Edwardian Script;font-size:80%;" >S T U D Y &nbsp;  C A F E</span> 
               
               </a>
            </div>
            <div class="collapse navbar-collapse"
               id="bs-example-navbar-collapse-1">
               <br>
               
               <ul class="nav navbar-nav navbar-right">
                   		   <li><a href="main.do">홈</a></li>
                   		   <li><a href="about.do">회사소개</a></li>
                           <li><a href="list.do">자유게시판</a></li>
                           
                           <%
                              if (USERID != null && USERPW != null && (USERID.equals("ADMIN"))) { // 로그인이 됐을시
                           %>
                           <li><a href="">전체관리자</a></li>
                           <li><a href="adminReserveList.do">예약목록</a></li> <!--예약목록  -->
                           <li><a href="userList.do">회원목록</a></li> <!--회원목록 --> 
                           <li><a href="adminInsertform.do" class="navbar-brand2">관리자등록</a></li> <!--관리자등록 -->
                           <li><a href="logout.do">로그아웃</a></li>
                           <%
                              } else if (USERID != null && USERPW != null && (USERID.equals("ADMIN1"))) { // 로그인이 됐을시
                           %>
                           <li><a href="">대구알파시티점</a></li>
                           <li><a href="admin1ReserveList.do">예약목록</a></li> <!--예약목록  -->
                           <li><a href="userList.do">회원목록</a></li> <!--회원목록 --> 
                           <li><a href="logout.do">로그아웃</a></li>
                           <%
                              } else if (USERID != null && USERPW != null && (USERID.equals("ADMIN2"))) { // 로그인이 됐을시
                           %>
                           <li><a href="">대구만촌점</a></li>
                           <li><a href="admin2ReserveList.do">예약목록</a></li> <!--예약목록  -->
                           <li><a href="userList.do">회원목록</a></li> <!--회원목록 --> 
                           <li><a href="logout.do">로그아웃</a></li>
                           <%
                              }else if(USERID != null && USERPW != null){   
                           %>                           
                           <li><a href="loginseatInfoAlpha.do">예약하기</a></li>
                           <li><a href="reserveConfirmAlpha.do">예약현황</a></li>
                           <li><a href="myPage.do">마이페이지</a></li>
                           <li><a href="logout.do">로그아웃</a></li>
                           <%
                              } else{ //로그인이 안됐을시
                           %>
                           <li><a href="seatInfoAlpha.do">예약하기</a></li>
                           <li><a href="login.do">로그인</a></li>
                           <%
                              }
                           %>
               </ul>
            </div>
         </div>
      </nav>
   </div>
</body>
</html>