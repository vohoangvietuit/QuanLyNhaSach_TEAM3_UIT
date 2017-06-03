<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Thể loại</title>
	</head>
	<body>
		<jsp:include page = "adminHeader.jsp"></jsp:include>
			<div id="wrapper">
				<jsp:include page="adminMenu.jsp"></jsp:include>
				<form:form id="adminCategoryForm" cssClass="form-horizontal" modelAttribute="category" method="post" action="adminSaveCategory">
					<div id="rightContent">				
					<h3>Thể loại</h3>			
						<table width="95%">
							<form:hidden path="categoryId" value="${category.categoryId}"/>
							<form:hidden path="statusCategory" value="Active"/>
							<tr><td style = "float: right"><b>Tên thể loại:</b></td><td><input type="text" class="sedang" name = "categoryName" id = "categoryName" value = "${category.categoryName}"></td></tr>
							<tr><td></td><td>
							<input type="button" class="button" value="Cancel" onclick="window.location.href='adminManagerCategory?indexPage=1'">
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
		        $("#adminCategoryForm").validate({
		    		rules : {
		    			categoryName : {
		    				required : true,
		    				rangelength : [ 6, 50 ]
		    			}
		    		},
		    		messages : {
		    			categoryName : {
		    				required : "Chưa nhập tên thể loại",
		    				rangelength : "Tên tài khoản phải chứa từ 6 tới 50 kí tự"
		    			}
		    		}
		    	});
		    });
		    </script>
	</body>
</html>