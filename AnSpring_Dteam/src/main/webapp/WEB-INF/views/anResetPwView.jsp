<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String) request.getAttribute("anResetPwView");

%>	
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>대여 안대여 비밀번호 재설정</title>

<style type="text/css">
.header {
	width: 100%;
	text-align: center;
	background-color: #3e4ba9;
	color: #ffffff;
	height: 50px;
	line-height: 50px;
}

.pwd_content {
	width: 100%;
	margin: 0 auto;
	text-align: center;
}

.info_pwd > p {
	margin: 30px 0;
}

.formElement_pwd > input {
	height: 30px;
	margin-bottom: 10px;
	width: 80%;
}

#reset_pwd_submit {
	width: 80%;
	height: 50px;
	margin-top: 10px;
	background-color: #3e4ba9;
	color: #ffffff;
}
</style>
</head>
<body>
	<div id="body_container">
		<div class="main-wrapper clearfix" style="padding-bottom: 0">
			<div class="pwd_wrap">
				<div class="header">
					<span>대여 안대여 비밀번호 재설정</span>
				</div>

				<div class="pwd_content">
					<div class="confirm">
						<div id="new_password_box"
							class="standardBox rounded-corners trans_white">
							<div class="info_pwd">
								<p>
									8자리 이상 새로운 비밀번호를 입력해 주세요.<br />비밀번호는 알파벳 소문자, 숫자, 특수문자를<br /> 
									조합하여 설정해주세요.
								</p>
							</div>
							<div class="boxBody last">

								<form action="anResetPw" method="post" style="text-align: center">
									<div class="formElement_pwd">
										<input id="new_password1" name="new_password1" type="password"
											placeholder="새로운 비밀번호 입력(최소 8자리 이상)">
									</div>
									<div class="formElement_pwd">
										<input id="new_password2" name="new_password2" type="password"
											placeholder="새로운 비밀번호 확인">
									</div>
									<div>
										<input id="reset_pwd_submit" type="button" value="비밀번호 재설정 완료">
									</div>
								</form>
								<div class="clearer"></div>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- 제이쿼리 추가 -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript">
	    var new_password1 = $('#new_password1');
	    var new_password2 = $('#new_password2');
	    var pwReg = /^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	    
	    $('#reset_pwd_submit').on('click', function () {
	        if (new_password1.val().length < 8 || new_password2.val().length < 8) {
	            alert('비밀번호는 8자리 이상 입력 해주세요.');
	            return;
	        } else if( !pwReg.test(new_password1.val()) || !pwReg.test(new_password2.val()) ) {
	        	alert('비밀번호는 알파벳 소문자, 숫자, 특수문자를 조합하여 주세요.');
	            return;
	        } else if (new_password1.val() != new_password2.val()) {
	        	alert('비밀번호가 서로 일치하지 않습니다.');
	            return;
	        } else {
	            $("form").submit();
	            $.ajax({
	            	type: "POST",
	            	url: "anResetPw?member_id=<%=id%>",
	            	data: {pw: new_password1.val()},
	            	success: function(data) {			
	            		//alert("url 접근 성공");
	            	},
	            	error : function(error) {
	            		alert(text + ":" + req.status);
	            	}
	            });
	        }
	    });
	</script>
</body>
<!-- location.href = "anResetPw?member_id=<%=id%>&member_pw=" + new_password1.val(); -->
</html>
