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
        
		function cancel(a){
			 var no = a;
			 var r_place = $('#rentalPlace').val();
			 var u_cnt = $('#umbrellaCnt').val();
			 var r_state = $('#rentalState').val();
			 var cancelOk = confirm("대여를 취소하시겠습니까?");
			 if(cancelOk){
				 $.ajax({
						url : "deleteMyRental.do",
						type : "GET",
						data: {	
							rentalNo : no,
							rentalPlace : r_place,
							umbrellaCnt : u_cnt,
							rentalState : r_state
						},
						dataType: "text",
						success : function(data){
							if(data == "ok"){
								alert("대여가 취소되었습니다.");
								location.reload(); 
							}else{	
								
							}	
						}
					})
			 }else{
				 alert("취소하셨습니다.")
			 } 
		}

		
		function modifyPlace(a){
		
 			var width = 420;
	        var height = 700;
	        
	        var left = (window.screen.width/2) - (width/2);          
	        var top = (window.screen.height/4);
	          
	        var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
	        const url = "https://9912-220-122-16-168.ngrok.io/rain/rplace.do";
	       
	        $.ajax({
	        	url: 'rplace.do',
	        	type: 'POST',
	        	data: {
	        		rentalNo: a
	        	},
	        	datatype: 'JSON',
	        	success: function(data) {
	        		if (data == "ok"){
	        			window.open(url, "변경", windowStatus);
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
                        <h1 class="text-center">대여내역</h1>
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
                            <form>
                            <div class = "mb-4 form-floating">
                               <table class="blueone"> 
                                <thead>
                                	<tr>
                                		<th scope="col">대여장소</th>
                                		<th scope="col"><b>반납장소</b></th>
                                		<th scope="col">반납장소변경</th>
                                		<th scope="col"><b>대여일자</b></th>
                                		<th scope="col"><b>반납일자</b></th> 
                                		<th scope="col"><b>우산개수</b></th>
                                		<th align=center colspan="6">
                                		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                		대&nbsp;&nbsp;&nbsp;여&nbsp;&nbsp;&nbsp;현&nbsp;&nbsp;&nbsp;황</th>	 
                                		
                                	</tr>
                                </thead>
                                <tbody>
                                <c:forEach var="rental" items="${myrentalList}"> 
                                	<tr>
                                		<td align=center><input type ="hidden" id="rentalPlace" name="rentalPlace" value="${rental.rentalPlace}">${rental.rentalPlace}</td> 
                                		<td align=center><input type ="hidden" id="returnPlace" name="returnPlace" value="${rental.returnPlace}">${rental.returnPlace}
										<td align=center><input type ="button" class="form-control-submit-button" value="변경" id="size" onclick="modifyPlace(${rental.rentalNo})"></td>
                                		<td align=center><fmt:formatDate value="${rental.rentalDate}" pattern="yyyy-MM-dd" /></td>
                                		<td align=center><fmt:formatDate value="${rental.returnDate}" pattern="yyyy-MM-dd" /></td>
                                		<td align=center><input type ="hidden" id="umbrellaCnt" name="umbrellaCnt" value="${rental.umbrellaCnt}">${rental.umbrellaCnt}</td>
                                		<td align=center><input type ="hidden" id="rentalNo" name="rentalNo" value="${rental.rentalNo}"></td>
                                		<td align=center><input type ="hidden" id="userId" name="userId" value="${SessionUserID}"></td>
                                		<td align=center><input type="hidden" id="rentalState" name="rentalState" value="${rental.rentalState}">
                                		<c:if test = "${rental.rentalState eq 'RENTAL'}">
                                		<td><input type = "button" class="form-control-submit-button" 
                                			onclick="cancel('${rental.rentalNo}','${rental.returnPlace}','${rental.umbrellaCnt}','${rental.rentalState}')" value="취소" id="size"/></td>
                               			<%-- <td><input type = "button" class="form-control-submit-button" 
                                			onclick="returns('${rental.rentalNo}','${rental.returnPlace}','${rental.umbrellaCnt}','${rental.rentalState}')" value="반납" id="size"></td>  --%>
                                		</c:if>
                                		
                                		<c:if test = "${rental.rentalState eq 'RENTALING'}">
                               			<td><input type = "button" class="form-control-submit-button" 
                                			onclick="returns('${rental.rentalNo}','${rental.returnPlace}','${rental.umbrellaCnt}','${rental.rentalState}')" value="대여중" id="size" disabled></td> 
                                		</c:if>
                                		
                                		<c:if test = "${rental.rentalState eq 'CANCEL'}">
                               			<td><input type = "button" class="form-control-submit-button" value="취소완료" id="size3" disabled>
                               			</td> 
                                		</c:if>
                                		
                                		<c:if test = "${rental.rentalState eq 'RETURN'}">
                               			<td><input type = "button" class="form-control-submit-button" 
                                			 value="반납완료" id="size2" disabled></td> 
                                		</c:if>		
                                	</tr>
                                	
                                </c:forEach>
                                </tbody>
                               </table>
                        	</div> 
                           </form>
                           <br>
                           <input type="button" class="form-control-submit-button" onclick="location.href='myPage.do'" id="backsize" value="뒤로가기">
                           
                            
                            
                            
                            
                            <!-- end of sign up form -->
 
                      </div>  <!-- end of text-box  -->
                    </div> <!-- end of col -->
               </div> <!-- end of row -->
           </div> <!-- end of container -->
       </div> <!-- end of ex-basic-1 -->
        <!-- end of basic -->


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