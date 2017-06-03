<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">		
		<title>Đăng nhập</title>
		
	</head>
	<body>
		<jsp:include page = "header.jsp"></jsp:include>
			<section id="form"><!--form-->
				<div class="container">
					<div class="row">
						<div class="col-sm-4 col-sm-offset-1">
							<div class="login-form"><!--login form-->
								<h2>Đăng nhập</h2>
								<form id="loginAccountForm" cssClass="form-horizontal" method="post" action="login">
									<p id=error>
										<c:out value="${error}" />
									</p>
									<input type="text" placeholder="Tên đăng nhập*" name = "accountName" id = "accountName" value = "${account.accountName}"/>									
									<input type="password" placeholder="Mật khẩu*" name = "pass" id = "pass"/>
									<!-- <span>
										<input type="checkbox" class="checkbox"> 
										Keep me signed in
									</span> -->
									<button type="submit" class="btn btn-default">Đăng nhập</button>
								</form>
							</div><!--/login form-->
						</div>
						<div class="col-sm-1">
							<h2 class="or">Hoặc</h2>
						</div>
						<div class="col-sm-4">
							<div class="signup-form"><!--sign up form-->
								<h2>Đăng ký tài khoản mới!</h2>
								<p id=warring>
										<c:out value="${warring}" />
								</p>
								<form:form id="signupAccountForm" cssClass="form-horizontal" modelAttribute="account" method="post" action="createAccount">
									<form:hidden path="accountId" value="${account.accountId}"/>
									<form:hidden path="role" value="User"/>
									<form:hidden path="statusAccount" value="Active"/>									
									<input type="text" placeholder="Tên đăng nhập*" name = "accountName" id = "accountName"/>									
									<input type="password" placeholder="Mật khẩu*" name = "repass" id = "repass" />
									<input type="password" placeholder="Nhập lại mật khẩu*" name = "pass" id = "pass" />
									<input type="text" placeholder="Số điện thoại*" name = "numPhone" id = "numPhone"/>
									<input type="email" placeholder="Email liên hệ*" name = "email" id = "email" />
									<button type="submit" class="btn btn-default*">Đăng ký</button>
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
	        $("#loginAccountForm").validate({
				rules : {
					accountName : {
						required : true,
						rangelength : [ 6, 50 ]
					},
					pass : {
						required : true,
						minlength : 6
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
					}
				}
			});
	        
	        //Đăng ký tài khoản
	        $("#signupAccountForm").validate({
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
	    				required : true
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
	    				required : "Chưa nhập email"
	    			}
	    		}
	    	});
	    });
	    </script>
	</body>
</html>