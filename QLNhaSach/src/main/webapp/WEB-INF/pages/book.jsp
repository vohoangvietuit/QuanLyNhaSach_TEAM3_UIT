<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cửa hàng sách</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
	<div class="container">
		<div class="row">
			<jsp:include page="menu.jsp"></jsp:include>
			<div class="col-sm-9 padding-right">
				<div class="features_items">
					<!--features_items-->
					<h2 class="title text-center">Danh sách sách</h2>

					<c:forEach items="${listBook}" var="bo">
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href="detailsBook?id=<c:out value='${bo.bookId}'/>"><img
											src="resources/images/upload/${bo.image}" alt="" width=10
											height=200 /></a>
										<h2>${bo.salePrice}VND</h2>
										<p>${bo.bookName}</p>
										<%-- <a href="detailsBook?id=<c:out value='${bo.bookId}'/>"
											class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a> --%>
									</div>
									<%-- <div class="product-overlay">
											<div class="overlay-content">
												<h2>${bo.salePrice} VND</h2>
												<p>${bo.bookName}</p>
												<a href="detailsBook?id=<c:out value='${bo.bookId}'/>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>
										</div> --%>
								</div>
							</div>
						</div>
					</c:forEach>

					<div style="clear: both"></div>

					<ul class="pagination">
						<c:forEach items="${listPages}" var="pa">
							<c:if test="${pa == indexPage}">
								<li class="active"><a href="">${indexPage}</a></li>
							</c:if>
							<c:if test="${pa != indexPage}">
								<li><a
									href="getListBookByCategory?id=${categoryId}&indexPage=${pa}">${pa}</a></li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
				<!--features_items-->
			</div>
		</div>
	</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>