<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">		
		<title>${account.accountName }</title>
		
	</head>
	<body>
		<jsp:include page = "header.jsp"></jsp:include>
			<section id="form"><!--form-->
				<div class="container">
					<div class="row">
						<div class="col-sm-8">
							<div class="info-acc">
								<img class="img-responsive" src="resources/images/home/information.jpg">
							</div>
						</div>
						<div class="col-sm-4">
							<div class="signup-form"><!--sign up form-->
								<h2>Thông tin tài khoản!</h2>
								<form:form id="accountInfomationForm" cssClass="form-horizontal" modelAttribute="account" method="post" action="updateAccount">									
									<form:hidden path="accountId" value="${account.accountId}"/>
									<form:hidden path="role" value="${account.role}"/>
									<form:hidden path="statusAccount" value="${account.statusAccount}"/>			
									<input type="text" name="accountName" id="accountName" value="${account.accountName }" pattern="[a-zA-Z0-9\s]{5,100}"/>									
									<input type="password" name="pass" id="pass" value="${account.pass }" pattern="[a-zA-Z0-9\s]{5,100}"/>
									<input type="password" name="repass" id="repass" value="${account.pass }" pattern="[a-zA-Z0-9\s]{5,100}"/>									
									<input type="text" name = "numPhone" id = "numPhone" value="${account.numPhone }"/>
									<input type="email" name = "email" id = "email" value="${account.email }"/>
									<button type="submit" class="btn btn-default*">Cập nhật</button>
								</form:form>
							</div><!--/sign up form-->
						</div>
					</div>
				</div>
			</section><!--/form-->			
		<jsp:include page="footer.jsp"></jsp:include>
		<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
   		<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
		<script type="text/javascript">
	 
	    $(document).ready(function() {
	 
	        //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
	    	$("#accountInfomationForm").validate({
	    		rules : {
	    			accountName : {
	    				required : true,
	    				rangelength : [ 6, 50 ]
	    			},
	    			pass : {
	    				required : true,
	    				minlength : 6
	    			},
	    			repass : {
	    				required : true,
	    				minlength : 6,
	    				equalTo : "#pass"
	    			},
	    			numPhone : {
	    				required : true,
	    				digits : true,
	    				rangelength : [ 9, 12 ]
	    			},
	    			email : {
	    				required : true
	    			}
	    		},
	    		messages : {
	    			accountName : {
	    				required : "Chưa nhập tên tài khoản",
	    				rangelength : "Tên tài khoản phải chứa từ 6 tới 50 kí tự"
	    			},
	    			pass : {
	    				required : "Chưa nhập mật khẩu",
	    				minlength : "Mật khẩu tối tiểu 6 kí tự"
	    			},
	    			repass : {
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
	    				required : "Chưa nhập email"
	    			}
	    		}
	    	});
	    });
	    </script>
	</body>
</html>