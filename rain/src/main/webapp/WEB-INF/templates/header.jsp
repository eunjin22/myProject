<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#navbarExample{
	padding : 0px 0px 8px;
}
</style>
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
                <a class="navbar-brand logo-image" href="main.do"><img src="resources/images/apap.png" alt="alternative" style="width:200px;height:100px;"></a> 

                <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                    <ul class="navbar-nav ms-auto navbar-nav-scroll">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="main.do">홈</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="main.do#features">소개</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="main.do#place">대여·반납 장소</a>
                        </li>
                        <%
                              if (USERID != null && USERPW != null && (USERID.equals("ADMIN"))) { // 로그인이 됐을시
                        %>
                        <li class="nav-item">
                            <a class="nav-link" href="adminRentalList.do">전체 대여 목록</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="list.do">자유게시판</a>
                        </li>
                        <span class="nav-item">
                        	<a href="logout.do" class="btn-outline-sm" >로그아웃</a>
                    	</span>
                        <%
                              }else if(USERID != null && USERPW != null){  // 사용자로그인
                         %> 
                        <li class="nav-item">
                            <a class="nav-link" href="main.do#details">우산 대여하기</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="list.do">자유게시판</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="myPage.do">마이페이지</a>
                        </li>
                        <span class="nav-item">
                        	<a href="logout.do" class="btn-outline-sm" >로그아웃</a>
                    	</span>
                        <%
                              } else{ //로그아웃상태
                        %>
                        <li class="nav-item">
                            <a class="nav-link" href="main.do#details">우산 대여하기</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="list.do">자유게시판</a>
                        </li>
                        <span class="nav-item">
                        	<a href="login.do" class="btn-outline-sm" >로그인</a>
                    	</span>
                    	<%
                              }
                        %>
                </div> <!-- end of navbar-collapse -->
            </div> <!-- end of container -->
        </nav> <!-- end of navbar -->
        <!-- end of navigation -->
</body>
</html>