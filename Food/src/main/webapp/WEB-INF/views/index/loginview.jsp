<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login</title>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  <style type="text/css">
  html, div, body,h3{
      margin: 0;
      padding: 0;
  }
  h3{
      display: inline-block;
      padding: 0.6em;
  }
  </style>
</head>
<body>
<div style="background-color:#15a181; width: 100%; height: 50px;text-align: center; color: white; "><h3>네이버 아이디로 Login</h3></div>
<br>
<!-- 네이버 로그인 화면으로 이동 시키는 URL -->
<!-- 네이버 로그인 화면에서 ID, PW를 올바르게 입력하면 callback 메소드 실행 요청 -->
<div style="text-align:center"><a href="${url}"><img width="223" src="/Food/resources/img/naver.png"/></a>
				<h1 style="color:red" >↑↑click!!</h1>		
</div>
<br>

<div style="background-color:#15a181; width: 100%; height: 50px;text-align: center; color: white; "><h3>카카오 아이디로 Login</h3></div>

      <div style="text-align:center; padding-top: 20px;" > 
      <a href="https://kauth.kakao.com/oauth/authorize?client_id=3241a5985286c01f380dfa804a5a8613&redirect_uri=http://localhost:8080/Food/kakaologin.do&response_type=code">
            <img src="/Food/resources/img/kakao_login_large_wide.png"> 
        </a>
        	<h1 style="color:red;" >↑↑click!!</h1>		 
        </div>
        

   
</body>
</html>
