<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>footer</title>
	</head>
	<body>
		<footer id="footer"><!--Footer-->
		<!-- 
			<div class="footer-top">
				<div class="container">
					<div class="row">
						<div class="col-sm-2">
							<div class="companyinfo">
								<h2><span>e</span>-shopper</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor</p>
							</div>
						</div>
						<div class="col-sm-7">
							<div class="col-sm-3">
								<div class="video-gallery text-center">
									<a href="#">
										<div class="iframe-img">
											<img src="resources/images/home/iframe1.png" alt="" />
										</div>
										<div class="overlay-icon">
											<i class="fa fa-play-circle-o"></i>
										</div>
									</a>
									<p>Circle of Hands</p>
									<h2>24 DEC 2014</h2>
								</div>
							</div>
							
							<div class="col-sm-3">
								<div class="video-gallery text-center">
									<a href="#">
										<div class="iframe-img">
											<img src="resources/images/home/iframe2.png" alt="" />
										</div>
										<div class="overlay-icon">
											<i class="fa fa-play-circle-o"></i>
										</div>
									</a>
									<p>Circle of Hands</p>
									<h2>24 DEC 2014</h2>
								</div>
							</div>
							
							<div class="col-sm-3">
								<div class="video-gallery text-center">
									<a href="#">
										<div class="iframe-img">
											<img src="resources/images/home/iframe3.png" alt="" />
										</div>
										<div class="overlay-icon">
											<i class="fa fa-play-circle-o"></i>
										</div>
									</a>
									<p>Circle of Hands</p>
									<h2>24 DEC 2014</h2>
								</div>
							</div>
							
							<div class="col-sm-3">
								<div class="video-gallery text-center">
									<a href="#">
										<div class="iframe-img">
											<img src="resources/images/home/iframe4.png" alt="" />
										</div>
										<div class="overlay-icon">
											<i class="fa fa-play-circle-o"></i>
										</div>
									</a>
									<p>Circle of Hands</p>
									<h2>24 DEC 2014</h2>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="address">
								<img src="resources/images/home/map.png" alt="" />
								<p>505 S Atlantic Ave Virginia Beach, VA(Virginia)</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			 -->
			<div class="footer-widget">
				<div class="container">
					<div class="row">
						<div class="col-sm-2">
							<div class="single-widget">
								<h2>Dịch vụ</h2>
								<ul class="nav nav-pills nav-stacked">
									<li><a href="#">Hỗ trợ trực tuyến</a></li>
									<li><a href="#">Liên hệ</a></li>
									<li><a href="#">Danh sách sách</a></li>
									<li><a href="#">FAQ</a></li>
								</ul>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="single-widget">
								<h2>Thể loại</h2>
								<ul class="nav nav-pills nav-stacked">
									<li><a href="#">Sách trẻ em</a></li>
									<li><a href="#">Khoa học</a></li>
									<li><a href="#">Xã hội</a></li>
									<li><a href="#">Giải trí</a></li>
									<li><a href="#">Công nghệ</a></li>
								</ul>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="single-widget">
								<h2>Chính sách</h2>
								<ul class="nav nav-pills nav-stacked">
									<li><a href="#">Điều khoản sử dụng</a></li>
									<li><a href="#">Chính sách</a></li>
									<li><a href="#">Hoàn tiền</a></li>
									<li><a href="#">Hệ thống sách</a></li>
									<li><a href="#">Khuyến mãi</a></li>
								</ul>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="single-widget">
								<h2>Thông tin</h2>
								<ul class="nav nav-pills nav-stacked">
									<li><a href="#">Thông tin nhà sách</a></li>
									<li><a href="#">Tuyển dụng</a></li>
									<li><a href="#">Vị trí</a></li>
									<li><a href="#">Chương trình hoạt động</a></li>
									<li><a href="#">Bản quyền</a></li>
								</ul>
							</div>
						</div>
						<div class="col-sm-3 col-sm-offset-1">
							<div class="single-widget">
								<h2>Theo dõi</h2>
								<form action="#" class="searchform">
									<input type="text" placeholder="Email của bạn" />
									<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
									<p>Đăng ký theo dõi sách mới...</p>
								</form>
							</div>
						</div>
						
					</div>
				</div>
			</div>
			
			<div class="footer-bottom">
				<div class="container">
					<div class="row">
						<p class="pull-left">Copyright © 2017 All rights reserved.</p>
						<p class="pull-right">Designed by <span>Team 3</span></p>
					</div>
				</div>
			</div>			
		</footer><!--/Footer-->
		<script	src="<c:url value="/resources/js/jquery.js"/>" type="text/javascript"></script>
		<script	src="<c:url value="/resources/js/bootstrap.min.js"/>" type="text/javascript"></script>
<%-- 		<script	src="<c:url value="/resources/js/gmaps.js"/>" type="text/javascript"></script> --%>
		<script	src="<c:url value="/resources/js/html5shiv.js"/>" type="text/javascript"></script>
		<script	src="<c:url value="/resources/js/price-range.js"/>" type="text/javascript"></script>
		<script	src="<c:url value="/resources/js/jquery.prettyPhoto.js"/>" type="text/javascript"></script>
		<script	src="<c:url value="/resources/js/jquery.scrollUp.min.js"/>" type="text/javascript"></script>
		<script	src="<c:url value="/resources/js/main.js"/>" type="text/javascript"></script>
<!-- 		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.scrollUp.min.js"></script>
		<script src="js/price-range.js"></script>
	    <script src="js/jquery.prettyPhoto.js"></script>
	    <script src="js/main.js"></script> -->
	</body>
</html>