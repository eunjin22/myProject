<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<style>  
body { background: #fff; }
.blueone {
  border-collapse: collapse;
  width: 1300px;  
}  
.blueone th {
  padding: 10px;
  color: #168;
  border-bottom: 3px solid #168;
  text-align: center;
  font-size: 20px;
}
.blueone td {
  color: #669;
  padding: 10px;
  border-bottom: 1px solid #ddd;
}
.blueone tr:hover td {
  color: #004;
}
#size{
   width: 90px;
   height: 40px;
   
   border:none;
}
#size2{
   width: 90px;
   height: 40px;
   background-color: #828282;
   border:none;
}
#size3{
   width: 90px;
   height: 40px;
   background-color: #d2d2d2;
   border:none;
}
#pad{
	padding-right:700px;
}
#backsize{
   width: 110px;
   height: 40px;
}
#backsize2{
   width: 110px;
   height: 40px;
}
.pull-right {
   float: right !important;
   padding-right:300px;
}
.pull-left {
   float: left !important;
   padding-left:350px;
}
#page{
	padding-left:500px;
	padding-right:500px;
	float: left;
	display: flex;
}
#pagecolor{
    width: 70px;
    height: 40px;
	background-color:#FDEBC8;
	color:#000000;
	border:none;
	float: left;
}

</style>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <!-- SEO Meta Tags -->
        <meta name="description" content="Your description">
        <meta name="author" content="Your name">

        <!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->
        <meta property="og:site_name" content="" /> <!-- website name -->
        <meta property="og:site" content="" /> <!-- website link -->
        <meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
        <meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
        <meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
        <meta property="og:url" content="" /> <!-- where do you want your post to link to -->
        <meta name="twitter:card" content="summary_large_image"> <!-- to have large image post format in Twitter -->

        <!-- Webpage Title -->
        <title>My Board List</title>
        
        <!-- Styles -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;1,400&display=swap" rel="stylesheet">
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="resources/css/fontawesome-all.min.css" rel="stylesheet">
        <link href="resources/css/swiper.css" rel="stylesheet">
        <link href="resources/css/styles.css" rel="stylesheet">
        
        <!-- Favicon  -->
        <link rel="icon" href="resources/images/favicon.png">
        

</head>
<body data-bs-spy="scroll" data-bs-target="#navbarExample">
<jsp:include page="/WEB-INF/templates/header.jsp"></jsp:include>

 <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1 class="text-center">내 게시글</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->
        
        
        <!-- Basic -->
        <div class="ex-form-1 pt-5 pb-5" id="pad">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 offset-xl-3">
                        <div class="text-box mt-5 mb-5">
                            <form>
                            <div >
                               <table class="blueone"> 
                                <thead>
                                	<tr>
                                		<th scope="col">번호</th>
                                		<th scope="col"><b>제목</b></th>
                                		<th scope="col">아이디</th>
                                		<!-- <th scope="col">내용</th> -->
                                		<th scope="col"><b>게시날짜</b></th>                 		
                                	</tr>
                                </thead>
                                <tbody>
                                <c:forEach var="board" items="${myBoardList}"> 
                                	<tr> 
                                		<td align=center>${board.boardNo}</td> 
                                		<td align=center><a href="viewForm.do?boardNo=${board.boardNo}">${board.title}</a></td> 
                                		<td align=center>${board.userId}</td>  
                                		<td align=center><fmt:formatDate value="${board.createDate}" pattern="yyyy-MM-dd" /></td>
                                	</tr>
                                	
                                </c:forEach>
                                </tbody> 
                               </table>
                               
                        	</div> 
                        	<br><br>
                           </form>	
                             <!--페이징 처리  -->
   							<div style="text-align: center" id="page">
     							<input type="button" onclick="location.href='list.do?viewPage=1'" value="처음" class="form-control-submit-button" id="pagecolor"></input>                 
      							<c:forEach var="i" begin="1" end="${totalPage}">
      							<input type="button" onclick="location.href='list.do?viewPage=${i}'"  class="btn" value="${i}"></input>
      							</c:forEach>
      							<input type="button" onclick="location.href='list.do?viewPage=${totalPage}'" value="끝" class="form-control-submit-button" id="pagecolor"></input>   
   							</div> 
                      </div>  <!-- end of text-box  -->
                    </div> <!-- end of col -->                   
               </div> <!-- end of row -->          
           </div> <!-- end of container -->     
       </div> <!-- end of ex-basic-1 -->
       <div class="pull-left">
      	 <input type="button" class="form-control-submit-button" onclick="location.href='myPage.do'" id="backsize" value="뒤로가기">
       </div>
       <!-- <div class="pull-right">
       <input type="button" class="form-control-submit-button" onclick="location.href='form.do'" id="backsize2" value="등록">
       </div> -->
       
       
       <div>
        
        <!-- end of basic -->
		</div>
<br><br><br><br>
        <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                    <br><br>
                       <p class="p-small">Contact  :  010-4598-1524</p>
                    </div> <!-- end of col -->


					
                    <div class="col-lg-6">
                     <br><br>
                        <p class="p-small">RENT By &nbsp;UNIVERSITY</p>      
                    </div> <!-- end of col -->
                </div> <!-- enf of row -->
            </div> <!-- end of container -->
        </div> <!-- end of copyright --> 
        <!-- end of copyright -->
	 <!-- Back To Top Button -->
        <button onclick="topFunction()" id="myBtn">
            <img src="resources/images/up-arrow.png" alt="alternative">
        </button>
        <!-- end of back to top button -->
            
        <!-- Scripts -->
        <script src="resources/js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
        <script src="resources/js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
        <script src="resources/js/purecounter.min.js"></script> <!-- Purecounter counter for statistics numbers -->
        <script src="resources/js/replaceme.min.js"></script> <!-- ReplaceMe for rotating text -->
        <script src="resources/js/scripts.js"></script> <!-- Custom scripts -->
    </body>
</html>
</body>
</html>