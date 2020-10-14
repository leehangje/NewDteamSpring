<%@page import="member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% MemberVO member; %>
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
	 overflow:hidden;  display:-webkit-box;
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
  background-position:top center; 
  background-repeat:no-repeat;
  background-color: white;
  background-size: 55px;
 /*  text-indent: 150px; */
 	width: 78px; height: 78px;
 	border: 0px;
 	padding-top: 55px;
 }
 .div{
 	overflow: hidden;
 	width: 900px;
 	margin: 0 auto;
 	margin-top: 20px;
 	margin-bottom: 40px;

 }
.divsub{
	width:80px; height:80px; float: left; margin-left: 8px;
	border: 1px solid gray;
}
.a{
	font-size: 11px;
	font-weight: bold;
}
.img{
	width: 150px; height: 170px; border-radius: 10px; border: 1px solid black; background-color: white;
}
.grid{
	overflow: hidden;
}
.gride_li{
	float: left;
	margin-left: 10px;
}
.gride_li { display:none; }
#data-list { displau: none;}
</style>
</head>
<body>
<form method='post' action='list.ma'>
	<div class="div">
		<div class="divsub"><input type="submit" name="category" value="가전" class="input" style=" background-image : url('img/camera.png');"></div>
		<div class="divsub"><input type="submit" name="category" value="아동" class="input" style="background-image : url('img/baby.png');"></div>
		<div class="divsub"><input type="submit" name="category" value="생활" class="input" style="background-image : url('img/cup.png');"></div>
		<div class="divsub"><input type="submit" name="category" value="스포츠" class="input" style="background-image : url('img/cycle.png');"></div>
		<div class="divsub"><input type="submit" name="category" value="의류" class="input" style="background-image : url('img/closet.png');"></div>
		<div class="divsub"><input type="submit" name="category" value="게임" class="input" style="background-image : url('img/game.png');"></div>
		<div class="divsub"><input type="submit" name="category" value="뷰티" class="input" style="background-image : url('img/beauty.png');"></div>
		<div class="divsub"><input type="submit" name="category" value="동물" class="input" style="background-image : url('img/pet.png');"></div>
		<div class="divsub"><input type="submit" name="category" value="기타" class="input" style="background-image : url('img/etc.png');"></div>
		<div class="divsub"><input type="submit" name="category" value="무료" class="input" style="background-image : url('img/free.png');"></div>
	</div>
</form>
<div style="width: 1000px; margin: 0 auto; margin-bottom: 10px;">
<h3 style="width: 150px; margin-left: 50px;">최신상품 ＞</h3>
</div>
<div id='data-list' style=" width: 1000px; margin: 0 auto; margin-top: 10px;">
<div class='grid' style="width:800px; margin:0 auto; margin-bottom: 30px; border-radius: 10px;">
<c:forEach items="${page.list}" var="vo">
	<div  class='gride_li' style=" border: 0px; width: 150px; height: 220px; margin-bottom: 30px;">
		<a href='detail.ma?md_serial_number=${vo.md_serial_number }'>
		<img src='${vo.md_photo_url}' onerror="this.src='img/white.png'" class="img"></a>
		<div style="padding:0px;">${vo.md_name}</div>
		<div style="padding:0px;">${vo.md_price}</div>
	</div>
</c:forEach>
</div>
</div>
<div style="border-top: 1px solid gray; border-bottom: 1px solid gray;display:inline; margin-bottom: 100px;">
<a href="#" id="load" style=" height: 50px; padding: 0px 100px;">더 보기(More)</a>
</div>
<div class="visivle" style="width: 50px; hegiht: 50px; padding-top: 50px;"></div>
<script type="text/javascript">
$(function(){
    $(".gride_li").slice(0, 5).show(); // select the first ten
    $("#load").click(function(e){ // click event for load more
        e.preventDefault();
        $(".gride_li:hidden").slice(0, 5).show();
        if($(".gride_li:hidden").length == 0){ // check if any hidden divs still exist
           alert("마지막 리스트입니다."); // alert if there are none left
        }
    });
});
$(function(){
	 var len = $(".gride_li").not(':hidden').length;
	$('#data-list ul').css('height',  ( ( len%5 > 0 ? 1 : 0) + Math.floor(len/5)  )*$('.grid li').outerHeight(true)-20  );	
	
});
</script>
</body>
</html>