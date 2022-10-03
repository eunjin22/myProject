<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
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
        
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script type="text/javascript">
        
        	$(function(){
        		$("#rentalDate").datepicker({minDate: 0});
        	});
        	
        	function rental(){
        
        		var id = $('#userId').val();
        		var name = $('#userName').val();
        		var phone = $('#userPhone').val();
        		var renPlace = $('#rentalPlace').val();
        		var retPlace = $('#returnPlace').val();
        		var umCnt = $('#umbrellaCnt').val();
        		var renDate = $('#rentalDate').val();
        		var retDate = $('#returnDate').val();
        		
        		
        		if(renDate == ""){
        			alert("대여날짜를 선택하세요.")
        		}else if(renPlace == ""){
        			alert("대여지점을 선택하세요.")
        		}else if(umCnt ==""){
        			alert("우산갯수를 선택하세요.")
        		}else if(retPlace == ""){
        			alert("반납지점을 선택하세요.")
        		}else{	
        			$.ajax({ 
        				url : 'insertRental.do',
        				type : 'GET',
        				datatype : 'text',
        				data :{
        					userId : id,
        					userName : name,
        					userPhone : phone,
        					rentalPlace : renPlace,
        					returnPlace : retPlace,
        					umbrellaCnt : umCnt,
        					rentalDate : renDate,
        					returnDate : retDate
        				},
        				success : function(data){
        					if(data == "ok"){
        						alert("대여되었습니다.")
        						location = "myrentList.do"
        					}else if(data == "fail"){
        						alert("대여가능한 우산이 없습니다.  다른 장소를 선택하세요.");
        					}
        				}
        			});
        		}
        		
        	}
        </script>
        <!-- Webpage Title -->
        <title>EUNJIN_Rendrella </title>
        
        <!-- Styles -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;1,400&display=swap" rel="stylesheet">
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="resources/css/fontawesome-all.min.css" rel="stylesheet">
        <link href="resources/css/swiper.css" rel="stylesheet">
        <link href="resources/css/styles.css" rel="stylesheet">
        <!--timepicker  -->
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<link rel="stylesheet" href="/resources/css/jquery-ui-timepicker-addon.css" />
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
		<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
		<script src="./datepicker/js/datepicker.ko.js"></script>
        <!-- Favicon  -->
        <link rel="icon" href="resources/images/favicon.png">
        <style>
        #aa{
        	height:500px;
        }
        #img{
        	width:300px;
        	height:350px;
        	border-radius: 40px 80px;
        }
        </style>
    </head>  
    <body> 
    <jsp:include page="/WEB-INF/templates/header.jsp"></jsp:include>
<%
   String USERID = (String) session.getAttribute("SessionUserID"); //정상적으로 로그인이 진행되면 USERID,USERPW에 값이 들어옴
   String USERPW = (String) session.getAttribute("SessionUserPW");
   String USERNAME = (String) session.getAttribute("SessionUserName");
   String USERPHONE = (String) session.getAttribute("SessionUserPhone");
%>

        <!-- Header -->
        <header id="header" class="header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="text-container">
                            <h1 class="h1-large">Rendrella는 <span class="replace-me">우산 대여플랫폼, 학생 복지제공, 신속한 대응</span></h1>
                            <!-- <p class="p-large"></p> -->
                            <br><br><br>
                            <a class="btn-solid-lg" href="main.do#features">문의사항</a>
                        </div> <!-- end of text-container -->
                    </div> <!-- end of col -->
                    <div class="col-lg-6"> 
                        <div class="image-container">
                            <img class="img-fluid" src="resources/images/ums.png" alt="alternative">
                        </div> <!-- end of image-container -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of header -->
        <!-- end of header -->

<br><br><br>
        <!-- Features -->
        <div id="features" class="cards-1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="h2-heading">rendrella를 이용하시는 분들 <span>필독</span></h2>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
                <div class="row">
                    <div class="col-lg-12">
                        
                        <!-- Card -->
                        <div class="card">
                            <div >
                            <img src = "resources/images/rent.png">
                                <span></span>
                            </div>
                            <div class="card-body">
                            <br>
                                <h4 class="card-title">대여/반납</h4>
                                <p>의양관, 사회관, 공학관, 바우어관, 본관 <br> 5군데에서 대여/반납이 가능합니다.<br>
                                	각 공간 당 20개의 우산이  <br>배치되어있습니다.</p>
                            </div>
                        </div>
                        <!-- end of card -->

 						<!-- Card -->
                        <div class="card">
                            <div>
                            <img src ="resources/images/money.png">
                                <span></span>
                            </div>
                            <div class="card-body">
                            <br>
                                <h4 class="card-title">보증금</h4>
                                <p>5000원의 보증금을 받고있습니다!<br>
                                14일 이내 반납시 전액환급 해드립니다.<br>
                                	위약시 반환안되는점 참고해주세요. </p>
                            </div>
                        </div>
                        <!-- Card -->
                        <div class="card">
                            <div>
                             <img src ="resources/images/phone.png">
                                <span></span>
                            </div>
                            <div class="card-body">
                            <br>
                                <h4 class="card-title">문의사항</h4>
                                <p>대여, 취소와 관련하여 문의사항이 있을시.<br>
                                	위의 전화번호로 연락주시면 됩니다.<br>
                                	<h6><b>010-4598-1524</b></h6></p>
                            </div>
                        </div>
                        <!-- end of card -->

                       
                        <!-- end of card -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of cards-1 -->
        <!-- end of services -->
<%
	if(USERID == null && USERPW == null){
%>
        <!-- Invitation -->
       <div id="details" >
        <div class="basic-3" id="aa">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h4>우산대여는 로그인후 사용가능합니다.</h4>
                        <a class="btn-outline-lg page-scroll" href="login.do">로그인 하러가기</a>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of basic-3 -->
       </div>
        <!-- end of invitation -->
        
<%
   }else if(USERID != null && USERPW != null && (USERID.equals("ADMIN"))){ 
%>



<%
	}else if(USERID != null && USERPW != null){
%>
      <!-- Details 1 -->
        <div id="details" class="basic-1 bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-xl-5">        
                        <h2>대여하기</h2>
                           <!--  <p class="mb-4">Would you like to rent an umbrella? Then just Enter it now</p> -->

                            <!-- Sign Up Form -->
                            <form>
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="userId" name="userId" placeholder="id" value="${SessionUserID}" readonly>
                                    <label for="floatingInput">아이디</label>
                                </div>                                
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="userName" name="userName" placeholder="Your name" value="${SessionUserName}" readonly>
                                    <label for="floatingInput">이름</label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="tel" class="form-control" id="userPhone" name="userPhone" placeholder="tel" value="${SessionUserPhone}" readonly>
                                    <label for="floatingInput">전화번호</label>
                                </div>
                                <div class="mb-4 form-floating">
                                	
                                    <input type="text" class="form-control" id="rentalDate" name="rentalDate" placeholder="rentalDate" autocomplete="off">
                                    <label for="floatingInput">대여날짜</label>
                                </div>
                                
                                <div class="mb-4 form-floating">
                               	대여장소
                                    <label for="floatingInput"></label>
                                    <select id="rentalPlace" name="rentalPlace" class="form-control"  required>
                                  		  <option value="">대여장소 선택</option>
	                                    <c:forEach var="total" items="${totalCount}">
	                                    	<c:if test = "${total.umbrellaTotalCount ne 0}">
	                                    		<option value="${total.rentalPlace}">${total.rentalPlace}:남은개수(${total.umbrellaTotalCount})</option>
	                                    	</c:if>
	                                    	<c:if test = "${total.umbrellaTotalCount eq 0}">
	                                    		<option value="${total.rentalPlace}">${total.rentalPlace}:재고없음</option>
	                                    	</c:if>
	                                    </c:forEach>	
                                    </select>                                   
                                </div>
                                <div class="mb-4 form-floating">
                               	대여갯수
                                    <label for="floatingInput"></label>
                                    <select id="umbrellaCnt" name="umbrellaCnt" class="form-control"  required>
                                    	<option value="">우산개수 선택</option>
                                    	<option value="1">1</option>
                                    	<option value="2">2</option>
                                    	<option value="3">3</option>
                                    </select>                                   
                                </div>
                                <div class="mb-4 form-floating">
                                	반납장소
                                    <label for="floatingInput"></label>
                                    <select id="returnPlace" name="returnPlace" class="form-control"  required>
                                    	<option value="">반납장소 선택</option>
                                    	<option value="본관">본관</option>
                                    	<option value="의양관">의양관</option>
                                    	<option value="사회관">사회관</option>
                                    	<option value="공학관">공학관</option>
                                    	<option value="바우어관">바우어관</option>
                                    </select>     
                                </div>
                                
                                <input type="button" class="form-control-submit-button" onclick="rental()" value="대여하기"/>
                           	
                            </form>
                            <!-- end of sign up form -->
                    </div> <!-- end of col -->
                    <div class="col-lg-6 col-xl-7">
                        <div class="image-container">
                            <img src="resources/images/rains.png" style="width:820px; height:700px;" alt="alternative">
                        </div> <!-- end of image-container -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of basic-1 -->
        <!-- end of details 1 -->
        <%} %>
        
  <!-- Testimonials -->
        <div id="place" class="slider-1 bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="h2-heading">우산  대여·반납 장소</h2>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
                <div class="row">
                    <div class="col-lg-12">

						<br>
						<br>
						<br>
                        <!-- Card Slider -->
                        <div class="slider-container">
                            <div class="swiper-container card-slider">
                                <div class="swiper-wrapper">
                                    
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img src="resources/images/aa.jfif" alt="alternative" id="img">
                                            <div class="card-body">
                                                <p class="testimonial-text">본관</p>
                                                <p class="testimonial-author">3F 우편실</p>
                                            </div>
                                        </div>
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->
            
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img src="resources/images/bb.jfif" alt="alternative" id="img">
                                            <div class="card-body">
                                                <p class="testimonial-text">바우어관</p>
                                                <p class="testimonial-author">1F 행정실</p>
                                            </div>
                                        </div>        
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->
            
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img src="resources/images/cc.jfif" alt="alternative" id="img">
                                            <div class="card-body">
                                                <p class="testimonial-text">의양관</p>
                                                <p class="testimonial-author">B1 학생회실</p>
                                            </div>
                                        </div>        
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->
            
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img src="resources/images/dd.jfif" alt="alternative" id="img">
                                            <div class="card-body">
                                                <p class="testimonial-text">사회관</p>
                                                <p class="testimonial-author">1F 행정실</p>
                                            </div>
                                        </div>
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->
            
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img src="resources/images/ee.jfif" alt="alternative" id="img">
                                            <div class="card-body">
                                                <p class="testimonial-text">공학관</p>
                                                <p class="testimonial-author">1F 행정실</p>
                                            </div>
                                        </div>        
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->

                                
                                </div> <!-- end of swiper-wrapper -->
            
                                <!-- Add Arrows -->
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                                <!-- end of add arrows -->
            
                            </div> <!-- end of swiper-container -->
                        </div> <!-- end of slider-container -->
                        <!-- end of card slider -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of slider-1 -->
        <!-- end of testimonials -->
   
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