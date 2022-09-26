<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body data-bs-spy="scroll" data-bs-target="#navbarExample">
   <%
   String USERID = (String) session.getAttribute("SessionUserID"); //정상적으로 로그인이 진행되면 USERID,USERPW에 값이 들어옴
   String USERPW = (String) session.getAttribute("SessionUserPW");
   String USERNAME = (String) session.getAttribute("SessionUserName");
   String USERPHONE = (String) session.getAttribute("SessionUserPhone");
   %>
   
   <!-- Navigation -->
        <nav id="navbarExample" class="navbar navbar-expand-lg fixed-top navbar-light" aria-label="Main navigation">
            <div class="container">

                <!-- Image Logo -->
                <a class="navbar-brand logo-image" href="main.do"><img src="resources/images/logo.svg" alt="alternative"></a> 

                <!-- Text Logo - Use this if you don't have a graphic logo -->
                <!-- <a class="navbar-brand logo-text" href="index.html">Ioniq</a> -->

                <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                    <ul class="navbar-nav ms-auto navbar-nav-scroll">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="main.do">HOME</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#features">ABOUT</a>
                        </li>
                        <%
                              if (USERID != null && USERPW != null && (USERID.equals("ADMIN"))) { // 로그인이 됐을시
                        %>
                        <li class="nav-item">
                            <a class="nav-link" href="#details">RENT LIST</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#pricing">Q&A</a>
                        </li>
                        <span class="nav-item">
                        	<a href="logout.do" class="btn-outline-sm" >Log out</a>
                    	</span>
                        <%
                              }else if(USERID != null && USERPW != null){  // 사용자로그인
                         %> 
                        <li class="nav-item">
                            <a class="nav-link" href="#details">RENT UMBRELLA</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#pricing">Q&A</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="myPage.do">MYPAGE</a>
                        </li>
                        <span class="nav-item">
                        	<a href="logout.do" class="btn-outline-sm" >Log out</a>
                    	</span>
                        <%
                              } else{ //로그아웃상태
                        %>
                        <li class="nav-item">
                            <a class="nav-link" href="login.do">RENT UMBRELLA</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#pricing">Q&A</a>
                        </li>
                        <span class="nav-item">
                        	<a href="login.do" class="btn-outline-sm" >Log in</a>
                    	</span>
                    	<%
                              }
                        %>
                    	
                        <!-- <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">Drop</a>
                            <ul class="dropdown-menu" aria-labelledby="dropdown01">
                                <li><a class="dropdown-item" href="article.html">HOME</a></li>
                                <li><div class="dropdown-divider"></div></li>
                                <li><a class="dropdown-item" href="terms.html">Terms Conditions</a></li>
                                <li><div class="dropdown-divider"></div></li>
                                <li><a class="dropdown-item" href="privacy.html">Privacy Policy</a></li>
                            </ul>
                        </li>
                    </ul>
                    <span class="nav-item">
                        <a href="login.do" class="btn-outline-sm" >Log in</a>
                    </span> -->
                </div> <!-- end of navbar-collapse -->
            </div> <!-- end of container -->
        </nav> <!-- end of navbar -->
        <!-- end of navigation -->
</body>
</html>