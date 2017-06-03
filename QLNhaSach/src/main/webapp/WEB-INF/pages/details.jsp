<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Chi tiết sách</title>
	</head>
	<body>
		<jsp:include page = "header.jsp"></jsp:include>
		<section>
			<div class="container">
				<div class="row">
					<jsp:include page="menu.jsp"></jsp:include>		
					<div class="col-sm-9 padding-right">
						<div class="product-details"><!--product-details-->
							<div class="col-sm-5">
								<div class="view-product">
									<img src="resources/images/upload/${book.image}" alt=""/>
									<h3>ZOOM</h3>
								</div>								
	
							</div>
						<form id="detailsForm" method="post" action="addToCart">
							<div class="col-sm-7">
								<div class="product-information"><!--/product-information-->
									<img src="resources/images/product-details/new.jpg" class="newarrival" alt="" />
									<input type = "hidden" name = "bookId" id = "bookId" value = '${book.bookId}'>
									<h2>${book.bookName}</h2>
									<img src="resources/images/product-details/rating.png" alt="" />
									<span>
										<span>${book.salePrice} VND</span>
										<label>Số lượng:</label>
										<input type="number" min="1" max="100" value="1" name="quantity" id="quantity" required/>
										<button type="submit" class="btn btn-fefault cart" >
											<i class="fa fa-shopping-cart" ></i>
											Thêm vào giỏ hàng
										</button>
									</span>
									<p><b>Tác giả</b> ${book.author}</p>									
									<p><b>Thể loại</b> ${category.categoryName}</p>
									<p><b>Nhà xuất bản</b> ${book.producer}</p>
									<p><b>Năm xuất bản</b> ${book.yearPublish}</p>
									<a href=""><img src="resources/images/product-details/share.png" class="share img-responsive"  alt="" /></a>
								</div><!--/product-information-->
							</div>
						</form>
						</div><!--/product-details-->
											
					</div>
				</div>
			</div>
		</section>
		<jsp:include page="footer.jsp"></jsp:include>
		<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
   		<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
		<!-- <script type="text/javascript">
	 
	    $(document).ready(function() {
	 
	        //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
	    	$("#detailsForm").validate({
	    		rules : {
	    			quantity : {
	    				required : true,
	    				rangelength : [ 1, 4 ]
	    			}
	    		},
	    		messages : {
	    			quantity : {
	    				required : "Chưa nhập Số lượng",
	    				rangelength : "Số lượng quá lớn"
	    			}
	    		}
	    	});
	    });
	    </script> -->
	</body>
</html>