<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<style>
#btn{
	width: 90px;
	height: 45px;
	display: inline-block;
}
.pull-right {
   float: right !important
}
.pull-left {
   float: left !important
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
		
		<title>Board Form</title>
	
 		<!-- Styles -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;1,400&display=swap" rel="stylesheet">
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="resources/css/fontawesome-all.min.css" rel="stylesheet">
        <link href="resources/css/swiper.css" rel="stylesheet">
        <link href="resources/css/styles.css" rel="stylesheet">
        
        <!-- Favicon  -->
        <link rel="icon" href="resources/images/favicon.png">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script type="text/javascript">
	
   		function insert(){
   			var t = $('#title').val();
   			var c = $('#content').val();
			
   			if(t == ""){
   				alert("????????? ???????????????.")
   			}else if(c == ""){
   				alert("????????? ???????????????.")
   			}else{
   				$.ajax({
    				url:"insert.do",
    				type: "GET",
    				dataType: "text", 
    				data: {
    					title: t,
    					content: c
    				},
    				success : function(data){
    					if(data=="ok"){
    						alert("?????? ?????????????????????.");
        					location.href = "list.do";
    					}else{
    						alert("????????? ????????? ?????????????????????.");
    					}
    				}
    			})
   			}		
    	}
   	
    	
    </script>
</head>
<body>
<jsp:include page="/WEB-INF/templates/header.jsp"></jsp:include>

 <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1 class="text-center">???????????????</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->
<br><br>
	<div class="container">
		<div class="page-header">
		</div>
		<br /> <input id="boardNo" type="hidden"/> 
			   <input id="createDate" type="hidden" />
			   <input id = "userId" type="hidden" value ="${SessionUserID}"/>
		<table class="table">
			<tr>
				<th style="padding: 13px 0 0 15px; font-size: 20px;">??????</th>
				<td><input id="title" type="text" class="col-md-1 form-control input-sm" required></td>
			</tr>
			<tr>
				<th style="padding: 13px 0 0 15px; font-size: 19px;">??????</th>
				<td><textarea id="content" class="col-md-1 form-control input-sm" maxlength="140" rows="7"style="height: 200px;" required></textarea>
				<span class="help-block"></span></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
		</table>
		<div class="pull-left">
			<input type="button" onclick="location.href='list.do'" class="form-control-submit-button" id="btn" value="????????????">
		</div>
		<div class="pull-right">
			<input type="button" onclick="insert()" class="form-control-submit-button" id="btn" value="??????"/>
		</div>
	</div>
	<br><br><br><br><br><br><br>
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