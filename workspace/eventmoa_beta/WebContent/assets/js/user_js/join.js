/**
 *  회원가입 
 */

var joinForm = document.joinForm;
var check = true;

function formSubmit() {
	
	 
	
	joinForm.submit();
}

/* 이메일 인증번호 요청 */
function EmailCheck(){
	var email = $("input[name='user_Email").val();
	alert('잠시만 기다려주세요. 인증번호 전송 요청중입니다.');

	check = false;
	if(email == "" ) {
		alert('이메일을 입력하세요.');
	} else {
		$.ajax({
			url: contextPath + "/user/checkEmail.us?email=" + email,
			type: "GET",
			dataType: "text",
			success: function(result){
				if(result.trim() == "ok") {
					check = true;
					EmailCheck2();
				} else {
					alert('이미 가입된 이메일 입니다.');
				}
			},
			error: function(){
				console.log("ERROR");
			}			
		});
	}

	/* 인증번호 7자리 */
	var code = "";
	function EmailCheck2(){
		var email = $("input[name='user_Email").val();
		var inputVerify = $(".verify");
		var inputVerifyBox = $("")
	}

	
}