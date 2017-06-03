<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Đăng nhập</title>
		<link href="<c:url value="/resources/css/mos-style.css" />" rel="stylesheet">
	</head>
	<body>
		<div id="header">
			<div class="inHeaderLogin"></div>
		</div>
		
		<div id="loginForm">
			<div class="headLoginForm">
			Login Administrator
			</div>
			<div class="fieldLogin">
			<form id="adminLoginForm" method="POST" action="adminLogin">
				<p id=error>
					<c:out value="${error}" />
				</p>
				<label>Username</label><br>
				<input type="text" class="login" name = "accountName" id = "accountName"><br>
				<label>Password</label><br>
				<input type="password" class="login" name = "pass" id = "pass"><br>
				<input type="submit" class="button" value="Login">
			</form>
			</div>
		</div>
	</body>
</html>