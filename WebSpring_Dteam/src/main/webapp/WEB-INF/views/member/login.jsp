<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#login_form {
		width: 40%; 
		margin: 0 auto;
	}
	
	#login_form input {
		width: 100%; 
		height: 50px;
	}
	
	#userPw {
		box-sizing: border-box;
	}
	
	#login_form > li > a {
		display: block; 
		background-color: #858585; 
		color: #ffffff; 
		height: 60px; 
		line-height: 60px;
		border-radius: 5px;
		font-weight: 70;
		cursor: pointer;
	}
	
	#naver_login {
		width: 400px;
		margin: 0 auto;
		height: 60px; 
		overflow: hidden;
		background-color: #1EC800; 
		border-radius: 5px;
	}
	
	#naver_login > img {
		display: block; 
		float:left; 
		height: 60px;
		cursor: pointer;
	}
	
	#naver_login > div {
		line-height: 60px;
		font-weight: 600; 
		font-size: 20px;
		letter-spacing: -1px; 
		color: #ffffff;
		cursor: pointer;
	}
</style>
<script type="text/javascript">
	function go_login() {
		if( $("#userId").val() == "" ) {
			alert("아이디를 입력하세요.");
			$("#userId").focus();
			return;
		} else if ( $("#userPw").val() == "" ) {
			alert("비밀번호를 입력하세요.");
			$("#userPw").focus();
			return;
		}
	
		$.ajax({
			url: "login",		//Controller
			data: { userId:$("#userId").val(), userPw:$("#userPw").val()  },
			success: function(data) {
				if (data) {
					alert("로그인 성공!" + "${login_info.member_id}");
					//history.go(-1);
					location.href = "/dteam";
					
				} else {
					alert("아이디나 비밀번호가 일치하지 않습니다!");
				}
			},
			error: function(req, text) {
				alert(text + ":" + req.status);
			}
		});
	} //go_login()
</script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>	
</head>
<body>
<section id="content_area">
	<div class="container">
		<div class="content_wrap">
			<div class="content_top">
				<h3>로그인</h3>
				<ul class="breadcrumb">
					<li><img src="img/home.png" alt="홈"> &gt;</li>
					<li>로그인</li>
				</ul>
			</div>
			<div class="contents">
				<ul id="login_form">
					<li class="mb10">
						<input type="text" id="userId" placeholder="아이디" />
					</li>
					<li class="mb20">
						<input type="password" id="userPw" onkeypress="if( event.keyCode==13 ){ go_login(); }" placeholder="비밀번호" />
					</li>
					<li class="mb40">
						<a onclick="go_login();">로그인</a>
					</li>
					<li id="naver_login" class="mb10">
						 <img src="img/naver_logo.PNG">
						<div>네이버 로그인</div>
					</li>
					<li><img alt="카카오 로그인" src="img/kakao_login_large_wide.png" style="height: 60px;"></li>
				</ul>
			</div>

		</div>
	</div>
</section>
</body>
</html>