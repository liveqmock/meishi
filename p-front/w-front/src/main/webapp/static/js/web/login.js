
$(function(){

	//登录
	$('#loginForm').submit(function(){
		$('#loginBut').button('loading');
		$('#loginForm fieldset').attr("disabled","disabled");
		var username = $("#username").val();
		var password = $("#password").val();
        $.post("/j_spring_security_check", { username:username, password:password } ,function(data){
        	var obj = eval(data);
        	if(obj && obj.result){
        		window.location.href="/home"
        	}else{
            	$('#loginBut').button('reset');
        		$('#loginForm fieldset').removeAttr("disabled");
        		$("#tip").removeClass("dn");
        	}
        });
        return false;
	}); 

	
});