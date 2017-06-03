<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quản lý hóa đơn</title>
</head>
<body>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<div id="wrapper">
		<jsp:include page="adminMenu.jsp"></jsp:include>
		<div id="rightContent">
			<h3>Quản lý Hóa đơn</h3>
			<a class="btn btn-success" href="adminManagerBill?indexPage=1">Chuyển qua hóa đơn chưa thanh toán</a>
				<form action="searchBill">
					<div class="search_box pull-right">
						<input type="text" class="sedang" placeholder="Tìm kiếm" name = "searchName" id = "searchName"/>
						<button type="submit" class="btn btn-success search">Tìm</button>
					</div>
				</form>
			<table class="data">
				<tr class="data">
					<th class="data" width="30px">No</th>
					<th class="data">Khách hàng</th>
					<th class="data">Email</th>
					<th class="data">Số điện thoại</th>
					<th class="data">Địa chỉ giao hàng</th>
					<th class="data">Ngày mua</th>
					<th class="data">Tình trạng</th>
					<th class="data">Thanh toán</th>
					<th class="data">Tổng tiền</th>
				</tr>
				<c:forEach items="${listBill}" var="bi">
					<tr class="data">
						<td class="data" width="30px">1</td>
						<td class="data">${bi.account.accountName }</td>
						<td class="data">${bi.account.email }</td>
						<td class="data">${bi.account.numPhone }</td>
						<td class="data">${bi.address }</td>
						<td class="data">${bi.date }</td>
						<td class="data">${bi.payStatus }</td>
						<td class="data">${bi.payment }</td>
						<td class="data"><a href="adminManagerBillDetail?billId=${bi.billId }">${bi.total }</a></td>
						
					</tr>
				</c:forEach>
			</table>
			<ul class="pagination">
				<c:forEach items="${listPages}" var="pa">
					<c:if test="${pa == indexPage}">
						<li class="active"><a href="">${indexPage}</a></li>
					</c:if>
					<c:if test="${pa != indexPage}">
						<li><a href="adminManagerPaidBill?indexPage=${pa}">${pa}</a></li>
					</c:if>
				</c:forEach>
			</ul>
			<div class="clear"></div>
			<jsp:include page="adminFooter.jsp"></jsp:include>
		</div>
</body>
</html>