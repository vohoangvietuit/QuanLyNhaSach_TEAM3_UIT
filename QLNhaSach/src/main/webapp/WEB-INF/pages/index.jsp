<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Cửa hàng sách</title>
	</head>
	<body>
		<jsp:include page = "header.jsp"></jsp:include>
		<jsp:include page="slider.jsp"></jsp:include>
		<section>
			<div class="container">
				<div class="row">
					<jsp:include page="menu.jsp"></jsp:include>
					<jsp:include page="content.jsp"></jsp:include>
				</div>
			</div>
		</section>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>