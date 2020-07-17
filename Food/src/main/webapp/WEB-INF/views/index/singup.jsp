<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>회원 가입</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">
<link rel="stylesheet" href="resources/css/singup.css">
<!-- Core Stylesheet -->
<link rel="stylesheet" href="resources/css/style.css">
<!-- <link rel="stylesheet" href="resources/css/js.css"> -->
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

<jsp:include page="header.jsp">
	<jsp:param value='' name='folder' />
</jsp:include>
<%-- 	<c:if test="${ empty sessionScope.ID }"> --%>
</head>

<body>
  <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-circle"></div>
        <div class="preloader-img">
            <img src="img/core-img/leaf.png" alt="">
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcrumb Area Start ##### -->
    <div class="breadcrumb-area">
        <!-- Top Breadcrumb Area -->
        <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(img/bg-img/24.jpg);">
            
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">회원가입</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
 
<div class='move'>
      <form method="POST" >
      <!-- 아이디 -->
     
         <label >아이디</label> <input type="text"
            class="sing" id="id" name="id" placeholder="ID"
            required>   <div class="check_font" id="id_check"></div>
            
      

         <label >비밀번호</label> <input type="password"
            class="sing" id="password1" name="password1"
            placeholder="PASSWORD" required>
         <div class="check_font" id="pw_check"></div>


         <label>비밀번호 확인</label> <input type="password"
            class="sing" id="password2" name="password2"
            placeholder="Confirm Password" required>
         <div class="check_font" id="pw2_check"></div>

      <!-- 이름 -->
  
         <label>이름</label> <input type="text"
            class="sing" id="name" name="name"
            placeholder="Name" required>
         <div class="check_font" id="name_check"></div>

      <!-- 생년월일 -->

         <label>생년월일</label> <input type="text"
            class="sing" id="birth" name="birth"
            placeholder="ex) 19990415" required>
         <div class="check_font" id="birth_check"></div>

      <!-- 본인확인 이메일 -->

         <label>이메일</label> <input type="text"
            class="sing" name="email" id="email"
            placeholder="E-mail" required>
        <div class="check_font" id="email_check"></div>

      <!-- 휴대전화 -->

         <label>휴대전화 </label> <input
            type="text" class="sing" id="phone" name="phone"
            placeholder="Phone Number" required><input type="submit" value="전송"> 
         <div class="check_font" id="phone_check"></div>
         
                
        

            <ul class="join_box">
                <li class="checkBox check01">
                    <ul class="clearfix">
                        <li>이용약관, 개인정보 수집 및 이용,
                            위치정보 이용약관(선택), 프로모션 안내
                            메일 수신(선택)에 모두 동의합니다.</li>
                        <li class="checkAllBtn">
                            <input type="checkbox" name="chkAll" id="chk" class="chkAll">
                        </li>
                    </ul>
                </li>
                <li class="checkBox check02">
                    <ul class="clearfix">
                        <li>이용약관 동의(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk" id="check_1"> 
                        </li>
                    </ul>
                    <textarea name="" id="">여러분을 환영합니다.
오늘뭐먹지 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 오늘뭐먹지 서비스의 이용과 관련하여 오늘뭐먹지 서비스를 제공하는 1조 주식회사(이하 ‘오늘뭐먹지’)와 이를 이용하는 오늘뭐먹지 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 오늘뭐먹지 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>개인정보 수집 및 이용에 대한 안내(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk" id="check_1">
                        </li>
                    </ul>
 
                    <textarea name="" id="">여러분을 환영합니다.
오늘뭐먹지 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 오늘뭐먹지 서비스의 이용과 관련하여 오늘뭐먹지 서비스를 제공하는 1조 주식회사(이하 ‘오늘뭐먹지’)와 이를 이용하는 오늘뭐먹지 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>위치정보 이용약관 동의(선택)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk">
                        </li>
                    </ul>
 
                    <textarea name="" id="">여러분을 환영합니다.
오늘뭐먹지 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 오늘뭐먹지 서비스의 이용과 관련하여 네이버 서비스를 제공하는 오늘뭐먹지 주식회사(이하 ‘오늘뭐먹지’)와 이를 이용하는 오늘뭐먹지 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 오늘뭐먹지 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check04">
                    <ul class="clearfix">
                        <li>이벤트 등 프로모션 알림 메일 수신(선택</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk">
                        </li>
                    </ul>
 
                </li>
            </ul>
            <ul class="footBtwrap clearfix">
                <li><button class="fpmgBt1">비동의</button></li>
                <li><button class="fpmgBt2">동의</button></li>
            </ul>
           <input type="submit" value="전송" id="submit">
        </form>



</div>
<p>

</p>
   
               <!-- Search Form -->
    

   <!-- ##### Hero Area Start ##### -->

   <!-- ##### Footer Area End ##### -->
	<%@ include file="footer.jsp" %> 
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