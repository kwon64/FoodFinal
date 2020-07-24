<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<%
	// <jsp:param>의 값 넘겨받기
	String folder = request.getParameter("folder");
	if( folder == null || folder.equals("")) folder="";
	%>  
<!DOCTYPE html>
<html lang="en">

<head>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>





<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Alazea - Gardening &amp; Landscaping HTML Template</title>
<script type="text/javascript">
	$(document).ready(function() {
		var name = ${result}.response.name;
		$(".login-header").css("display","none");
		$(".access").html("<span class='login-font'>"+name+" Welcome.</span><a href='' id='logout' ><button class='logout'>Log-Out</button></a>");
	  });
</script>


<!-- Favicon -->
<link rel="icon" href="/Food/resources/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link rel="stylesheet" href="/Food/resources/css/style.css">
<link rel="stylesheet" href="/Food/resources/css/js.css">
<!-- 부트스트랩 -->
<link
	href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css"
	rel="stylesheet">
<script
	src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>


<style>
.menu a {
	cursor: pointer;
}

.menu .hide {
	display: none;
}


</style>



</head>

<body>
	<!-- Preloader -->
	
	<div class="single-hero-post bg-overlay">
				<!-- Post Image -->
			</div>
	
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="preloader-circle"></div>
		<div class="preloader-img">
			<img src="/Food/resources/img/core-img/leaf.png" alt="">
		</div>
	</div>

	<!-- ##### Header Area Start ##### -->
	<header class="header-area">
	
		<!-- ***** Top Header Area ***** -->
		<div class="top-header-area">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div
							class="top-header-content d-flex align-items-center justify-content-between">
							<!-- Top Header Content -->
							<div class="top-header-meta">
								<a href="#" data-toggle="tooltip" data-placement="bottom"
									title="infodeercreative@gmail.com"></a> <a href="#"
									data-toggle="tooltip" data-placement="bottom"
									title="+1 234 122 122"></a>
							</div>
							
							<!-- Top Header Content -->
							<div class="top-header-meta d-flex">
								<!-- Language Dropdown -->
								<div class="language-dropdown">
									<div class="dropdown">
										<button class="btn btn-secondary dropdown-toggle mr-30"
											type="button" id="dropdownMenuButton" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false">Language</button>
										<div class="dropdown-menu"
											aria-labelledby="dropdownMenuButton">
											<a class="dropdown-item" href="#">USA</a> <a
												class="dropdown-item" href="#">UK</a> <a
												class="dropdown-item" href="#">Bangla</a> <a
												class="dropdown-item" href="#">Hindi</a> <a
												class="dropdown-item" href="#">Spanish</a> <a
												class="dropdown-item" href="#">Latin</a>
										</div>
									</div>
								</div>
							
								
			
									<div class="access">	
									<c:if test="${not empty sessionScope.user_id}">
										<span class="login-font">${sessionScope.user_name} Welcome.</span>
										<a href="" id="logout" ><button class="logout">Log-Out</button></a>
									</c:if>
								</div>	
						    <c:if test="${empty sessionScope.user_id }">		
								<!-- Login -->
						<div class ="login-header">
								<div class="login">
									<a href="#" id="loginLabel" class="fa fa-user" >Login</a>
									<div class="loginbox">
										<form action="login.do" method="post"  id="frm"  name="frm">
											<p>
												<label for="logid">ID</label>&nbsp&nbsp <input type="text"
													name="m_id" id="logid" placeholder="ID" />
											</p>
											<p>
												<label for="logpw">PW</label>&nbsp&nbsp <input
													type="password" name="m_pass" id="logpw"
													placeholder="PassWord" />
											</p>
											<p>
												<input class="loginBtn" id="btn_submit" value=""
													type="submit" />
											</p>
										</form>
										 
										<a href="singup.do" class="memberInfo">회원가입 </a> <a
										href="find_form.do" class="memberInfo">아이디 비밀번호 찾기 </a> 
											<a id="naver" href="loginview.do">네이버 아이디로 로그인</a>
										<div class="closeBtn" >X</div>  
					
									</div> 
										
									</div>
								</div>
								</c:if>
							  <div class="manager">
<!--                         <ul id="navi"> -->
<!--                               <li> -->
                                      <a href="<%=folder %>manager/member-list.do"  id="manageLabel" class="fa fa-user" ><br/>Manage</a>
<!--                                </li> -->
                               
                           
<!--                           </ul> -->
                        </div>




								<!-- Cart -->
							<div class="cart">
								<a href="cart.do"><i class="fa fa-shopping-cart"
									aria-hidden="true"></i> <span>Cart <span
										class="cart-quantity">(1)</span></span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
					
							
		<!-- ***** Navbar Area ***** -->
		<div class="alazea-main-menu">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<!-- Menu -->
					<nav class="classy-navbar justify-content-between" id="alazeaNav">

						<!-- Nav Brand -->
						<a href="index.html" class="nav-brand"><img
							src="img/core-img/logo.png" alt=""></a>

						<!-- Navbar Toggler -->
						<div class="classy-navbar-toggler">
							<span class="navbarToggler"><span></span><span></span><span></span></span>
						</div>


						<!-- Menu -->
						<div class="classy-menu">

							<!-- Close Button -->
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>

							<!-- Navbar Start -->
							<div class="classynav">
								<ul>
									<li>
										<!-- -------------------------------------------------------- -->
										<button class="openbtn" onclick="openNav()">
											<img src="/Food/resources/img/menu_icon.png" alt="#">
										</button> <!-- ------------------------------------------------------- -->

										<div id="mySidepanel" class="sidepanel">
											<a href="javascript:void(0)" class="closebtn"
												onclick="closeNav()"><font size="10em">×</font></a> <a
												href="#">한식</a> <a href="#">중식</a> <a href="#">일식</a> <a
												href="#">양식</a> <a href="#">동남아</a>
										</div> <!--  -------------------------------------------------------- -->

										<!-- END menu-toggle -->


									</li>
								</ul>
								<ul>
									<li><a href="<%=folder %>index/todayMenu.do" id="today">Today Menu</a></li>
									<li><a href="<%=folder %>index/myMenu.do" id="mymenu">My Menu</a></li>
									<li><a href="<%=folder %>index/choiceMenu.do" id="choice">Other's Menu</a></li>
									<li><a href="<%=folder %>index/mealFriends.do">Happy Meal With Friends</a></li>
									<li><a href="<%=folder %>index/store.do">Store List</a></li>
								</ul>

								<!-- Search Icon -->
								<div id="searchIcon">
									<i class="fa fa-search" aria-hidden="true"></i>
								</div>

							</div>
							<!-- Navbar End -->
						</div>
					</nav>

					<!-- Search Form -->
					<div class="search-form">
						<form action="#" method="get">
							<input type="search" name="search" id="search"
								placeholder="Type keywords &amp; press enter...">
							<button type="submit" class="d-none"></button>
						</form>
						<!-- Close Icon -->
						<div class="closeIcon">
							<i class="fa fa-times" aria-hidden="true"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- ##### Header Area End ##### -->

	<!-- ##### All Javascript Files ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="/Food/resources/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="/Food/resources/js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="/Food/resources/js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="/Food/resources/js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="/Food/resources/js/active.js"></script>
	<!-- 지섭-->
	

</body>

</html>