<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Tài khoản</title>
	</head>
	<body>
		<jsp:include page = "adminHeader.jsp"></jsp:include>
			<div id="wrapper">
				<jsp:include page="adminMenu.jsp"></jsp:include>
				
				<form:form id="adminAcountForm" cssClass="form-horizontal" modelAttribute="account" method="post" action="adminSaveAccount">
				<div id="rightContent">
				<h3>Tài khoản</h3>	
				<p id=warring>
					<c:out value="${warring}" />
				</p>							
					<table width="95%">
						<form:hidden path="accountId" value="${account.accountId}"/>
						<form:hidden path="role" value="Admin"/>
						<form:hidden path="statusAccount" value="Active"/>	
						<tr><td><b>Tên đăng nhập*</b></td><td><input type="text" class="panjang" name = "accountName" id = "accountName" value = "${account.accountName}"></td></tr>
						<tr><td><b>Mật khẩu</b></td><td><input type="password" class="panjang" name = "repass" id = "repass"  value = "${account.numPhone}"></td></tr>
						<tr><td><b>Nhập lại mật khẩu</b></td><td><input type="password" class="panjang" name = "pass" id = "pass" value = "${account.numPhone}"></td></tr>
						<tr><td><b>Số điện thoại</b></td><td><input type="text" class="panjang" name = "numPhone" id = "numPhone"  value = "${account.numPhone}"></td></tr>
						<tr><td><b>Email liên hệ</b></td><td><input type="text" class="panjang" name = "email" id = "email"  value = "${account.email}"></td></tr>													
						<tr><td></td><td>
						<input type="button" class="button" value="Cancel" onclick="window.location.href='adminManagerAdminAccount?indexPage=1'">
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
		    	$("#adminAcountForm").validate({
		    		rules : {
		    			accountName : {
		    				required : true,
		    				rangelength : [ 6, 50 ]
		    			},
		    			repass : {
		    				required : true,
		    				minlength : 6
		    			},
		    			pass : {
		    				required : true,
		    				minlength : 6,
		    				equalTo : "#repass"
		    			},
		    			numPhone : {
		    				required : true,
		    				digits : true,
		    				rangelength : [ 9, 12 ]
		    			},
		    			email : {
		    				required : true,
		    				email: true
		    			}
		    		},
		    		messages : {
		    			accountName : {
		    				required : "Chưa nhập tên tài khoản",
		    				rangelength : "Tên tài khoản phải chứa từ 6 tới 50 kí tự"
		    			},
		    			repass : {
		    				required : "Chưa nhập mật khẩu",
		    				minlength : "Mật khẩu tối tiểu 6 kí tự"
		    			},
		    			pass : {
		    				required : "Chưa nhập lại mật khẩu",
		    				minlength : "Mật khẩu tối tiểu 6 kí tự",
		    				equalTo : "Mật khẩu không khớp"
		    			},
		    			numPhone : {
		    				required : "Chưa nhập số điện thoại",
		    				digits : "Chỉ nhập số",
		    				rangelength : "Số điện thoại chứa từ 9 tới 12 số"
		    			},
		    			email : {
		    				required : "Chưa nhập email",
		    				email: "Email nhập không đúng"
		    			}
		    		}
		    	});
		    });
		    </script>
	</body>
</html>