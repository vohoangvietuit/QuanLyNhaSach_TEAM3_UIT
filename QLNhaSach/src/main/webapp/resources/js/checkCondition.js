$(document).ready(function() {

	// Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
	

	// Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
	
	
	// Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này

	
	
	
	$("#cartForm").validate({
		rules : {
			accountName : {
				required : true,
				rangelength : [ 6, 50 ]
			},
			numPhone : {
				required : true,
				digits : true,
				rangelength : [ 9, 12 ]
			},
			email : {
				required : true
			},
			address : {
				required : true
			}
		},
		messages : {
			accountName : {
				required : "Chưa nhập tên tài khoản",
				rangelength : "Tên tài khoản phải chứa từ 6 tới 50 kí tự"
			},
			numPhone : {
				required : "Chưa nhập số điện thoại",
				digits : "Chỉ nhập số",
				rangelength : "Số điện thoại chứa từ 9 tới 12 số"
			},
			email : {
				required : "Chưa nhập email"
			},
			address : {
				required : "Chưa nhập địa chỉ"
			}
		}
	});
});