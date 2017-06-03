<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quản lý tài khoản</title>
</head>
<body>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<div id="wrapper">
		<jsp:include page="adminMenu.jsp"></jsp:include>
		<div id="rightContent">
			<h3>Quản lý tài khoản người dùng</h3>
			<a class="btn btn-success" href="adminManagerAdminAccount?indexPage=1">Chuyển qua tài
				khoản Admin</a>
				<form action="searchUserAccount">
					<div class="search_box pull-right">
						<input type="text" class="sedang" placeholder="Tìm kiếm" name = "searchName" id = "searchName"/>
						<button type="submit" class="btn btn-success search">Tìm</button>
					</div>
				</form>
			<table class="data">
				<tr class="data">
					<th class="data" width="30px">No</th>
					<th class="data">Tên tài khoản</th>
					<th class="data">Email</th>
					<th class="data">Số điện thoại</th>
					<th class="data">Quyền</th>
					<th class="data">Trạng thái</th>
					<th class="data">Đổi trạng thái</th>
				</tr>
				<c:forEach items="${listAccount}" var="ac">
					<tr class="data">
						<td class="data" width="30px">1</td>
						<td class="data">${ac.accountName }</td>
						<td class="data">${ac.email }</td>
						<td class="data">${ac.numPhone }</td>
						<td class="data">${ac.role }</td>
						<td class="data">${ac.statusAccount }</td>
						<td class="data"><a href="adminLockAccount?accountId=${ac.accountId}"><i class="fa fa-pencil"></i></a></td>	
					</tr>
				</c:forEach>
			</table>
			<ul class="pagination">
				<c:forEach items="${listPages}" var="pa">
					<c:if test="${pa == indexPage}">
						<li class="active"><a href="">${indexPage}</a></li>
					</c:if>
					<c:if test="${pa != indexPage}">
						<li><a href="adminManagerUserAccount?indexPage=${pa}">${pa}</a></li>
					</c:if>
				</c:forEach>
			</ul>
			<div class="clear"></div>
			<jsp:include page="adminFooter.jsp"></jsp:include>
		</div>
</body>
</html>