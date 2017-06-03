<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Quản lý sách</title>
	</head>
	<body>
		<jsp:include page = "adminHeader.jsp"></jsp:include>
			<div id="wrapper">
				<jsp:include page="adminMenu.jsp"></jsp:include>
				<div id="rightContent">
					<h3>Quản lý sách</h3>				
			
					<a class = "btn btn-success" href = "adminAddBook">Thêm sách</a>
					<form action="searchBook">
						<div class="search_box pull-right">
							<input type="text" class="sedang" placeholder="Tìm kiếm" name = "searchName" id = "searchName"/>
							<button type="submit" class="btn btn-success search">Tìm</button>
						</div>
					</form>
						<table class="data">
								<tr class="data">
									<th class="data hidden" width="30px">No</th>
									<th class="data">Tên sách</th>
									<th class="data">Tác giả</th>
									<th class="data">Thể loại</th>
									<th class="data">Nhà xuất bản</th>
									<th class="data">Năm xuất bản</th>
									<th class="data">Giá mua</th>
									<th class="data">Giá bán</th>
									<th class="data">Trạng thái</th>
									<th class="data">Sửa</th>
									<th class="data">Đổi trạng thái</th>
								</tr>		
								<c:forEach items="${listBook}" var="bo">				
									<tr class="data">
										<td class="data hidden" width="30px">${bo.bookId}</td>
										<td class="data">${bo.bookName }</td>
										<td class="data">${bo.author }</td>
										<td class="data">${bo.category.categoryName }</td>
										<td class="data">${bo.producer }</td>
										<td class="data">${bo.yearPublish }</td>										
										<td class="data">${bo.buyPrice }</td>
										<td class="data">${bo.salePrice }</td>
										<td class="data">${bo.statusBook }</td>
									 	<td class="data">
												<a href="adminEditBook?bookId=${bo.bookId}"><i class="fa fa-pencil"></i></a>
										</td>
									 	<td class="data">
												<a href="adminDeleteBook?bookId=${bo.bookId}"><i class="fa fa-pencil"></i></a>
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
										<li><a href="adminManagerBook?indexPage=${pa}">${pa}</a></li>
									</c:if>							
								</c:forEach>
								</ul>
							</c:if>
				<div class="clear"></div>
				<jsp:include page = "adminFooter.jsp"></jsp:include>
			</div>
	</body>
</html>