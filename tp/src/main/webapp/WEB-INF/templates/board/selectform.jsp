<%@page import="tp.service.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tp.service.BoardVO" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
   width: 120px;
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

</style>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
   
   function update() {
      var Id = $('#userId').val();
      var No = $('#boardNo').val();
      var type = $('#boardType').val();
      var b_title = $('#title').val();
      var b_content = $('#content').val();
      
      $.ajax({
         url:'updateBoard.do',
         type:'GET',
         data:{
            userId:Id,
            boardNo:No,
            boardType:type,
            title:b_title,
            content:b_content
         },
         datatype:'JSON',
         
         success: function(data) {
            if(data == "fail") {
               alert("게시글 수정권한이 없습니다.");
            } else if(data == "success") {
               alert("게시글이 수정 되었습니다.");
               location = "list.do"
            }
            
         }
      });
      }
   
   function deleteb() {
      var No = $('#boardNo').val(); 
      var Id = $('#userId').val();
      
      $.ajax({
         url:'deleteBoard.do',
         type:'GET',
         data:{
            boardNo:No,
            userId:Id 
         },
         datatype:'JSON',
         
         success: function(data) {
            if(data =="fail") {
               alert("게시글 삭제권한이 없습니다.");
            } else if(data == "success") {
               alert("게시글이 삭제 되었습니다.");
               location = "list.do"
            }
            
         }
      });
      }
</script>

<title>The Venue Study Cafe</title>
</head>
<body>
<jsp:include page="/WEB-INF/templates/header.jsp" />
<div id="con">
      <div id="login">
         <div id="login_form">
<% String userId = (String) session.getAttribute("SessionUserID");
   session = request.getSession();
   BoardVO writer=(BoardVO) request.getAttribute("board");
   
      %>
<br><br><br>
    <div class="container">
        <div class="page-header"  style="color: #FDF5DC; font-size: 50px; text-align:left;">
             게시글 보기
        <br>
        </div>
        <br/>
        <input id="userId" value="${board.userId}" type="hidden" />
        <input id="boardNo" value="${board.boardNo}" type="hidden" />
        <input id="createDate" type="hidden" />
        <table class="table">
            <tr>
                <th style="padding:13px 0 0 15px; color: #FDF5DC; font-size: 17px;" >게시판 선택</th>
                <td>
                    <div class="pull-left">
                         
                  <select class="form-control input-sm" id="boardType" >
                     <option>--분류--</option>
                     <% if(session.getAttribute("SessionUserID")!=null && (userId.equals("ADMIN") || userId.equals("ADMIN1") || userId.equals("ADMIN2"))){ %>
                     <option value="공지사항" selected="${board.boardType == '공지사항'}">공지사항</option>
                     <%}%>
                     <option value="자유게시판" selected="${board.boardType == '자유게시판'}">자유게시판</option>
                     
                  </select>
               
                    </div>
                </td>
            </tr>            
            <tr>
            <% if(session.getAttribute("SessionUserID")!=null && ( userId.equals("ADMIN") || userId.equals("ADMIN1") || userId.equals("ADMIN2") || userId.equals(writer.getUserId()))){ %>
                <th style="padding:13px 0 0 15px; color: #FDF5DC; font-size: 17px;">제목</th>
                <td><input id="title" type="text" class="col-md-1 form-control input-sm" value="${board.title}" /></td>
            <%}else{ %>
                <th style="padding:13px 0 0 15px; color: #FDF5DC; font-size: 17px;">제목</th>
                <td><input id="title" type="text" class="col-md-1 form-control input-sm" value="${board.title}" readonly/></td>            
            <%} %>
            </tr>
            <tr>
            <% if(session.getAttribute("SessionUserID")!=null && ( userId.equals("ADMIN") || userId.equals("ADMIN1") || userId.equals("ADMIN2") || userId.equals(writer.getUserId()))){ %>
                <th style="padding:13px 0 0 15px; color: #FDF5DC; font-size: 17px;">내용</th>
                <td><textarea id="content" class="col-md-1 form-control input-sm" maxlength="140" rows="7" style="height: 200px;">${board.content}</textarea><span class="help-block"></span>
                </td>
            <%} else{%>
               <th style="padding:13px 0 0 15px; color: #FDF5DC; font-size: 17px;">내용</th>
                <td><textarea id="content" class="col-md-1 form-control input-sm" maxlength="140" rows="7" style="height: 200px;"readonly>${board.content}</textarea><span class="help-block"></span>
            <%} %>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
        </table>
        
        <div class="pull-left">
            <button type="submit" onclick="location.href='list.do'" class="btn2">목록으로</button>
            
        </div>
      <% if(userId != null ){ %>
        <div class="pull-right">
        <% if(userId.equals(writer.getUserId())||(writer.getBoardType().equals("공지사항") &&(userId.equals("ADMIN") || userId.equals("ADMIN1") || userId.equals("ADMIN2")))){ %>
            <input type="button" class="btn2" id="update" onclick="update()" value="수정" />
        <%} if( userId.equals("ADMIN") || userId.equals("ADMIN1") || userId.equals("ADMIN2") || userId.equals(writer.getUserId())){ %>
            <input type="button" class="btn2" id="delete" onclick="deleteb()" value="삭제" />
        <%} %>        
        </div>
        <%} %>
 
    </div>
</div>
</div>
</div>    
</body>
</html>