
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
        $.post("/ajaxLoginValidation",{ username:username, password:password },function(data){
        	var obj = eval(data);
        	if(obj && obj.result){
        		$("#loginUserItem").removeClass("dn");
        		$("#loginUserItem").attr("value",obj.result.id);
        		$("#loginUserItem .username").html(obj.result.username);
        		$("#loginItem").addClass("dn");
        		$('#loginDlg').modal('hide')
        		$("#tip").addClass("dn");
        	}else{
        		$("#tip").removeClass("dn");
        	}
        	$('#loginBut').button('reset');
    		$('#loginDlg fieldset').removeAttr("disabled");
        });
		
	});
	
});