<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>header</title>
		
		<link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/bootstrap.min.css" />"	rel="stylesheet">
		<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/prettyPhoto.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/price-range.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/responsive.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

		
	</head>
	<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +08 97 352 7887</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> trantanngoc.it@gmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index"><img src="resources/images/home/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="getListOnCart"><i class="fa fa-shopping-cart"></i> Giỏ hàng <span class="numBook">${totalBook}</span></a></li>
								<c:if test="${statusLogin.accountId != 0 }">																
									<li><a href="accountInfomation"><i class="fa fa-user"></i> Tài khoản</a></li>
								</c:if>								
								<c:if test="${statusLogin.accountId == 0 }">																
									<li><a href="account"><i class="fa fa-lock"></i> Đăng nhập</a></li>
								</c:if>
								<c:if test="${statusLogin.accountId != 0 }">																
									<li><a href="logout"><i class="fa fa-lock"></i> Đăng Xuất</a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index" class="active">Trang chủ</a></li>
								<li class="dropdown"><a href="index">Cửa hàng<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="getListBookByCategory?id=1&indexPage=1">Sách</a></li>
										<li><a href="getListOnCart">Giỏ hàng</a></li> 
										<c:if test="${statusLogin.accountId != 0 }">																
										<li><a href="accountInfomation">Tài khoản</a></li>
										</c:if>								
										<c:if test="${statusLogin.accountId == 0 }">																
											<li><a href="account"> Đăng nhập</a></li>
										</c:if>
										<c:if test="${statusLogin.accountId != 0 }">																
											<li><a href="logout"> Đăng Xuất</a></li>
										</c:if>
                                    </ul>
                                </li>
								<li><a href="contact">Liên hệ</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<form action="userSearchBook">
							<div class="search_box pull-right">
								<input type="text" class="sedang" placeholder="Tìm kiếm" name = "searchName" id = "searchName"/>
								<button class="btn btn-success search">Tìm</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	</body>
</html>