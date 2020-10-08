<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main/list</title>
<style type="text/css">
tabel tr td{
	width: 100px;
}
ul{
overflow: hidden;
}
li{
padding: 0 auto;
margin-right: 5px;
float: left;
border: 1px solid black;
}
.detail{
	margin: 0 auto;
	width: 160px;
}
#category{
	margin: 0 auto;
	width: 820px;
}
.grid li div span { float:right; }

.grid li div:nth-child(1) {
	overflow:hidden;  display:-webkit-box;
	-webkit-line-clamp:3;  /*보이게할 줄 수*/
	-webkit-box-orient:vertical; 
	word-wrap: break-word;  /* 영문인 경우 */
} 
</style>
</head>
<body>
<div align='center'>
<div id='category' align='center'>
	<ul>
		<li><img src='img/pro_img.png' style='width: 50px; height: 50px;'/><br/>디지털/가전</li>
		<li><img src='img/pro_img.png' style='width: 50px; height: 50px;'/><br/>유/아동</li>
		<li><img src='img/pro_img.png' style='width: 50px; height: 50px;'/><br/>생활 용품</li>
		<li><img src='img/pro_img.png' style='width: 50px; height: 50px;'/><br/>스포트/레져</li>
		<li><img src='img/pro_img.png' style='width: 50px; height: 50px;'/><br/>의류/잡화</li>
		<li><img src='img/pro_img.png' style='width: 50px; height: 50px;'/><br/>게임/취미</li>
		<li><img src='img/pro_img.png' style='width: 50px; height: 50px;'/><br/>뷰티/미용</li>
		<li><img src='img/pro_img.png' style='width: 50px; height: 50px;'/><br/>반려동물용품</li>
		<li><img src='img/pro_img.png' style='width: 50px; height: 50px;'/><br/>기타 물품</li>
		<li><img src='img/pro_img.png' style='width: 50px; height: 50px;'/><br/>무료 나눔</li>
	</ul>
<a><img src='${md_photo_url}'></a>
</div>
<ul class='grid' style='padding:0px 400px'>
	<c:forEach items="${list}" var="vo">
		<li class='detail' style='overflow: hedden; margin: 10px;' OnClick="location.href ='detail.ma'">
			<a style='border: 0px;'><img src='${vo.md_photo_url}' style='width: 150px; height: 200px; border-radius: 10px;'></a><br/>
			<a style='border: 0px;'>${vo.md_name }</a><br/>
			<a style='border: 0px;'>${vo.md_price }원</a>
		<li>
	</c:forEach>
</ul>
</div>
</body>
</html>