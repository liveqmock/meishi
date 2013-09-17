
$(function(){
	
	$('#loginItem').click(function(){
		$('#loginBut').button('reset');
		$('#loginDlg fieldset').removeAttr("disabled");
	});
	
	$('#loginBut').click(function(){
		$('#loginBut').button('loading');
		$('#loginDlg fieldset').attr("disabled","disabled");
		var username = $("#username").val();
		var password = $("#password").val();
        $.post("/j_spring_security_check",{ username:username, password:password },function(data){
        	var obj = eval(data);
        	if(obj && obj.result){
        		alert("success");
        		$("#tip").addClass("dn");
        	}else{
        		$("#tip").removeClass("dn");
        	}
        	$('#loginBut').button('reset');
    		$('#loginDlg fieldset').removeAttr("disabled");
        });
		
	});
	
});