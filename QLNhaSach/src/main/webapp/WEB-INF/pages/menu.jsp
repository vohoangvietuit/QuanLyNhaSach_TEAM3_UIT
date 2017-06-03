<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>menu</title>
	</head>
	<body>
		<div class="col-sm-3">
			<div class="left-sidebar">									
				<div class="brands_products"><!--brands_products-->
					<h2>Thể loại</h2>
					<div class="brands-name">
						<ul class="nav nav-pills nav-stacked">		
						<c:forEach items="${listCategory}" var="cate">
							<li><a href="getListBookByCategory?id=${cate.categoryId}&indexPage=1"> <span class="pull-right"></span>${cate.categoryName}</a></li>
						</c:forEach>
						</ul>
					</div>
				</div><!--/brands_products-->	
			</div>
		</div>
	</body>
</html>