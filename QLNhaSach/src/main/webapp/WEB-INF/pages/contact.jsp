<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Liên hệ</title>
	</head>
	<body>
		<jsp:include page = "header.jsp"></jsp:include>
		<div id="contact-page" class="container">
	    	<div class="bg">
		    	<div class="row">    		
		    		<div class="col-sm-12">    			   			
						<h2 class="title text-center">Liên <strong>Hệ</strong></h2>    			    				    				
					</div>			 		
				</div>    	
	    		<div class="row">  	
		    		<div class="col-sm-8">
		    			<div class="contact-form">
		    				<h2 class="title text-center">Nội dung</h2>
		    				<div class="status alert alert-success" style="display: none"></div>
					    	<form id="main-contact-form" class="contact-form row" name="contact-form" method="post" action = "sendContact">
					            <div class="form-group col-md-6">
					                <input type="text" name="name" id = "name" class="form-control" required="required" placeholder="Name">
					            </div>
					            <div class="form-group col-md-6">
					                <input type="email" name="email" id = "email" class="form-control" required="required" placeholder="Email">
					            </div>
					            <div class="form-group col-md-12">
					                <input type="text" name="subject" id = "subject" class="form-control" required="required" placeholder="Subject">
					            </div>
					            <div class="form-group col-md-12">
					                <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>
					            </div>                        
					            <div class="form-group col-md-12">
					                <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">
					            </div>
					        </form>
		    			</div>
		    		</div>
		    		<div class="col-sm-4">
		    			<div class="contact-info">
		    				<h2 class="title text-center">Thông tin liên hệ</h2>
		    				<address>
		    					<p>Cửa hàng sách j2ee</p>
								<p>Khu phố 6, phường Linh Trung, quận Thủ Đức</p>
								<p>Hồ Chí Minh</p>
								<p>Mobile: +0897 352 78 87</p>
								<p>Fax: 1-714-252-0026</p>
								<p>Email: nhasachj2ee@gmail.com</p>
		    				</address>
		    			</div>
	    			</div>    			
		    	</div>  
	    	</div>	
	    </div><!--/#contact-page-->
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>