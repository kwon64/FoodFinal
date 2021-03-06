<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
<title>QnA</title>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Favicon -->



<!-- 부트스트랩 -->
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<link href="resources/css/reservation_css/qna_hc.css" rel="stylesheet">
<script	src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>


<jsp:include page="../index/header.jsp">
	<jsp:param value='' name='folder' />
</jsp:include>

</head>

<body>
    <!-- Preloader -->

    <!-- ##### Breadcrumb Area Start ##### -->
    <div class="breadcrumb-area">
       


        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">QnA 게시판</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcrumb Area End ##### -->


<div class='container'>
	<div class="contact-form-area mb-100">
        <form action="modifyqna" method="post">
            <input type="hidden" name="b_no" value="${list.b_no}" readonly>
            <div class="row">
                <div class="col-12">
                    <div class="form-group title" style="color:black">
<!--                 	<label style='font-weight: bold'>제목</label> -->
                    <input style="color:black;font-weight:bold;border:none;display:inline;width: 50%;" type="text" class="form-control" id="contact-title" name="title" value="${list.title}" readonly>
                    <span id='date1' style='float:right;font-family:none'>${list.b_date}</span>
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-group writer" style="color:black">
<!--                 	<label style='font-weight: bold'>작성자</label> -->
                        <input style="color:black;border:none;display:inline;width: 40%;" type="text" class="form-control" id="contact-writer" name="userId" value="${list.userId}" readonly>
						<span id='viewcount' style='float:right'>조회수&nbsp;:&nbsp;${list.viewCount}</span>
                    </div>
                </div>
                <div class="col-12" style="padding-top: 45px;">
                    <div class="form-group" style="color:black">
                	<label style="font-size: 30px;font-weight: bold;">Q.</label>
                        <textarea style="color:black;height: 120px;border:none" class="form-control" id="message" cols="30" rows="10" name="b_content" readonly>${list.b_content}</textarea>
                    </div>
                </div>
                <div class="col-12">
         		<c:if test="${sessionScope.user_id == list.userId}">
            <button id="savebtn" type="submit" style='margin-top:23px;font-size:larger;font-weight:bold;width:100px' class="btn btn-outline-success">SAVE</button>
		    <input type='button' value='수정' id="modify" style="float:right;margin-top:23px;font-size:inherit" data-toggle="tooltip" title="" class="btn btn-outline-secondary" data-original-title="Edit">
		    <input type='button' value='삭제' id="delete" style="float:right;margin-top:23px;font-size:inherit" data-toggle="tooltip" title="" class="btn btn-outline-secondary" data-original-title="Trash">
				</c:if>
                </div>
            </div>
        </form>
			<br><hr><br>
			
		<!-- 댓글 리스트 -->
    	<div id='replyappend' class="form-group" style="color:black">    	
			<c:forEach items="${listVO}" var="list">
			<input value='${list.q_replyno}' type='hidden'>
			<label style="font-size: 30px;font-weight:bold">A.</label>
			
			<div class="view_answer_info">
				<strong></strong>
				<span class="view_info_idip">
					<strong>관리자</strong>
				</span>
				<span class="view_info_day">
				</span>
				<c:set var="id" value="admin1234" />
				<c:if test="${sessionScope.user_id eq id}">
				
				<input type='button' value='수정' id="modify1" style="float:right;font-size:inherit" title="" class="btn btn-outline-secondary">
  				<input type='button' value='삭제' id="delete1" style="float:right;font-size:inherit" title="" class="btn btn-outline-secondary">
  					</c:if>
			</div>
					<span style='font-family: none;margin-left:15px' id="replyTime">${list.b_date}</span>
			<div class="seem_cont">
				<div style="margin:10px 0 10px 0">
				<textarea style="color:black;height: 120px;border:none" class="form-control" id="message1" cols="30" rows="10" name="b_content" readonly>${list.b_content}</textarea>
				 	
				</div>
			</div>
			
		<div class="board_view_comment">

			<div class="view_comment js_comment_area" data-bdid="goodsqa" data-sno="296">

			</div>

		</div>
			</c:forEach>
    	</div>
			<c:if test="${sessionScope.user_id eq 'admin1234'}">
	        	<textarea style="color:black;margin-top:40px" class="form-control" id="replytext" cols="30" rows="10" name="b_reply" style="margin-top: 0px; margin-bottom: 15px; height: 246px;" ></textarea>
	        	<button style="float:right;min-width:50px;font-size: inherit" id="replybtn" type="submit" class="btn btn-outline-success">등록</button>
        	</c:if>
    </div>
</div>






    <!-- ##### Footer Area Start ##### -->
    <%@ include file="../index/footer.jsp" %>
    <!-- ##### Footer Area End ##### -->
<script src="resources/js/reservation_js/qna_hc.js"></script>
<script src="/Food/resources/js/active.js"></script>
<script src="/Food/resources/js/alarmData/qaData.js"></script>
    <!-- ##### All Javascript Files ##### -->
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