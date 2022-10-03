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
  width: 1200px;
  
}  
.blueone th {
  padding: 10px;
  color: #168;
  border-bottom: 3px solid #168;
  text-align: left;
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
   width: 100px;
   height: 40px;
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
	background-color:#d2d2d2;
	border:none;
}
#size4{
   width: 90px;
   height: 40px;
   background-color: #000069;
   border:none;
}
#pad{
	padding-right:580px;
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
        <title>All Rent List</title>
        
        <!-- Styles -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;1,400&display=swap" rel="stylesheet">
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="resources/css/fontawesome-all.min.css" rel="stylesheet">
        <link href="resources/css/swiper.css" rel="stylesheet">
        <link href="resources/css/styles.css" rel="stylesheet">
        
        <!-- Favicon  -->
        <link rel="icon" href="resources/images/favicon.png">
        
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script type="text/javascript">
        
		function rental(a, b){

				 $.ajax({
						url : "updateRentaling.do",
						type : "GET",
						dataType: "text",
						data: {	
							rentalNo : a,
							rentalState : b
						},
						success : function(data){
							if(data == "ok"){
								alert("대여처리가 되었습니다.");
								location.reload(); 
							}else{	
								
							}	
						}
					})
			 	}
		
		
		function returns(a,b,c,d){

			$.ajax({
				url : "umbrellaReturn.do",
				type : "GET",
				dataType : "text",
				data : {
					rentalNo : a,
					returnPlace : b,
					umbrellaCnt : c,
					rentalState : d
				},
				success : function(data){
					if(data == "ok"){
						alert("반납처리 되었습니다.");
						location.reload();
					}else{
						
					}
					
				}
			})
		} 
		</script>
 
</head>
<body data-bs-spy="scroll" data-bs-target="#navbarExample">
<jsp:include page="/WEB-INF/templates/header.jsp"></jsp:include>

 <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1 class="text-center">전체 대여 목록</h1>
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
                             

                            <!-- Sign Up Form -->
                            <form style="margin-left: auto; margin-right: auto;">
                            <div class = "mb-4 form-floating" >
                               <table class="blueone"> 
                             <!--   <p class="mb-4"> <b></b><a class="blue" style="font-size:1.7em; font-weight: bold;" href="qr.do">QR</a></b></p> -->
                                <thead>
                                	<tr>
                                		<th scope="col"><b>번호</b></th>
                                		<th scope="col"><b>아이디</b></th>
                                		<th scope="col"><b>이름</b></th>
                                		<th scope="col"><b>연락처</b></th> 
                                		<th scope="col"><b>대여장소</b></th>
                                		<th scope="col"><b>반납장소</b></th>
                                		<th scope="col"><b>대여일자</b></th>
                                		<th scope="col"><b>반납일자</b></th>
                                		<th scope="col"><b>대여개수</b></th> 	
                                		<th scope="col"></th>	
                                	</tr>
                                </thead>
                                <tbody>
                                <c:forEach var="adminrental" items="${adminRentalList}" varStatus="status"> 
                                	<tr>
                                		<td>${adminrental.rentalNo}</td> 
                                		<td>${adminrental.userId}</td>
                                		<td>${adminrental.userName}</td> 
                                		<td>${adminrental.userPhone}</td>
                                		<td>${adminrental.rentalPlace}</td> 
                                		<td>${adminrental.returnPlace}</td>
                                		<td><fmt:formatDate value="${adminrental.rentalDate}" pattern="yyyy-MM-dd" /></td>
                                		<td><fmt:formatDate value="${adminrental.returnDate}" pattern="yyyy-MM-dd" /></td>
                                		<td>${adminrental.umbrellaCnt}</td>
                                		<td><input type ="hidden" id="rentalNo" name="rentalNo" value="${adminrental.rentalNo}"></td>
                                		<td><input type ="hidden" id="userId" name="userId" value="${SessionUserID}"></td>
                                		<td><input type = "hidden" id="rentalStatus" name="rentalStatus" value="${adminrental.rentalState}"></td>
                                		<!-- <td><input type = "button" class="form-control-submit-button" value="대여" id="size"></td> -->
                                		<c:if test = "${adminrental.rentalState eq 'RENTAL'}">
                                			<td>
                                			<input type = "button" class="form-control-submit-button" 
                                			onclick="rental('${adminrental.rentalNo}','${adminrental.rentalState}')" value="대여" id="size"></td>
                                		</c:if>
                                		
                                		<c:if test = "${adminrental.rentalState eq 'RENTALING'}">
                                			<td>
                                			<input type = "button" class="form-control-submit-button" 
                                			onclick="rentaling('${adminrental.rentalNo}','${adminrental.rentalState}')" value="대여중" id="size4" disabled></td>
                                			<td>
                                			<input type = "button" class="form-control-submit-button" 
                                			onclick="returns('${adminrental.rentalNo}','${adminrental.returnPlace}','${adminrental.umbrellaCnt}','${adminrental.rentalState}')" value="반납" id="size"></td>
                                		</c:if> 
                                		
               							<c:if test = "${adminrental.rentalState eq 'CANCEL'}">
                               			<td><input type = "button" class="form-control-submit-button" value="대여취소" id="size3" disabled>
                               			</td> 
                                		</c:if>
                                		
                                		<c:if test = "${adminrental.rentalState eq 'RETURN'}">
                               			<td><input type = "button" class="form-control-submit-button" 
                                			 value="반납완료" id="size2" disabled></td> 
                                		</c:if>
                                	</tr>
                                </c:forEach>
                                </tbody>
                               </table>
                        	</div> 
                           </form>	
                           
                           <!--페이징 처리  -->
   							<div style="text-align: center" id="page">
     							<input type="button" onclick="location.href='adminRentalList.do?viewPage=1'" value="처음" class="form-control-submit-button" id="pagecolor"></input>                 
      							<c:forEach var="i" begin="1" end="${totalPage}">
      							<input type="button" onclick="location.href='adminRentalList.do?viewPage=${i}'"  class="btn" value="${i}"></input>
      							</c:forEach>
      							<input type="button" onclick="location.href='adminRentalList.do?viewPage=${totalPage}'" value="끝" class="form-control-submit-button" id="pagecolor"></input>   
   							</div>
   							<br/>
                           <br>
                           <input type="button" class="form-control-submit-button" onclick="location.href='main.do'" value="뒤로가기" id="size">
 
                      </div>  <!-- end of text-box  -->
                    </div> <!-- end of col -->
               </div> <!-- end of row -->
           </div> <!-- end of container -->
       </div> <!-- end of ex-basic-1 -->
        <!-- end of basic -->

	<br><br><br><br><br>
      <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                    <br><br>
                        <p class="p-small">Contact  :  <a href="#your-link">010-4598-1524</a></p>
                    </div> <!-- end of col -->


					
                    <div class="col-lg-6">
                     <br><br>
                        <p class="p-small">RENT By<a href="https://themewagon.com/">UNIVERSITY</a></p>    
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