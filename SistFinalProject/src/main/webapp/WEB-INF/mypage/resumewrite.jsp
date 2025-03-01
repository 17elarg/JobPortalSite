<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:set var="root" value="<%=request.getContextPath() %>" />
<c:set var="loginok" value="${sessionScope.loginok }" />
<c:set var="myid" value="${sessionScope.myid }" />
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/mypage.css">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&display=swap"
rel="stylesheet">

<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="${root }/images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="${root }/images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${root }/css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="${root }/css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="${root }/css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="${root }/css/custom.css">
    
<script type="text/javascript">
	
$(function(){
	$("span.photo").click(function(){
		$("#rphoto").trigger("click");
	});
	$("small.photo").click(function(){
		$("#rphoto").trigger("click");
	});
	
	$('#rphoto').change(function(){
		setImageFromFile(this, '#photoo_preview');
		});
		 
	function setImageFromFile(input, expression) {
	    if (input.files && input.files[0])
	    {
	        var reader = new FileReader();
	 
	            reader.onload = function (e) {
	                $(expression).attr('src', e.target.result);
	           }
	           reader.readAsDataURL(input.files[0]);
	     }
	}
});
</script>

<style type="text/css">
.resume_mini_title {
	color: #40e0d0;
}

.resume_table tr{
	height: 35px;
}
ul.mypage_category {
　　　list-style-type: none;
	text-align: center;
}

li.mypage_category {
	display: inline-block;
	font-weight: bold;
}
a.nav-link{
	color: white;	
}
small.photo, span.photo{
	cursor: pointer;
}
</style>

<title>Insert title here</title>
</head>
<body>
<!-- 상단 바 -->
<div class="mypage-top-box">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2>마이페이지</h2>
                    <ul class="mypage_category">
                        <c:if test="${sessionScope.logintype=='user'}">
							<li class="mypage_category"><a class="nav-link" style="color: #40e0d0;" href="${root }/mypage/main">이력서 관리</a></li>
	                        <li class="mypage_category active"><a class="nav-link" href="${root }/mypage/applications">지원 관리</a></li>
	                        <li class="mypage_category active"><a class="nav-link" href="${root }/mypage/scraps">스크랩 공고</a></li>
	                        <li class="mypage_category active"><a class="nav-link" href="${root }/mypage/updatpassform">회원정보 수정</a></li>
						</c:if>
						<c:if test="${sessionScope.logintype=='corp'}">
							<li class="mypage_category"><a class="nav-link" href="${root }/mypage/main">공고 관리</a></li>
	                        <li class="mypage_category active"><a class="nav-link" href="${root }/mypage/applicants">지원자 현황</a></li>
	                        <li class="mypage_category active"><a class="nav-link" href="${root }/mypage/updatpassform">기업정보 수정</a></li>
						</c:if>
                    </ul>
			</div>
		</div>
	</div>
</div>
<!-- 상단 바 끝-->
	
	<!-- 작성/수정 페이지 구분 위해 표시 -->
    <!-- <div style=" position: absolute; left: 50%; width: 300px; margin-left: -150px; text-align: center;">
    	<h4>이력서 작성</h4>
    </div> -->

	<div class="cart-box-main">
		<form action="resume_insert" method="post" enctype="multipart/form-data">
			<div class="container">
				<div class="row new-account-login">
					<div class="col-sm-6 col-lg-6 mb-3">
						<div class="title-left">
							<h3 class="resume_mini_title">인적사항</h3>
						</div>
						<table style="border-collapse: collapse; margin-bottom: 50px;"
							class="resume_table">
							<tr>
								<th width="90">이름</th>
								<td width="310">${userdto.name}</td>
								<td rowspan="5">
									<div class="resumephoto"
										style="width: 120px; height: 160px; border: 1px solid lightgray;">
										<input type="file" name="rphoto" id="rphoto"
											style="display: none;"> <img alt="" src=""
											id="photoo_preview" style="width: 117px; height: 157.5px;">
									</div> <span class="glyphicon glyphicon-camera photo"
									style="margin-left: 14px;"></span> <small
									class="text-muted photo">증명사진 첨부</small>
								</td>
							</tr>
							<tr>
								<th>생년월일</th>
								<td>${userdto.birth}</td>
							</tr>
							<tr>
								<th>성별</th>
								<td>${userdto.gender}</td>
							</tr>
							<tr>
								<th>연락처</th>
								<td>${userdto.hp}</td>
							</tr>
							<tr>
								<th>이메일</th>
								<td>${userdto.email}</td>
							</tr>
							<tr>
								<th>주소</th>
								<td>${userdto.addr}</td>
							</tr>

						</table>
					</div>
					<div class="col-sm-6 col-lg-6 mb-3">
						<div class="title-left">
							<h3 class="resume_mini_title">어학/자격증</h3>
						</div>
						<div class="row">
							<div style="width: 180px; margin-left: 20px; margin-right: 20px;"
								id="plus_license1">
								<label for="license">어학시험/자격증</label> <input type="text"
									class="form-control" id="license1" name="license1"
									placeholder="어학시험/자격증 이름 입력" value="">
							</div>
							<div style="width: 160px; margin-right: 10px;" id="plus_license2">
								<label for="license">급수/점수</label> <input type="text"
									class="form-control" id="license2" name="license2"
									placeholder="급수/점수 입력" value="">
							</div>
							<div style="width: 160px;" id="plus_license3">
								<label for="license">취득월</label> <input type="text"
									class="form-control" id="license3" name="license3"
									placeholder="취득월 입력" value="" onfocus="(this.type='month')">
							</div>
						</div>
						<button type="button" id="btnPlusLicense"
							style="border: 0; background-color: transparent;">
							<span class="glyphicon glyphicon-plus-sign"
								style="font-size: 40px; color: #40e0d0; margin-top: 20px; margin-left: 235px;"></span>
						</button>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-lg-6 mb-3">
						<div class="checkout-address">
							<div class="title-left">
								<h3 class="resume_mini_title">학력/병역사항</h3>
							</div>
							<div class="row">
								<div
									style="width: 180px; margin-left: 20px; margin-right: 20px;">
									<label for="highschool">고등학교 *</label> <input type="text"
										class="form-control" id="highschool1" name="highschool1"
										placeholder="출신 고등학교 입력" value="">
								</div>
								<div style="width: 160px; margin-right: 10px;">
									<label for="highschool">입학 *</label> <input type="text"
										class="form-control" id="highschool2" name="highschool2"
										placeholder="입학월" value="" onfocus="(this.type='month')">
								</div>
								<div style="width: 160px;">
									<label for="highschool">졸업 *</label> <input type="text"
										class="form-control" id="highschool3" name="highschool3"
										placeholder="졸업월" value="" onfocus="(this.type='month')">
								</div>
								<div
									style="width: 180px; margin-left: 20px; margin-right: 20px; margin-top: 30px;">
									<label for="college">대학교 *</label> <input type="text"
										class="form-control" id="college1" name="college1"
										placeholder="출신 대학교 입력" value="">
								</div>
								<div style="width: 160px; margin-right: 10px; margin-top: 30px;">
									<label for="college">입학 *</label> <input type="text"
										class="form-control" id="college2" name="college2"
										placeholder="입학월" value="" onfocus="(this.type='month')">
								</div>
								<div style="width: 160px; margin-top: 30px;">
									<label for="college">졸업(예정) *</label> <input type="text"
										class="form-control" id="college3" name="college3"
										placeholder="졸업월" value="" onfocus="(this.type='month')">
								</div>
								<div
									style="margin-left: 20px; margin-right: 20px; margin-top: 30px;">
									<label for="military">병역 *</label> <select class="form-control"
										id="military" name="military" style="height: 30px;">
										<option value="" selected disabled hidden>병역사항</option>
										<option value="군필">군필</option>
										<option value="미필">미필</option>
										<option value="면제">면제</option>
										<option value="해당없음">해당없음</option>
									</select> <small class="text-muted">여성의 경우 '해당없음'을 선택해주세요.</small>
								</div>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-lg-6 mb-3">
						<div class="title-left">
							<h3 class="resume_mini_title">대외활동</h3>
						</div>
						<div class="row">
							<div style="width: 180px; margin-left: 20px; margin-right: 20px;"
								id="plus_activity1">
								<label for="activity">대외활동명</label> <input type="text"
									class="form-control" id="activity1" name="activity1"
									placeholder="대외활동명 입력" value="">
							</div>
							<div style="width: 160px; margin-right: 10px;"
								id="plus_activity2">
								<label for="activity">시작일</label> <input type="text"
									class="form-control" id="activity2" name="activity2"
									placeholder="시작" value="" onfocus="(this.type='month')">
							</div>
							<div style="width: 160px;" id="plus_activity3">
								<label for="activity">종료일</label> <input type="text"
									class="form-control" id="activity3" name="activity3"
									placeholder="종료" value="" onfocus="(this.type='month')">
							</div>
						</div>
						<button type="button" id="btnPlusActivity"
							style="border: 0; background-color: transparent;">
							<span class="glyphicon glyphicon-plus-sign"
								style="font-size: 40px; color: #40e0d0; margin-top: 20px; margin-left: 235px;"></span>
						</button>
					</div>

					<div class="col-sm-6 col-lg-6 mb-3">
						<div class="title-left">
							<h3 class="resume_mini_title">경력</h3>
						</div>
						<div id="plus_hr">
							<div class="row" id="plus_career">
								<div
									style="width: 180px; margin-left: 20px; margin-right: 20px;">
									<label for="career">회사명</label> <input type="text"
										class="form-control" id="career1" name="career1"
										placeholder="회사명" value="">
								</div>
								<div style="width: 160px;" id="plus_career2">
									<label for="career">부서명</label> <input type="text"
										class="form-control" id="career2" name="career2"
										placeholder="부서명" value="">
								</div>
								<div
									style="width: 180px; margin-left: 20px; margin-right: 20px; margin-top: 15px;">
									<label for="career">직급/직책</label> <input type="text"
										class="form-control" id="career3" name="career3"
										placeholder="직급/직책" value="">
								</div>
								<div style="width: 160px; margin-right: 10px; margin-top: 15px;">
									<label for="career">입사월</label> <input type="text"
										class="form-control" id="career4" name="career4"
										placeholder="입사월" value="" onfocus="(this.type='month')">
								</div>
								<div style="width: 160px; margin-top: 15px;">
									<label for="career">퇴사월</label> <input type="text"
										class="form-control" id="career5" name="career5"
										placeholder="퇴사월" value="" onfocus="(this.type='month')">
								</div>
								<div
									style='width: 100%; margin-left: 20px; margin-right: 20px; margin-top: 15px;'>
									<hr style='border: solid 0.05px #c6f7f2;'>
								</div>
							</div>
						</div>
						<button type="button" id="btnPlusCareer"
							style="border: 0; background-color: transparent;">
							<span class="glyphicon glyphicon-plus-sign"
								style="font-size: 40px; color: #40e0d0; margin-top: 20px; margin-left: 235px;"></span>
						</button>
					</div>

					<div class="col-sm-6 col-lg-6 mb-3">
						<div class="title-left">
							<h3 class="resume_mini_title">자기소개서</h3>
						</div>
						<div class="rounded p-2 bg-light">
							<div class="media mb-2 border-bottom">
								<textarea class="form-control" id="introduce" name="introduce"
									style="height: 200px;"></textarea>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-lg-6 mb-3">
						<div class="title-left">
							<h3 class="resume_mini_title">관심산업</h3>
						</div>
						<div
							style="margin-left: 20px; margin-right: 20px; margin-top: 30px;">
							<select class="form-control" id="job" name="job" style="height: 30px; width: 200px;">
								<option value="" selected disabled hidden>관심산업</option>
								<option value="서비스업">서비스업</option>
								<option value="금융은행업">금융은행업</option>
								<option value="IT·정보통신산업">IT·정보통신산업</option>
								<option value="판매·유통업">판매·유통업</option>
								<option value="제조·생산·화학업">제조·생산·화학업</option>
								<option value="미디어·광고업">미디어·광고업</option>
								<option value="기관·협회">기관·협회</option>
							</select> <small class="text-muted">관심있는 산업군을 선택해 주세요.</small>
						</div>
					</div>

					<div class="col-sm-6 col-lg-6 mb-3">
						<div class="title-left">
							<h3 class="resume_mini_title">포트폴리오</h3>
						</div>
						<div class="mb-4">
							<input type="file" class="form-control" name="uploadportfolio"
								style="height: 40px;">
						</div>
						
						<button type="submit" class="btn btn-primary" style="background-color: #40e0d0;
						border: 0px; border-radius: 20px; width: 110px; height: 50px; font-weight: bold;
						margin-left: 430px; margin-top: 60px;">이력서 저장</button>
					</div>

				</div>
			</div>
		</form>
	</div>

	<script type='text/javascript'>
	
	$('#btnPlusLicense') .click( function() {
		$('#plus_license1').append( "<div style='width: 180px; margin-left: 20px; margin-right: 20px; margin-top: 15px;'>")
		$('#plus_license1').append("<input type='text' class='form-control' id='license1' name='license1' placeholder='어학시험/자격증 이름 입력' value=''>")
		$('#plus_license1').append("</div>")
		$('#plus_license2').append("<div style='width: 160px; margin-right: 10px; margin-top: 15px;'>")
		$('#plus_license2').append("<input type='text' class='form-control' id='license2' name='license2' placeholder='급수/점수 입력' value=''>")
		$('#plus_license2').append("</div>")
		$('#plus_license3').append("<div style='width: 160px; margin-top: 15px;'>")
		$('#plus_license3').append("<input type='month' class='form-control' id='license3' name='license3' placeholder='취득월 입력' value=''>")
		$('#plus_license3').append("</div>")
	});

	$('#btnPlusActivity').click(function() {
		$('#plus_activity1').append("<div style='width: 180px; margin-left: 20px; margin-right: 20px; margin-top: 15px;'>")
		$('#plus_activity1').append("<input type='text' class='form-control' id='activity1' name='activity1' placeholder='대외활동명 입력' value=''>")
		$('#plus_activity1').append("</div>")
		$('#plus_activity2').append("<div style='width: 160px; margin-right: 10px; margin-top: 15px;'>")
		$('#plus_activity2').append("<input type='month' class='form-control' id='activity2' name='activity2' placeholder='시작' value=''>")
		$('#plus_activity2').append("</div>")
		$('#plus_activity3').append("<div style='width: 160px; margin-top: 15px;'>")
		$('#plus_activity3').append("<input type='month' class='form-control' id='activity3' name='activity3' placeholder='종료' value=''>")
		$('#plus_activity3').append("</div>")
	});

	$('#btnPlusCareer').click(function() {
		$('#plus_career').append("<div>")
		$('#plus_career').append("<input type='text' style='width: 180px; margin-left: 20px; margin-right: 20px; margin-top: 15px;' class='form-control' id='career1' name='career1' placeholder='회사명' value=''>")
		$('#plus_career').append("<input type='text' style='width: 160px; margin-top: 15px;' class='form-control' id='career2' name='career2' placeholder='부서명' value=''>")
		$('#plus_career').append("</div>")
		$('#plus_career').append("<input type='text' style='width: 180px; margin-left: 20px; margin-right: 20px; margin-top: 15px;' class='form-control' id='career3' name='career3' placeholder='직급/직책' value=''>")
		$('#plus_career').append("<input type='month' style='width: 160px; margin-right: 10px; margin-top: 15px;' class='form-control' id='career4' name='career4' placeholder='입사월' value=''>")
		$('#plus_career').append("<input type='month' style='width: 160px; margin-top: 15px;' class='form-control' id='career5' name='career5' placeholder='퇴사월' value=''>")
		$('#plus_career').append("<div style='width: 100%; margin-left: 20px; margin-right: 20px; margin-top: 15px;'><hr style='border:solid 0.05px #c6f7f2;'></div>")
	});
		
	</script>
   
</body>
</html>