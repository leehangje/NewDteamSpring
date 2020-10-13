<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main/list</title>
<style type="text/css">

a.btn-fill {
	background-color: #3367d6;
	color: #fff;
}
a.btn-empty {
	background-color: #fff;
	color: #3367d6;
}

a.btn-fill-s, a.btn-empty-s {
	font-size:13px;	font-weight: bold;
	text-align:center;  padding:1px 10px;
	border: 1px solid #c4dafc;
	border-radius: 3px;
	box-shadow:2px 2px 2px #022d72; 
	color:#0000cd; 
}
a.btn-fill-s { background-color:#b1cdfa; }
a.btn-empty-s { background-color:#fff; }

.grid li div:nth-child(1) {
	 display:-webkit-box;
	-webkit-line-clamp:3;  /*보이게할 줄 수*/
	-webkit-box-orient:vertical; 
	word-wrap: break-word;  /* 영문인 경우 */
} 

.mom{
	float: left;
	width: 200px;
	margin: 0 auto;
}
.input {
  background-position:top right; 
  background-repeat:no-repeat;
  background-color: white;
  background-size: 57px;
  text-indent: 150px;
  border-radius: 10px;
 	width: 60px; height: 60px;
 }
 .div{
 	overflow: hidden;
 	width: 680px;
 	margin: 0 auto;
 	margin-top: 20px;
 	margin-bottom: 40px;

 }
.divsub{
	width:60px; float: left; margin-left: 6px;
}
.a{
	font-size: 11px;
	font-weight: bold;
}
.img{
	width: 150px; height: 170px; border-radius: 10px; border: 1px solid black; background-color: gray;
}
</style>
</head>
<body>
<h3 style=" margin-top: 10px;">최신상품</h3>
<form method='post' action='list.ma'>
	<div class="div">
		<div class="divsub"><input type="submit" name="category" value="가전" class="input" style=" background-image : url('img/camera.png'); "><br/><a class="a">디지털/가전</a></div>
		<div class="divsub"><input type="submit" name="category" value="아동" class="input" style="background-image : url('img/baby.png');"><br/><a class="a">유/아동</a></div>
		<div class="divsub"><input type="submit" name="category" value="생활" class="input" style="background-image : url('img/cup.png');"><br/><a class="a">생활 용품</a></div>
		<div class="divsub"><input type="submit" name="category" value="스포츠" class="input" style="background-image : url('img/cycle.png');"><br/><a class="a">스포츠/레져</a></div>
		<div class="divsub"><input type="submit" name="category" value="의류" class="input" style="background-image : url('img/closet.png');"><br/><a class="a">의류/잡화</a></div>
		<div class="divsub"><input type="submit" name="category" value="게임" class="input" style="background-image : url('img/game.png');"><br/><a class="a">게임/취미</a></div>
		<div class="divsub"><input type="submit" name="category" value="뷰티" class="input" style="background-image : url('img/beauty.png');"><br/><a class="a">뷰티/미용</a></div>
		<div class="divsub"><input type="submit" name="category" value="동물" class="input" style="background-image : url('img/pet.png');"><br/><a class="a">애견용품</a></div>
		<div class="divsub"><input type="submit" name="category" value="기타" class="input" style="background-image : url('img/etc.png');"><br/><a class="a">기타 물품</a></div>
		<div class="divsub"><input type="submit" name="category" value="무료" class="input" style="background-image : url('img/free.png');"><br/><a class="a">무료 나눔</a></div>
	</div>
</form>

<div id='data-list' style=" width: 1000px; margin: 0 auto; margin-bottom: 20px; ">
<ul class='grid' style="width:860px; margin:0 auto; margin-bottom: 50px; border: 1px solid gray; border-radius: 10px; ">
<c:forEach items="${page.list}" var="vo">
	<li  class='gride_li' style=" border: 0px; width: 150px; height: 220px;  margin: 30px 10px">
		<a href='detail.ma?md_serial_number=${vo.md_serial_number }'>
		<img src='${vo.md_photo_url}' onerror="this.src='img/pro_img.png'" class="img"></a>
		<div style="padding:0px;">${vo.md_name}</div>
		<div style="padding:0px;">${vo.md_price}원</div>
	</li>
</c:forEach>
</ul>
<div style="width:100px; margin: 0 auto; padding-bottom: 20px;">
<a href='javascript:increases(${page.curPage})'>더보기</a>
</div>
</div>
<script type="text/javascript">
$(function(){
	$('#data-list ul').css('height', 
		( ($('.grid li').length%5 > 0 ? 1 : 0) + Math.floor($('.grid li').length/5)  )*$('.grid li').outerHeight(true)-20  
			);	
	
});
</script>
</body>
</html>