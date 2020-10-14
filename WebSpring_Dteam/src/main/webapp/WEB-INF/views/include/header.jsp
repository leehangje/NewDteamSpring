<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header
	style="border-bottom: 1px solid #ccc; padding: 15px 0; text-align: left;">
	<div class="category">
		<div class="header_menu">
				<form method='post' action='list.ma'>
					<div id="content" style=" width: 300px; margin: 0 auto;">
						<ul class="con">
							<li><input type='text' name='keyword'
								value='${page.keyword}' class='w-px300' placeholder="동네이름, 물품명 등을 검색해보세요!"/></li>
						</ul>
					</div><br/>
				<a href='<c:url value="/"/>'><img src="img/logo3.jpg" alt="홈으로" /></a>
					<input type='hidden' name='curPage' value='1' /> <input
						type='hidden' name='id' />

					<div class="member_menu">
						<c:if test="${empty login_info }">
							<a href="login_view" class="login">로그인</a>
							<a href="member">회원가입</a>
						</c:if>
						<c:if test="${!empty login_info }">
							<span>${login_info.member_nickname }
								[${login_info.member_id }]</span>
							<a onclick="go_logout()">로그아웃</a>
							<a id="mypage" href="mypage?member_id=${login_info.member_id }">마이페이지</a>
						</c:if>

					</div>
				</form>
		</div>
	</div>
</header>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"
	charset="utf-8"></script>
<script type="text/javascript">
	function go_logout() {
		$.ajax({
			url : "logout",
			success : function() {
				location.reload();
			},
			error : function() {
				alert(text + ":" + req.status);
			}
		});
	} //go_logout()
</script>
<style type="text/css">
#content{
	display: inline;
}
header ul, header ul li {
	margin: 0;
	padding: 0;
	display: inline;
}

header div.category {
	margin-left: 100px";
	font-size: 18px;
}

header div.category li:not(first-child) {
	padding-left: 30px;
}

header div.category li a:hover, header div.category li a.active {
	font-weight: bold;
	color: #0000cd;
}

.header_menu {
	margin-left: 200px;
}

#search {
	margin-left: 50px;
}

.member_menu {
	display: inline;
	margin-left: 600px;
}

.login {
	margin-right: 15px;
}

.gnb_item {
	margin-top: 20px;
	margin-left: 300px;
}
</style>
