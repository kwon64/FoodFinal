<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Alazea - Gardening &amp; Landscaping HTML Template</title>

    <!-- Favicon -->
	<link rel="icon" href="resources/img/core-img/favicon.ico">
	<link rel="stylesheet" href="/Food/resources/css/mypage.css">
	<!-- Core Stylesheet -->
	<link rel="stylesheet" href="/Food/resources/css/style.css">
    <link rel="stylesheet" href="/Food/resources/css/mymenu.css">
    
  			 <jsp:include page="../index/header.jsp">
				<jsp:param value='../' name='folder' />
			</jsp:include>
	

	 
	 
</head>

<body>
    <!-- ##### Portfolio Area End ##### -->
	
	<c:if test="${not empty sessionScope.user_id}">
    	<div id="memberpage">
    	<div class="container">
				<form action="membermodify.do">
					<table class="table table-sucsess table-hover">
						<thead>
							<tr >
								<th colspan="4" >회원 정보/음식 BEST</th>
							
								
							</tr>
						</thead>
						<tbody>
							<tr >
								<td >User_id</td>
								<td >${member.m_id}</td>
								<td rowspan="2" >1위</td>
								<td rowspan="2" >${member.m_most}</td>
							
							</tr>

							<tr >
								<td >User_name</td>
								<td >${member.m_name}</td>
								
								
							</tr>

							<tr >
								<td >User_Email</td>
								<td >${member.m_email}</td>
								<td rowspan="2" >2위</td>
								<td rowspan="2" >${member.m_most}</td>
								
							
							
							</tr>
  
							<tr >
								<td >User_PhoneNumber</td>
								<td >${member.m_tel}</td>
								
								
							</tr>

							<tr class="row100">
								<td >User_BirthDay</td>
								<td >${member.m_birth}</td>
								<td rowspan="2">3위</td>
								<td rowspan="2" >${member.m_most}</td>
								
							</tr>

							<tr class="row100">
								<td >User_Address</td>
								<td >${member.m_area}</td>
								
								
							</tr>
							<tr >
								<td colspan="4" ><a href="membermodify.do" class="modifybtn"><button class ="btn btn-dark">수정하기</button></a></td>
							</tr>
					
					
							
							</tbody>
							</table> 
							</form>
				</div>
			</div>
				
				
				
    
	</c:if>
	
	<c:if test="${empty sessionScope.user_id}">
	<div class="container">
	<div id="nomember">현재 네이버 아이디로 이용중 입니다.
	네이버 아이디로 로그인시 오늘뭐먹지 MY Page 서비스를 이용하실수 없습니다.
	회원가입후 MY Page 서비스 이용가능 합니다.감사합니다.<br><button  onclick="history.go(-1);" class="btn btn-danger">되돌아가기</button> 

	</div>
	</div>

	</c:if>
	

    

    <!-- ##### Footer Area Start ##### --> 
    <%@ include file="../index/footer.jsp" %>
    <!-- ##### Footer Area End ##### -->

    <!-- ##### All Javascript Files ##### -->
    <script src="/Food/resources/js/mymenu.js"></script>
    <!-- jQuery-2.2.4 js -->
<!--     <script src="resources/js/jquery/jquery-2.2.4.min.js"></script> -->
<!--     Popper js -->
<!--     <script src="resources/js/bootstrap/popper.min.js"></script> -->
<!--     Bootstrap js -->
<!--     <script src="resources/js/bootstrap/bootstrap.min.js"></script> -->
<!--     All Plugins js -->
<!--     <script src="resources/js/plugins/plugins.js"></script> -->
<!--     Active js -->
<!--     <script src="resources/js/active.js"></script> -->
 
    
</body>

</html>