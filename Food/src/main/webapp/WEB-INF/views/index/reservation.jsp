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


<!-- Favicon -->
<link rel="icon" href="resources/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link rel="stylesheet" href="resources/css/reservation_css/aos.css">
<link rel="stylesheet" href="resources/css/reservation_css/animate.css">
<link rel="stylesheet" href="resources/css/reservation_css/bootstrap-datepicker.css">
<link rel="stylesheet" href="resources/css/reservation_css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/reservation_css/fancybox.min.css">
<link rel="stylesheet" href="resources/css/reservation_css/jquery.timepicker.css">
<link rel="stylesheet" href="resources/css/reservation_css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/reservation_css/style.css">


<style type="text/css">
.form-control{
color:black !important;
}
</style>

</head>

<body>


	
	<!-- ### 예약 팝업 창 start ### -->
	<div class="col-md-7 aos-init aos-animate" data-aos="fade-up"
		data-aos-delay="100" style='margin: auto'>
		<input type="hidden" id="r_master" value="<%= request.getParameter("r_master") %>">
		<form id='frm10' action="" method="post" class="bg-white p-md-5 p-4 mb-5 border">
			<div class="row">
				<div class="col-md-12 form-group">
					<label class="text-black font-weight-bold" for="id">ID</label>
					<input id="id" class="form-control" value="<%= request.getParameter("m_id") %>" name="m_id" readonly>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 form-group">
					<label class="text-black font-weight-bold" for="store">매장</label>
					<input id="store" class="form-control" value="<%= request.getParameter("r_store_name") %>" name="r_store_name" readonly>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 form-group">
					<label class="text-black font-weight-bold" for="checkin_date">예약일</label>
					<input type="date" class="form-control"  name="r_visit_date" id="r_visit_date" placeholder="날짜를 선택해주세요">
				</div>
				<div class="col-md-6 form-group">
					<label for="adults" class="font-weight-bold text-black">인원</label>
					<div class="field-icon-wrap">
						<div class="icon">
							<span class="ion-ios-arrow-down"></span>
						</div>
						
						<input class="form-control" id='ppl_minus' style='width: 25%;display: inline;padding: 0px;' type='button' value='-'>
						<input class="form-control" name="r_people_count" id='ppl_count' style='width: 47%;padding: 0px;display: inline;text-align: center;'  value='0'>
						<input class="form-control" id='ppl_plus' style='width: 25%;display: inline;padding: 0px;' type='button' value='+'>
						
						
<!-- 						<select name="r_people_count" id="adults" class="form-control"> -->
<!-- 							<option value=1>1</option> -->
<!-- 							<option value=2>2</option> -->
<!-- 							<option value=3>3</option> -->
<!-- 							<option value=4>4</option> -->
<!-- 							<option value=5>5</option> -->
<!-- 							<option value=6>6</option> -->
<!-- 						</select> -->
					</div>
				</div>
			</div>


			
			<!-- 시간 설정 -->
			<div class="row">
				<div class="col-md-6 form-group">
					<label for="" class="font-weight-bold text-black">시</label>
					<div class="field-icon-wrap">
						<div class="icon">
							<span class="ion-ios-arrow-down"></span>
						</div>
						<select name="r_date_hour" id="r_date_hour" class="form-control">
						<option id="" disabled="disabled" selected>선택</option>
							<option value="09">오전 9 시</option>
							<option value="10">오전 10 시</option>
							<option value="11">오전 11 시</option>
							<option value="12">오후 12 시</option>
							<option value="13">오후 1 시</option>
							<option value="14">오후 2 시</option>
							<option value="15">오후 3 시</option>
							<option value="16">오후 4 시</option>
							<option value="17">오후 5 시</option>
							<option value="18">오후 6 시</option>
							<option value="19">오후 7 시</option>
							<option value="20">오후 8 시</option>
							<option value="21">오후 9 시</option>
							<option value="22">오후 10 시</option>
						</select>
					</div>
				</div>
				<div class="col-md-6 form-group">
					<label for="" class="font-weight-bold text-black">분</label>
					<div class="field-icon-wrap">
						<div class="icon">
							<span class="ion-ios-arrow-down"></span>
						</div>
						<select name="r_date_minute" id="r_date_minute" class="form-control">
							<option id="" disabled="disabled" selected>선택</option>
							<option value=00>00 분</option>
							<option value=00>10 분</option>
							<option value=00>20 분</option>
							<option value=15>30 분</option>
							<option value=30>40 분</option>
							<option value=45>50 분</option>
						</select>
					</div>
				</div>
			</div>
			
						<div class="row">
				<div class="col-md-6 form-group">
					<label for="adults" class="font-weight-bold text-black">메뉴</label>
					<div class="field-icon-wrap">
						<div class="icon">
							<span class="ion-ios-arrow-down"></span>
						</div>
						<select name="" id="r_menu" class="form-control">
							<option value="<%= request.getParameter("menu1") %>"><%= request.getParameter("menu1") %></option>
							<option value="<%= request.getParameter("menu2") %>"><%= request.getParameter("menu2") %></option>
							<option value="<%= request.getParameter("menu3") %>"><%= request.getParameter("menu3") %></option>
						</select>
					</div>
				</div>
				<div class="col-md-6 form-group">
					<label for="adults" class="font-weight-bold text-black">수량</label>
					<div class="field-icon-wrap">
						<div class="icon">
							<span class="ion-ios-arrow-down"></span>
						</div>
						
						
						<input class="form-control" id='menucount_minus' style='width: 25%;display: inline;padding: 0px;' type='button' value='-'>
						<input class="form-control" name="r_menucount" id='r_menu_count' style='width: 47%;padding: 0px;display: inline;text-align: center;' value='0'>
						<input class="form-control" id='menucount_plus' style='width: 25%;display: inline;padding: 0px;' type='button' value='+'>
						
						
<!-- 						<select name="" id="r_menu_count" class="form-control"> -->
<!-- 							<option id="default" disabled="disabled" selected>수량</option> -->
<!-- 							<option value=1>1</option> -->
<!-- 							<option value=2>2</option> -->
<!-- 							<option value=3>3</option> -->
<!-- 							<option value=4>4</option> -->
<!-- 							<option value=5>5</option> -->
<!-- 							<option value=6>6</option> -->
<!-- 						</select> -->
					</div>
					
				</div>
				
				
				<div class="col-md-6 form-group">
					<div class="field-icon-wrap">
						<div class="icon">
							<span class="ion-ios-arrow-down"></span>
						</div>
					
						<input id='menu_append' class="form-control" type='button' value='추가'>
					
					</div>
				</div>
				
			</div>
			
			<div class="row mb-4">
				<div class="col-md-12 form-group">
					<label class="text-black font-weight-bold" for="message">문의사항</label>
					<textarea id="r_note" name="r_note" class="form-control" placeholder='문의사항을 남겨주세요'
						cols="30" rows="3"></textarea>
					<!-- 메뉴 선택하면 추가되는 부분 -->
					<label style="font-weight:bold;color:black">선택한 메뉴</label>
					<div id="div1" style='border:1px solid lightgrey'>
					<!-- input이 추가될 부분 -->
					</div>
					<input type='button' class='button1 btn btn-white' value='삭제'>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 form-group">
					<input type="button" id="socketBtn" style="display:none;">
					<input id='btn_reserv' type="button" value="예약하기"
						class="btn btn-primary text-white py-3 px-5 font-weight-bold">
				</div>
			</div>
		</form>
	</div>
	<!-- ### 예약 팝업 창 end ### -->





	<!-- ##### All Javascript Files ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Popper js -->
	<script src="resources/js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="resources/js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="resources/js/plugins/plugins.js"></script>
	
	
	<script src="resources/js/reservation_js/aos.js"></script>
	<script src="resources/js/reservation_js/bootstrap.min.js"></script>
	<script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="resources/js/reservation_js/jquery.fancybox.min.js"></script>
	<script src="resources/js/reservation_js/jquery.stellar.min.js"></script>
	<script src="resources/js/reservation_js/jquery.timepicker.min.js"></script>
	<script src="resources/js/reservation_js/main.js"></script>
	<script src="resources/js/reservation_js/owl.carousel.min.js"></script>
	<script src="resources/js/reservation_js/popper.min.js"></script>
	<script src="resources/js/reservation_js/reserv_hc.js"></script>
	<script src="resources/js/alarmData/reservAlarm.js"></script>
	

</body>

</html>