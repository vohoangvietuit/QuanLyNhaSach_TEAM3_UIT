<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Quản lý thể loại</title>
	</head>
	<body>
		<jsp:include page = "adminHeader.jsp"></jsp:include>
			<div id="wrapper">
				<jsp:include page="adminMenu.jsp"></jsp:include>
				<div id="rightContent">
					<h3>Quản lý thể loại</h3>	
					<a class = "btn btn-success" href = "adminAddCategory">Thêm thể loại</a>
					<form action="searchCategory">
						<div class="search_box pull-right">
							<input type="text" class="sedang" placeholder="Tìm kiếm" name = "searchName" id = "searchName"/>
							<button type="submit" class="btn btn-success search">Tìm</button>
						</div>
					</form>
					
						<table class="data" id="cate">
								<tr class="data">
									<th class="data">Tên thể loại</th>
									<th class="data">Trạng thái</th>
									<th class="data edit">Sửa</th>
									<th class="data edit">Đổi trạng thái</th>
								</tr>		
								<c:forEach items="${listCategory}" var="cate">				
									<tr class="data">
										<td class="data">${cate.categoryName }</td>
										<td class="data">${cate.statusCategory }</td>
									 	<td class="data">
												<a href="adminEditCategory?categoryId=${cate.categoryId}"><i class="fa fa-pencil"></i></a>
										</td>
									 	<td class="data">
												<a href="adminDeleteCategory?categoryId=${cate.categoryId}"><i class="fa fa-pencil"></i></a>
										</td>
									</tr>	
								</c:forEach>	
							</table>
							<c:if test="${not empty listPages}">
								<ul class="pagination">
								<c:forEach items="${listPages}" var="pa">
									<c:if test="${pa == indexPage}">
										<li class="active"><a href="">${indexPage}</a></li>
									</c:if>	
									<c:if test="${pa != indexPage}">
										<li><a href="adminManagerCategory?indexPage=${pa}">${pa}</a></li>
									</c:if>							
								</c:forEach>
								</ul>
							</c:if>
				<div class="clear"></div>
				<jsp:include page = "adminFooter.jsp"></jsp:include>
			</div>
	</body>
</html>