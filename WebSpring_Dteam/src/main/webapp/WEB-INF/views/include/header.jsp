<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header style="border-bottom: 1px solid #ccc; padding:15px 0; text-align: left;">
	<div class="category">
		<div class="header_menu">
			<a href='<c:url value="/"/>'><img src="img/logo3.jpg" alt="홈으로"/></a>
			<input type="text" size="40" id="search" placeholder="동네이름, 물품명 등을 검색해보세요!"/>
			<div class="member_menu">
				<a href="#" class="login">로그인</a>
				<a href="#">회원가입</a>
				<a href="#">마이페이지</a>
			</div>
		</div>
	</div>
</header>

<style type="text/css">
header ul, header ul li {
	margin: 0;
	padding: 0;
	display: inline;
}

header div.category{
	margin-left: 100px";
	font-size: 18px;
}

header div.category li:not(first-child){
	padding-left: 30px;
}

header div.category li a:hover, header div.category li a.active{font-weight: bold; color: #0000cd; }

.header_menu{
	margin-left: 200px;
}

#search{
	margin-left: 50px;
}

.member_menu{
	display: inline;
	margin-left: 700px;
}

.login{
	margin-right: 15px;
}

.gnb_item{
	margin-top: 20px;
	margin-left: 300px;
}

</style>
