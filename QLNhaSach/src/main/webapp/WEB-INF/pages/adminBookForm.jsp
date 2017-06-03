<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Sách</title>
	</head>
	<body>
		<jsp:include page = "adminHeader.jsp"></jsp:include>
			<div id="wrapper">
				<jsp:include page="adminMenu.jsp"></jsp:include>
				
				<form:form id="adminBookForm" cssClass="form-horizontal" modelAttribute="book" method="post" action="adminSaveBook" enctype="multipart/form-data">
				<div id="rightContent">
				<h3>Sách</h3>								
					<table width="95%">
						<form:hidden path="bookId" value="${book.bookId}"/>
						<form:hidden path="statusBook" value="Active"/>
						<tr><td><b>Tên sách</b></td><td><input type="text" class="panjang" name = "bookName" id = "bookName"  value = "${book.bookName}"></td></tr>
						<tr><td><b>Tác giả</b></td><td><input type="text" class="panjang" name = "author" id = "author"  value = "${book.author}"></td></tr>
						<tr><td><b>Thể loại</b></td><td>
							<select name= "categoryId" id="categoryId" >		
								<option selected value="${book.category.categoryId}">${book.category.categoryName }</option>						
								<c:forEach items="${listCategory}" var="cate">
									<option value="${cate.categoryId}">${cate.categoryName }</option>
								</c:forEach>	
							</select>
						</td></tr>
						<tr><td><b>Nhà xuất bản</b></td><td><input type="text" class="panjang" name = "producer" id = "producer"  value = "${book.producer}"></td></tr>
						<tr><td><b>Năm xuất bản</b></td><td><input type="text" class="sedang" name = "yearPublish" id = "yearPublish"  value = "${book.yearPublish}"></td></tr>
						<tr><td width="125px"><b>Giá mua</b></td><td><input type="text" class="pendek" name = "salePrice" id = "salePrice"  value = "${book.salePrice}">  VND</td></tr>
						<tr><td width="125px"><b>Giá bán</b></td><td><input type="text" class="pendek" name = "buyPrice" id = "buyPrice"  value = "${book.buyPrice}">  VND</td></tr>
						<tr><td width="125px"><b>Chọn ảnh</b></td><td><input type="file" class="panjang" name = "fileUpload" id = "fileUpload" >${book.image}</td></tr>													
						<tr><td></td><td>
						<input type="button" class="button" value="Cancel" onclick="window.location.href='adminManagerBook?indexPage=1'">
						<input type="submit" class="button" value="Submit">
						<input type="reset" class="button" value="Reset">
						</td></tr>
					</table>				
				</div>
				</form:form>
				
				<div class="clear"></div>
				<jsp:include page = "adminFooter.jsp"></jsp:include>
			</div>
			<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	   		<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
			<script type="text/javascript"> 
		    $(document).ready(function() {
		        $("#adminBookForm").validate({
		    		rules : {
		    			bookName : {
		    				required : true,
		    				rangelength : [ 6, 200 ]
		    			},
		    			author : {
		    				required : true,
		    				rangelength : [ 6, 50 ]
		    			},
		    			categoryId : {
		    				required : true
		    			},
		    			producer : {
		    				required : true,
		    				rangelength : [ 6, 200 ]
		    			},
		    			yearPublish : {
		    				required : true,
		    				number: true,
		    				range : [ 1, 9999 ]
		    			},
		    			salePrice : {
		    				required : true,
		    				number: true,
		    				range : [ 1000, 1000000 ]
		    			},
		    			buyPrice : {
		    				required : true,
		    				number: true,
		    				range : [ 1000, 1000000 ]
		    			},
		    			fileUpload:{
		    				required: true
		    			}
		    		},
		    		messages : {
		    			bookName : {
		    				required : "Chưa nhập tên sách",
		    				rangelength : "Tên sách chứa từ 6 tới 200 kí tự"
		    			},
		    			author : {
		    				required : "Chưa nhập tên tác giả",
		    				rangelength : "Tên tác giả chứa từ 6 tới 50 kí tự"
		    			},
		    			categoryId : {
		    				required : "Chưa nhập tên thể loại"
		    			},
		    			producer : {
		    				required : "Chưa nhập tên nhà sản xuất",
		    				rangelength : "Tên nhà sản xuất chứa từ 6 tới 200 kí tự"
		    			},
		    			yearPublish : {
		    				required : "Chưa nhập năm xuất bản",
		    				number: "Năm xuất bản chỉ nhập số",
		    				range : "Năm xuất bản trong khoảng từ năm 1 tới năm 9999"
		    			},
		    			salePrice : {
		    				required : "Chưa nhập giá mua",
		    				number: "Giá mua chỉ được nhập số",
		    				range : "Giá mua từ 1000 tới 1000000"
		    			},
		    			buyPrice : {
		    				required : "Chưa nhập giá bán",
		    				number: "Giá bán chỉ được nhập số",
		    				range : "Giá bán từ 1000 tới 1000000"
		    			},
		    			fileUpload:{
		    				required: "Bạn chưa chọn hình ảnh cho sách"
		    			}
		    		}
		    	});
		    });
		    </script>
	</body>
</html>