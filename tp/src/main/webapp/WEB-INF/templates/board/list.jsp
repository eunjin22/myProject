<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<html>
<head>
<meta charset="UTF-8">
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
 /*   background-color: #f5f1ee; */
   background-image: url("https://blog.kakaocdn.net/dn/dC8sug/btqE1C7CoHK/W1cWrwnkVwXYcDJxyyqoQk/img.jpg");
   background-position: center center;
   background-repeat: no-repeat;
   background-size: cover;
   padding: 0;
}

#login {
   width: 600px;
   height: 600px;
   margin: 0 auto;
   /* position: relative; */
   /* background:#ddd; */
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
   width: 80px;
   height: 30px;
   font-size: 15px;
   background-color: #fff7c4;
   color: #282828;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn2:hover {
   background: #fff7c4;
}

.btn3 {
   width: 70px;
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
   width: 30px;
   height: 30px;
   font-size: 15px;
   background-color: #FDF5DC;
   color: #282828;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn4:hover {
   background: #FDF5DC;
}

.btn5 {
   width: 100px;
   height: 40px;
   font-size: 15px;
   background-color: #D7A35D;
   color: #fff;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn5:hover {
   background: #D7A35D;
}

.btn6 {
   width: 80px;
   height: 30px;
   font-size: 15px;
   background-color: #FDF5DC;
   color: #282828;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn6:hover {
   background: #FDF5DC;
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
input[name=userId]::placeholder {
  font-size: 0.9375em;
}

input[name=userPw]::placeholder {
  font-size: 0.9375em;
}
#table{
   background-color: #FDF5DC;
   border-radius: 5px;
}
#searchType{
   width: 100px;
   height: 30px;
}
#keyword{
   width: 250px;
   height: 30px;
}
th, td {
  text-align: left;
}

</style>

<title>게시글 리스트</title>
</head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
<script type="text/javascript">
function fn_prev(page,range,rangeSize,listSize,searchType,keyword) {
   var page = ((range - 2)*rangeSize)+1;
   var range = range -1;
   
   var url = "/tp/list.do";
   url += "?page="+page;
   url += "&range=" + range;
   url += "&listSize=" + listSize;
   url += "&searchType=" + searchType;
   url += "&keyword=" + keyword;
   location.href=url;
}

function fn_pagination(page, range, rangeSize, listSize, searchType, keyword) {
   var url = "/tp/list.do";
   url += "?page=" + page;
   url += "&range=" + range;
   url += "&listSize=" + listSize;
   url += "&searchType=" + searchType;
   url += "&keyword=" + keyword;
   location.href=url;
}

function fn_next(page, range, rangeSize, listSize, searchType, keyword){
   var page = parseInt((range * rangeSize)) +1;
   var range = parseInt(range) +1;
   var url = "/tp/list.do";
   url += "?page=" + page;
   url += "&range=" + range;
   url += "&listSize=" + listSize;
   url += "&searchType=" + searchType;
   url += "&keyword=" + keyword;
   location.href = url;
}

$(document).on('click','#btnSearch',function(e){
   e.preventDefault();
   var url = "/tp/list.do";
   url += "?searchType=" + $('#searchType').val();
   url += "&keyword=" + $('#keyword').val();
   location.href = url;
   console.log(url);
});

</script>
<body>
<jsp:include page="/WEB-INF/templates/header.jsp" />
<div id="con">
      <div id="login">
         <div id="login_form">
 <% String userId = (String) session.getAttribute("SessionUserID");
    System.out.println(userId);
    %> 
<br><br>
<div class="container">
<br><br>
   <div class="page-header" style="color: #FDF5DC; font-size: 50px; text-align:left;">
      <h1>게시판</h1>
   </div>
   <br/>

   <div id="mainHide">
      <table class="table table-hover"  id="table">
         <thead style="background-color:#fff7c4">
            <tr>
               <th scope="col">글번호</th>
               <th scope="col">게시판 종류</th>
               <th scope="col">제목</th>
               <th scope="col">작성자</th>
               <th scope="col">작성일</th>
            </tr>
         </thead>
         <c:forEach var="board" items="${list}">
            <tr>
               <td>${board.boardNo}</td>
               <td>${board.boardType}</td>
               <td><a href="selectBoard.do?boardNo=${board.boardNo}" >${board.title}</a></td>
               <td>${board.userId}</td>
               <td>${board.createDate}</td>
            </tr>
         </c:forEach>
      </table>
            
   </div>
   
   <%
   if(userId != null ) {
   %>
   <div class="pull-right" style="width: 100px; margin: 10px 0;">
      <input type="button" onclick="location.href='insertform.do'" value="등록" class="btn5"></input> 
   </div>
   <% } %>
   
     
     
   <br/>
   <br/>
   <br/>
   <!--페이징 처리  -->
   <div id="paginationBox" class="pagination1">
      <ul class="pagination" style="text-align: center;">
         <c:if test="${pagination.prev}">
            <li class="page-item"><a class="page-link" href="#" onclick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}', '${pagination.listSize}','${search.searchType}', '${search.keyword}')">이전</a></li>
         </c:if>
         <c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="boardNo">
            <li class="page-item">
            <a class="page-link" href="#" onclick="fn_pagination('${boardNo}', '${pagination.range}', '${pagination.rangeSize}', '${pagination.listSize}', '${search.searchType}', '${search.keyword}')">${boardNo }</a></li>
         </c:forEach>
         <c:if test="${pagination.next}">
            <li class="page-item"><a class="page-link" href="#" onclick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}', '${pagination.listSize}', '${search.searchType}', '${search.keyword}')">다음</a></li>
         </c:if>
      </ul>
   </div>
   <br/>
      <!--검색기능  -->
   <div class="big-width2" style="text-align: center">
         <select  name="searchType" id="searchType" >
            <option value="fullSearch">전체 검색</option>
            <option value="title">제목 </option>
            <option value="content">내용 </option>
            <option value="userId">작성자 </option>
         </select>
         <input  type="text" name="keyword" id="keyword" >
         <button type="submit" class="btn6" name="btnSearch" id="btnSearch" >검색</button>
   </div>
   <br/>
</div>

</body>

</html>