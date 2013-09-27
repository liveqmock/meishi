
$(function(){
	
	$("#registerForm").validate({
		rules : {
			username : {
				required : true,
				rangelength: [8, 20]
			},
			password : {
				required : true,
				rangelength: [8, 20]
			},
			passwordRepeat : {
				equalTo : "#password"
			}
		},
		messages : {
			username : {
				required : "*必填字段",
				rangelength : "*长度在8-20个字符"
			},
			password : {
				required : "*必填字段",
				rangelength : "*长度在8-20个字符"
			},
			passwordRepeat : {
				equalTo : "*密码不一致"
			}
		}
	});
    
});