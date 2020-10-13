<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="css/basic.css" rel="stylesheet" type="text/css">


<!--footer_area-->
<footer id="footer">
	<div class="container">
	
		<a href="company" class="no_margin">회사소개</a>
		<a href="list.no" ${category eq 'no' ? 'class="active"' : ''}>공지사항</a>
		<a href="list.fa" ${category eq 'fa' ? 'class="active"' : ''}>자주묻는 질문</a>
		<a href="list.qn" ${category eq 'qn' ? 'class="active"' : ''}>1:1문의하기</a>
		<a href="#">이용약관</a>
		<a href="#">개인정보처리방침</a>
		<a href="#">위치기반서비스 이용약관</a>

		<p class="address mt30">[61945] 광주광역시 서구 경열로 3(한울직업전문학교)       대표전화 062)362-7797</p>
		<p class="copyright">Copyright(C) 2020 Hanul Project Dteam All Rights Reserved.</p>
	</div>
</footer>










<%-- <footer style="font-size: 14px; border-top: 1px solid #ccc; padding: 15px 0;">
	<div class="footer_menu">
		<div class="gnb_item">		
			<ul>
				<li><a href="list.me" ${category eq 'me' ? 'class="active"' : ''}>마이페이지</a></li>
				<li><a href="list.no" ${category eq 'no' ? 'class="active"' : ''}>메뉴1</a></li>
				<li><a href="list.bo" ${category eq 'bo' ? 'class="active"' : ''}>메뉴2</a></li>
				<li><a href="list.da" ${category eq 'da' ? 'class="active"' : ''}>메뉴3</a></li>
				<li><a href="#">서비스 소개</a></li>
				<li><a href="list.no" ${category eq 'no' ? 'class="active"' : ''}>공지사항</a></li>
				<li><a href="list.fa" ${category eq 'fa' ? 'class="active"' : ''}>자주묻는 질문</a></li>
				<li><a href="list.qn" ${category eq 'qn' ? 'class="active"' : ''}>1:1문의하기</a></li>
				<li><a href="#">이용약관</a></li>
				<li><a href="#">개인정보처리방침</a></li>
				<li><a href="#">위치기반서비스 이용약관</a></li>
				<!-- <li><a href="#">마이페이지</a></li> -->
			</ul>
		</div>
	</div>
	
	<div>업체명: Dteam Project <br/>
		연락처: 062-365-7797<br/>
		Copyright 2020.</div>
</footer>
<style type="text/css">
footer{
	margin: 0 auto;
	background-color: #939396;
}

footer ul, footer ul li {
	margin: 0;
	padding: 0;
	display: inline;
}

footer div.category{
	margin-left: 100px;
}

footer_menu{
	display: inline;
}

footer_menu ul li{
	list-style: none;
	
}

</style>
 --%>