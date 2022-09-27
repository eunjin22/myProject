<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        		var renDate = $('#rentalDate').val();
        		var renPlace = $('#rentalPlace').val();
        		var retPlace = $('#returnPlace').val();
        		var retDate = $('#returnDate').val();
        		
        		
        		if(renDate == ""){
        			alert("대여날짜를 선택하세요.")
        		}else if(renPlace == ""){
        			alert("대여지점을 선택하세요.")
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
        					rentalDate : renDate,
        					returnDate : retDate
        				},
        				success : function(data){
        					if(data == "ok"){
        						alert("success")
        						location = "main.do"
        					}else if(data == "fail"){
        						alert("대여 실패");
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
                            <h1 class="h1-large">Rendrella is <span class="replace-me">sharing service, convenience, quick response</span></h1>
                            <!-- <p class="p-large"></p> -->
                            <br><br><br>
                            <a class="btn-solid-lg" href="signUp.do">Sign up for free</a>
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
                                	배치가 되었으면 하는 공간이 <br>있다면 문의사항을 남겨주세요.</p>
                            </div>
                        </div>
                        <!-- end of card -->

                        <!-- Card -->
                        <div class="card">
                            <div>
                             <img src ="resources/images/QR.png">
                                <span></span>
                            </div>
                            <div class="card-body">
                            <br>
                                <h4 class="card-title">QR인증</h4>
                                <p>대여와 반납시에 QR인증을 해야합니다.<br>
                                	반납시 QR인증을 하지 않으면 위약처리<br>
                                	되는 점 참고해주세요.</p>
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
                        <!-- end of card -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of cards-1 -->
        <!-- end of services -->

<%
	if(USERID == null && USERPW == null){
%>
        <!-- Details 1 -->
        <div id="details" class="basic-1 bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-xl-5">        
                        <h2>RENT UMBRELLA</h2>
                            <p class="mb-4">Would you like to rent an umbrella? Then just Enter it now</p>

                            <!-- Sign Up Form -->
                            <form>
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="userId" name="userId"  placeholder="id" readonly>
                                    <label for="floatingInput">Id</label>
                                </div>                                
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="userName" name="userName"  placeholder="Your name" readonly>
                                    <label for="floatingInput">Your name</label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="tel" class="form-control" id="userPhone" name="userPhone" placeholder="tel" readonly>
                                    <label for="floatingInput">PhoneNumber</label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="rentalPlace" name="rentalPlace" placeholder="rentalPlace" readonly>
                                    <label for="floatingInput">RentalPlace</label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="returnPlace" name="returnPlace" placeholder="returnPlace" readonly>
                                    <label for="floatingInput">ReturnPlace</label>
                                </div>
                                <div class="mb-4 form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">I agree with the site's stated <a href="privacy.html">Privacy Policy</a> and <a href="terms.html">Terms & Conditions</a></label>
                                </div>
                                <input type="button" class="form-control-submit-button" onclick="signUp()" value="signUp"/>
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
<%
	}else if(USERID != null && USERPW != null){
%>
      <!-- Details 1 -->
        <div id="details" class="basic-1 bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-xl-5">        
                        <h2>RENT UMBRELLA</h2>
                            <p class="mb-4">Would you like to rent an umbrella? Then just Enter it now</p>

                            <!-- Sign Up Form -->
                            <form>
                            
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="userId" name="userId" placeholder="id" value="${SessionUserID}" readonly>
                                   <%--  <input type="hidden" id="userPw" name="userPw" value="${SessionUserPW}"> --%>
                                    <label for="floatingInput">Id</label>
                                </div>                                
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="userName" name="userName" placeholder="Your name" value="${SessionUserName}" readonly>
                                    <label for="floatingInput">Your name</label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="tel" class="form-control" id="userPhone" name="userPhone" placeholder="tel" value="${SessionUserPhone}" readonly>
                                    <label for="floatingInput">PhoneNumber</label>
                                </div>
                                <div class="mb-4 form-floating">
                                	
                                    <input type="text" class="form-control" id="rentalDate" name="rentalDate" placeholder="rentalDate" autocomplete="off">
                                    <label for="floatingInput">RentalDate</label>
                                </div>
                                <div class="mb-4 form-floating">
                               	대여장소
                                    <label for="floatingInput"></label>
                                    <select id="rentalPlace" name="rentalPlace" class="form-control"  required>
                                    	<option value="">Rentalplace choice</option>
                                    	<option value="본관">본관</option>
                                    	<option value="의양관">의양관</option>
                                    	<option value="사회관">사회관</option>
                                    	<option value="공학관">공학관</option>
                                    	<option value="바우어관">바우어관</option>
                                    </select>                                   
                                </div>
                                <div class="mb-4 form-floating">
                                	반납장소
                                    <label for="floatingInput"></label>
                                    <select id="returnPlace" name="returnPlace" class="form-control"  required>
                                    	<option value="">Returnplace choice</option>
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
        
        <!-- Details Modal -->
        <div id="staticBackdrop" class="modal fade" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="row">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        <div class="col-lg-8">
                            <div class="image-container">
                                <img class="img-fluid" src="resources/images/details-modal.jpg" alt="alternative">
                            </div> <!-- end of image-container -->
                        </div> <!-- end of col -->
                        <div class="col-lg-4">
                            <h3>Goals Setting</h3>
                            <hr>
                            <p>In gravida at nunc sodales pretium. Vivamus semper, odio vitae mattis auctor, elit elit semper magna ac tum nico vela spider</p>
                            <h4>User Feedback</h4>
                            <p>Sapien vitae eros. Praesent ut erat a tellus posuere nisi more thico cursus pharetra finibus posuere nisi. Vivamus feugiat</p>
                            <ul class="list-unstyled li-space-lg">
                                <li class="d-flex">
                                    <i class="fas fa-chevron-right"></i>
                                    <div class="flex-grow-1">Tincidunt sem vel brita bet mala</div>
                                </li>
                                <li class="d-flex">
                                    <i class="fas fa-chevron-right"></i>
                                    <div class="flex-grow-1">Sapien condimentum sacoz sil necr</div>
                                </li>
                                <li class="d-flex">
                                    <i class="fas fa-chevron-right"></i>
                                    <div class="flex-grow-1">Fusce interdum nec ravon fro urna</div>
                                </li>
                                <li class="d-flex">
                                    <i class="fas fa-chevron-right"></i>
                                    <div class="flex-grow-1">Integer pulvinar biolot bat tortor</div>
                                </li>
                                <li class="d-flex">
                                    <i class="fas fa-chevron-right"></i>
                                    <div class="flex-grow-1">Id ultricies fringilla fangor raq trinit</div>
                                </li>
                            </ul>
                            <a id="modalCtaBtn" class="btn-solid-reg" href="#your-link">Details</a>
                            <button type="button" class="btn-outline-reg" data-bs-dismiss="modal">Close</button>
                        </div> <!-- end of col -->
                    </div> <!-- end of row -->
                </div> <!-- end of modal-content -->
            </div> <!-- end of modal-dialog -->
        </div> <!-- end of modal -->
        <!-- end of details modal -->

<hr>
        <!-- Testimonials -->
        <div class="slider-1 bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="h2-heading">우산  대여·반납 장소</h2>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
                <div class="row">
                    <div class="col-lg-12">

                        <!-- Card Slider -->
                        <div class="slider-container">
                            <div class="swiper-container card-slider">
                                <div class="swiper-wrapper">
                                    
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="resources/images/aa.jfif" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-text">본관</p>
                                                <p class="testimonial-author">1층 우편실</p>
                                            </div>
                                        </div>
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->
            
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="resources/images/bb.jfif" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-text">바우어관</p>
                                                <p class="testimonial-author">1층 행정실</p>
                                            </div>
                                        </div>        
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->
            
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="resources/images/cc.jfif" alt="alternative">
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
                                            <img class="card-image" src="resources/images/dd.jfif" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-text">사회관</p>
                                                <p class="testimonial-author">1층 행정실</p>
                                            </div>
                                        </div>
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->
            
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="resources/images/ee.jfif" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-text">공학관</p>
                                                <p class="testimonial-author">1층 행정실</p>
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


        <!-- Invitation -->
        <div class="basic-3">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h4>Rendrella는 학생여러분들의 편의를 제공합니다.</h4>
                        <a class="btn-outline-lg page-scroll" href="signUp.do">Sign up</a>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of basic-3 -->
        <!-- end of invitation -->


        <!-- Pricing -->
        <div id="pricing" class="cards-2 bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="h2-heading">Q&A 게시판</h2>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
                <div class="row">
                    <div class="col-lg-12">
                        
                        <!-- Card -->
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title">
                                    <img class="decoration-lines" src="resources/images/decoration-lines.svg" alt="alternative"><span>Free tier</span><img class="decoration-lines flipped" src="images/decoration-lines.svg" alt="alternative">
                                </div>
                                <ul class="list-unstyled li-space-lg">
                                    <li>Fusce pulvinar eu mi acm</li>
                                    <li>Curabitur consequat nisl bro</li>
                                    <li>Reget facilisis molestie</li>
                                    <li>Vivamus vitae sem in tortor</li>
                                    <li>Pharetra vehicula ornares</li>
                                    <li>Vivamus dignissim sit amet</li>
                                    <li>Ut convallis aliquama set</li>
                                </ul>
                                <div class="price">Free</div>
                                <a href="sign-up.html" class="btn-solid-reg">Sign up</a>
                            </div>
                        </div>
                        <!-- end of card -->

                        <!-- Card -->
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title">
                                    <img class="decoration-lines" src="resources/images/decoration-lines.svg" alt="alternative"><span>Advanced</span><img class="decoration-lines flipped" src="images/decoration-lines.svg" alt="alternative">
                                </div>
                                <ul class="list-unstyled li-space-lg">
                                    <li>Nunc commodo magna quis</li>
                                    <li>Lacus fermentum tincidunt</li>
                                    <li>Nullam lobortis porta diam</li>
                                    <li>Announcing of invita mro</li>
                                    <li>Dictum metus placerat luctus</li>
                                    <li>Sed laoreet blandit mollis</li>
                                    <li>Mauris non luctus est</li>
                                </ul>
                                <div class="price">$19<span>/month</span></div>
                                <a href="sign-up.html" class="btn-solid-reg">Sign up</a>
                            </div>
                        </div>
                        <!-- end of card -->

                        <!-- Card -->
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title">
                                    <img class="decoration-lines" src="resources/images/decoration-lines.svg" alt="alternative"><span>Professional</span><img class="decoration-lines flipped" src="images/decoration-lines.svg" alt="alternative">
                                </div>
                                <ul class="list-unstyled li-space-lg">
                                    <li>Quisque rutrum mattis</li>
                                    <li>Quisque tristique cursus lacus</li>
                                    <li>Interdum sollicitudin maec</li>
                                    <li>Quam posuerei pellentesque</li>
                                    <li>Est neco gravida turpis integer</li>
                                    <li>Mollis felis. Integer id quam</li>
                                    <li>Id tellus hendrerit lacinia</li>
                                </ul>
                                <div class="price">$29<span>/month</span></div>
                                <a href="sign-up.html" class="btn-solid-reg">Sign up</a>
                            </div>
                        </div>
                        <!-- end of card -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of cards-2 -->
        <!-- end of pricing -->


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