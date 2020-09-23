<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String) request.getAttribute("anResetPwView");

%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대여 안대여 비밀번호 재설정</title>

<style type="text/css">
#body_container {
	width: 65%;
	margin: 0 auto;
	text-align: center;
}

.formElement_pwd>input {
	height: 30px;
	margin-bottom: 10px;
	width: 50%;
}

#reset_pwd_submit {
	width: 50%;
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
									<em>8자리 이상 새로운 비밀번호를 입력해 주세요.</em><br />비밀번호는 대소문자, 숫자를 조합하여<br />설정하시는
									것이 안전합니다.
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
	    
	    $('#reset_pwd_submit').on('click', function () {
	        if (new_password1.val().length < 8 || new_password2.val().length < 8) {
	            alert('비밀번호는 8자리 이상 입력 해주세요.');
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
	            		alert("url 접근 성공");
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
