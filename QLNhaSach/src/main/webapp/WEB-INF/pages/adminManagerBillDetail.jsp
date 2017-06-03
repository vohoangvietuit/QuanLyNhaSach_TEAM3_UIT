<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chi tiết hóa đơn</title>
</head>
<body>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<div id="wrapper">
		<jsp:include page="adminMenu.jsp"></jsp:include>
		<div id="rightContent">
			<h3>Chi tiết hóa đơn</h3>
			<table class="data">
				<tr class="data">
					<th class="data">Khách hàng</th>
					<th class="data">Email</th>
					<th class="data">Số điện thoại</th>
					<th class="data">Địa chỉ giao hàng</th>
					<th class="data">Ngày mua</th>
					<th class="data">Thanh toán</th>
					<th class="data">Tổng tiền</th>
				</tr>
				<tr class="data">
					<td class="data">${bi.account.accountName }</td>
					<td class="data">${bi.account.email }</td>
					<td class="data">${bi.account.numPhone }</td>
					<td class="data">${bi.address }</td>
					<td class="data">${bi.date }</td>
					<td class="data">${bi.payment }</td>
					<td class="data"><a
						href="adminManagerBillDetail?billId=${bi.billId }">${bi.total }</a></td>
				</tr>
			</table>			
			<table class="data">
				<tr class="data">
					<th class="data">Bill Id</th>
					<th class="data">Tên sách</th>
					<th class="data">Số lượng mua</th>
					<th class="data">Giá</th>
				</tr>
				<c:forEach items="${listBillDetail}" var="biDe">
					<tr class="data">
						<td class="data">${biDe.bill.billId }</td>
						<td class="data">${biDe.book.bookName }</td>
						<td class="data">${biDe.quantity }</td>
						<td class="data">${biDe.price }</td>
					</tr>
				</c:forEach>
			</table>
			<div class="clear"></div>
			<jsp:include page="adminFooter.jsp"></jsp:include>
		</div>
</body>
</html>