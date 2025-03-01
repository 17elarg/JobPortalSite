<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:set var="root" value="<%=request.getContextPath() %>" />
<c:set var="loginok" value="${sessionScope.loginok }" />
<c:set var="myid" value="${sessionScope.myid }" />
<c:set var="nick" value="${sessionScope.nick }"/>
<c:set var="logintype" value="${sessionScope.logintype }"/>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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

    
<title>Insert title here</title>
<style type="text/css">

.dropdown {
    position: relative;
    display: inline-block;
}
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}
.dropdown-content a:hover {
    background-color: #f1f1f1
}
.dropdown:hover .dropdown-content {
    display: block;
}
.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}


</style>
</head>
<body>
<!-- Start Main Top -->
    <header class="main-header">
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container" style="height: 100px; margin-top: 10px; max-width: 1300px;">
                <!-- Start Header Navigation -->
                <div class="navbar-header" >
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                    <a href="/"><img  src="${root }/images/joblogo.png" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp" style="width: 650px;">
                        <li class="nav-item" id="main"><a class="nav-link" href="/">메인</a></li>
                        <li class="nav-item" id="notice"><a class="nav-link" href="${root }/notices/main" style="">채용공고</a></li>
                        <li class="nav-item" id="find"><a class="nav-link" href="${root }/companies/main">기업탐색</a></li>
                        <li class="nav-item" id="mypage"><a class="nav-link" href="${root }/mypage/main">마이페이지</a></li>
                        <li class="nav-item" id="content"><a class="nav-link" href="${root }/contents/main">콘텐츠</a></li>
                        <li class="nav-item" id="position"><a class="nav-link" href="${root }/position/main">포지션제안</a></li>
                        
                        <!-- <li class="dropdown megamenu-fw">
                           <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Product</a>
                            <ul class="dropdown-menu megamenu-content" role="menu">
                                <li>
                                    <div class="row">
                                        <div class="col-menu col-md-3">
                                            <h6 class="title">Top</h6>
                                            <div class="content">
                                                <ul class="menu-col">
                                                    <li><a href="shop.html">Jackets</a></li>
                                                    <li><a href="shop.html">Shirts</a></li>
                                                    <li><a href="shop.html">Sweaters & Cardigans</a></li>
                                                    <li><a href="shop.html">T-shirts</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        end col-3
                                        <div class="col-menu col-md-3">
                                            <h6 class="title">Bottom</h6>
                                            <div class="content">
                                                <ul class="menu-col">
                                                    <li><a href="shop.html">Swimwear</a></li>
                                                    <li><a href="shop.html">Skirts</a></li>
                                                    <li><a href="shop.html">Jeans</a></li>
                                                    <li><a href="shop.html">Trousers</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        end col-3
                                        <div class="col-menu col-md-3">
                                            <h6 class="title">Clothing</h6>
                                            <div class="content">
                                                <ul class="menu-col">
                                                    <li><a href="shop.html">Top Wear</a></li>
                                                    <li><a href="shop.html">Party wear</a></li>
                                                    <li><a href="shop.html">Bottom Wear</a></li>
                                                    <li><a href="shop.html">Indian Wear</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-menu col-md-3">
                                            <h6 class="title">Accessories</h6>
                                            <div class="content">
                                                <ul class="menu-col">
                                                    <li><a href="shop.html">Bags</a></li>
                                                    <li><a href="shop.html">Sunglasses</a></li>
                                                    <li><a href="shop.html">Fragrances</a></li>
                                                    <li><a href="shop.html">Wallets</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        end col-3
                                    </div>
                                    end row
                                </li>
                            </ul> 
                        </li> -->
                        <!-- <li class="dropdown">
                            <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
                            <ul class="dropdown-menu">
                                <li><a href="cart.html">Cart</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
                                <li><a href="my-account.html">My Account</a></li>
                                <li><a href="wishlist.html">Wishlist</a></li>
                                <li><a href="shop-detail.html">Shop Detail</a></li>
                            </ul>
                        </li> -->
                        
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Start Atribute Navigation -->
                <div class="attr-nav">
                    <ul style="width: 400px;">
                    	<li class="search">
                        	<input type="text" style="width: 140px; margin-top: 22px;" class="form-control" id="keyword"></li>
                        <li class="search1">
                        	<!-- <a href="notices/searchlist?search=서울"><i class="fa fa-search fa-lg"></i></a> -->
                        	<a><span id="searchgo" style="cursor: pointer;"><i class="fa fa-search fa-lg"></i></span></a>
                        	</li>
                        <li class="side-menu">
                        <c:if test="${loginok!=null }">
                        	<div class="dropdown" style="margin-top: 25px; cursor: pointer;">
                        	<c:if test="${logintype=='user' }">
                        		<span style="font-size: 1.1em;" class="glyphicon glyphicon-user"></span>
                        	</c:if>
                        	<c:if test="${logintype=='corp' }">
                        		<span style="font-size: 1.1em;" class="glyphicon glyphicon-briefcase"></span>
                        	</c:if>
                        	<b style="font-size: 1.1em;">${nick }님</b><span class="glyphicon glyphicon-chevron-right"></span>
                        	<c:if test="${logintype=='user' }">
                        		<div class="dropdown-content">
                        			<a href="${root }/mypage/main">이력서 관리</a>
                        			<a href="${root }/mypage/applications">입사지원 현황</a>
                        			<a href="${root }/mypage/scraps">스크랩</a>
                        			<a href="${root }/position/main">포지션 제안</a>
                        			<a href="${root }/mypage/updatpassform">개인정보 수정</a>
                        			<a href="${root }/login/logoutprocess">로그아웃</a>
                        		</div>
                        	</c:if>
                        	<c:if test="${logintype=='corp' }">
                        		<div class="dropdown-content">
                        			<a href="${root }/mypage/main">공고 관리</a>
                        			<a href="${root }/mypage/applicants">지원자 현황</a>
                        			<a href="${root }/position/main">포지션 제안</a>
                        			<a href="${root }/mypage/updatpassform">기업정보 수정</a>
                        			<a href="${root }/login/logoutprocess">로그아웃</a>
                        		</div>
                        	</c:if>
                        	</div>
                        </c:if>
                        <c:if test="${loginok==null }">
                        	<button style="background-color: #40e0d0; border: solid 1px white; border-radius: 20px; margin-top:18px;
							color: white; width: 80px; height: 40px; font-size: 0.9em" onclick="location.href='${root}/login/main'"
						 ><b>로그인</b></button>
                        </c:if>
						
					</li>
                    </ul>
                </div>
                <!-- End Atribute Navigation -->
            </div>
            
        </nav>
        <!-- End Navigation -->
    </header>
    <!-- End Main Top -->
    <script type="text/javascript">
    	$("#searchgo").click(function(){
    		
    		var keyword = $("#keyword").val();
    		location.href="${root}/notices/searchlist?search="+keyword;
    		
    	});
    	
    	
    	
    	$(function(){
    		
    		$(".nav-item").removeClass("active");
    		
    		let pageName = "<c:out value='${sessionScope.pageName}' />";
    		
    		$("#" + pageName).addClass("active");
    		
    	});
    	
    </script>
</body>
</html>