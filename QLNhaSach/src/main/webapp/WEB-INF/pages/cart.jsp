<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Giỏ hàng</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section id="cart_items">
	<div class="container">
		<div class="breadcrumbs">
			<ol class="breadcrumb">
				<li><a href="index">Home</a></li>
				<li class="active">Giỏ hàng</li>
			</ol>
		</div>
		<div class="table-responsive cart_info">
			<table class="table table-condensed">
				<thead>
					<tr class="cart_menu">
						<td class="image">Sách</td>
						<td class="description"></td>
						<td class="price">Giá</td>
						<td class="quantity">Số lượng</td>
						<td class="total">Tổng tiền</td>
						<td></td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listItem}" var="it">
						<tr>
							<td class="cart_product"><a href=""><img
									src="resources/images/upload/${it.book.image}" alt="" width=80
									height=80 /></a></td>
							<td class="cart_description">
								<h4>
									<a href="">${it.book.bookName}</a>
								</h4>
							</td>
							<td class="cart_description">
								<h4>${it.book.salePrice}VND</h4>
							</td>
							<td class="cart_description">
								<h4>${it.quantity}</h4>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">${it.totalMoney}VND</p>
							</td>
							<td class="cart_delete"><a class="cart_quantity_delete"
								href="removeToCart?bookId=<c:out value='${it.book.bookId}'/>"><i
									class="fa fa-times"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	</section>
	<!--/#cart_items-->

	<section id="do_action">
	<div class="container">
		<div class="heading">
			<h3>Thanh toán đơn hàng tại đây</h3>
			<p>Nhập Địa chỉ muốn nhận hàng ở bên dưới và chọn hình thức trả
				tiền.</p>
		</div>
		<div class="row">
			<div class="col-sm-6">
				<div class="total_area">
					<ul>
						<div class="shopper-info">
							<p>Thông tin hóa đơn</p>
							<form:form id="cartForm" cssClass="form-horizontal"
								method="post" action="checkOutCart">
								<input type="text" placeholder="Tên người dùng"
									name="accountName" id="accountName" value="${user.accountName}" readonly="readonly">
								<input type="text" placeholder="Số điện thoại" name="numPhone"
									id="numPhone" value="${user.numPhone}" readonly="readonly"/>
								<input type="email" placeholder="Địa chỉ email" name="email"
									id="email" value="${user.email}" readonly="readonly"/>								
								<input type="text" placeholder="Địa chỉ giao hàng"
									name="address" id="address" />
								<select name="payment" id="payment">
									<option selected value="Trả sau">Trả sau</option>
									<option value="Trực tuyến">Trực tuyến</option>
								</select>
								<li>Total <span>${totalMoney} VND</span></li>
								<input type="submit" class="btn btn-default" value="Thanh toán">
							</form:form>
						</div>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!--/#do_action-->
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
	<script src="<c:url value="resources/js/checkCondition.js"/>" type="text/javascript"></script>
</body>
</html>