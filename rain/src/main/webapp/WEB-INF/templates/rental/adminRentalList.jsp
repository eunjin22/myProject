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
   width: 90px;
   height: 40px;
}
#pad{
	padding-right:580px;
}
#page{
	padding-left:auto;
	padding-right:auto;
}
#pagecolor{
    width: 90px;
    height: 40px;
	background-color:#323C73;
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
        <title>My Rent List</title>
        
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
        
		function cancel(){
			 var no = $('#rentalNo').val();
			 var id = $('#userId').val();
/* 			 alert(no)
			 alert(id) */
		     $.ajax({
				url : "deleteMyRental.do",
				type : "GET",
				data: {	
					rentalNo : no,
					userId : id
				},
				dataType: "text",
				success : function(data){
					alert("cancel?");
					location.reload();
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
                                		<th scope="col"></th>	
                                	</tr>
                                </thead>
                                <tbody>
                                <c:forEach var="adminrental" items="${adminRentalList}"> 
                                	<tr>
                                		<td>${adminrental.rentalNo}</td> 
                                		<td>${adminrental.userId}</td>
                                		<td>${adminrental.userName}</td> 
                                		<td>${adminrental.userPhone}</td>
                                		<td>${adminrental.rentalPlace}</td> 
                                		<td>${adminrental.returnPlace}</td>
                                		<td><fmt:formatDate value="${adminrental.rentalDate}" pattern="yyyy-MM-dd" /></td>
                                		<td><fmt:formatDate value="${adminrental.returnDate}" pattern="yyyy-MM-dd" /></td>
                                		<td><input type = "button" class="form-control-submit-button" 
                                			onclick="cancel()" value="cancel" id="size"></td>
                                		<td><input type ="hidden" id="rentalNo" name="rentalNo" value="${adminrental.rentalNo}"></td>
                                		<td><input type ="hidden" id="userId" name="userId" value="${SessionUserID}"></td>
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
         							<%-- <a href="reserveConfirm.do?viewPage=${i}" class="btn4">${i}</a> --%>
      							</c:forEach>
      							<input type="button" onclick="location.href='adminRentalList.do?viewPage=${totalPage}'" value="끝" class="form-control-submit-button" id="pagecolor"></input>   
   							</div>
   							<br/>
                           <!--  <p style="text-align: right; font-size: 13px; color: #FF6464"><b>※반납일자를 반드시 확인해주세요.</b></p> -->
                           <br>
                           <input type="button" class="form-control-submit-button" onclick="location.href='main.do'" value="back" id="size">
                            
                            
                            
                            
                            <!-- end of sign up form -->
 
                      </div>  <!-- end of text-box  -->
                    </div> <!-- end of col -->
               </div> <!-- end of row -->
           </div> <!-- end of container -->
       </div> <!-- end of ex-basic-1 -->
        <!-- end of basic -->


        <!-- Footer -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-col first">
                            <h6>About Website</h6>
                            <p class="p-small">학교 안에서 자유롭게 대여가능한 RENDRELLA, <br> 지금 바로 만나보세요! <br>
                            	본관, 의양관, 사회관, 공학관,<br>바우어관, 본관에서 만나요~*^^*
                            </p>
                        </div> <!-- end of footer-col -->
                        <div class="footer-col second">
                            <h6>Links</h6>
                            <ul class="list-unstyled li-space-lg p-small">
                                <li>Important: <a href="terms.html">Terms & Conditions</a>, <a href="privacy.html">Privacy Policy</a></li>
                                <li>Useful: <a href="#">Colorpicker</a>, <a href="#">Icon Library</a>, <a href="#">Illustrations</a></li>
                                <li>Menu: <a href="#header">Home</a>, <a href="#features">Features</a>, <a href="#details">Details</a>, <a href="#pricing">Pricing</a></li>
                            </ul>
                        </div> <!-- end of footer-col -->
                        <div class="footer-col third">
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-facebook-f fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-twitter fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-pinterest-p fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-instagram fa-stack-1x"></i>
                                </a>
                            </span>
                            <p class="p-small">Quam posuerei pellent esque university <a href="mailto:contact@site.com"><strong>contact@site.com</strong></a></p>
                        </div> <!-- end of footer-col -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of footer -->  
        <!-- end of footer -->

   
        <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <p class="p-small">Copyright © <a href="#your-link">RENDRELLA</a></p>
                    </div> <!-- end of col -->

                    <div class="col-lg-6">
                        <p class="p-small">RENT By<a href="https://themewagon.com/">UNIVERSITY</a></p>    
                    </div> <!-- end of col -->
                </div> <!-- enf of row -->
            </div> <!-- end of container -->
        </div> <!-- end of copyright --> 
        <!-- end of copyright -->

        <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <p class="p-small">Copyright © <a href="#your-link">Your name</a></p>
                    </div> <!-- end of col -->
                    <div class="col-lg-6">
                        <p class="p-small">Distributed By<a href="https://themewagon.com/"> Themewagon</a></p>
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