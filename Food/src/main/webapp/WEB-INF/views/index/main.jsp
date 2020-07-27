<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<% 

HashMap map = (HashMap)request.getAttribute("map"); 

// <jsp:param>의 값 넘겨받기
String folder = request.getParameter("folder");
if( folder == null || folder.equals("")) folder="";

%>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title></title>

<!-- Favicon -->
<link rel="icon" href="resources/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link rel="stylesheet" href="resources/css/style.css">

<!-- 부트스트랩 -->
<link
	href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css"
	rel="stylesheet">
<script
	src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>

<!-- <style>
.menu a {
	cursor: pointer;
}

.menu .hide {
	display: none;
}
</style> -->




</head>

<body>
	
	

	<!-- Preloader -->
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="preloader-circle"></div>
		<div class="preloader-img">
			<img src="img/core-img/leaf.png" alt="">
		</div>
	</div>


	<jsp:include page="header.jsp">
			<jsp:param value='' name='folder' />
		</jsp:include>

	<!-- ##### Hero Area Start ##### -->
<!-- 	<section class="hero-area"> -->
<div class="slide-img bg-img"
				style="background-image: url(resources/img/bg-img/1.jpg);">
		<!-- Single Hero Post -->
		<div class="single-hero-post2 bg-overlay">
		
		<div style="text-align: center; height: 50%; line-height: 50%; transform: translateY(100%); text-shadow: black; position: absolute;width: 100%;">
			
			
			
			<a href="" style="font-size: 10vw;">현재 <%= map.get("address")%>의 날씨는 <%=map.get("reondo")%>도 <%=map.get("nalsi")%>입니다^^</a>
			
	
			<a href="<%=folder %>index/todayMenu.do?category=<%=map.get("category")%>" style="font-size: 15vw;">오늘은 <%=map.get("category")%>의 <%=map.get("menu")%> 어떠세요? 먹고 싶다면 눌러주세요</a>

			
			</div>
<!-- 			<a href="" style="font-size: 10vw;">현재 의 날씨는 도 입니다^^</a> -->
<!-- 			<p> -->
<!-- 			<a href="" style="font-size: 15vw;">오늘은 의  어떠세요? 먹고 싶다면 눌러주세요</a> -->
<!-- 			</p> -->
<!-- 			</div> -->
			
			<!-- Post Image -->
			</div>
		</div>

		
<!-- 	</section> -->


	<!-- ##### Contact Area End ##### -->
	
	
	
	
	
	
	

	<!-- ##### Footer Area Start ##### -->
	<%@ include file="footer.jsp" %>
	<!-- ##### Footer Area End ##### -->

	<!-- ##### All Javascript Files ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="resources/js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="resources/js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="resources/js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="resources/js/active.js"></script>
	<!-- 지섭 -->








</body>

</html>