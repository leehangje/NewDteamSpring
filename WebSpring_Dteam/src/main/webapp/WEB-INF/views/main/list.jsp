<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main/list</title>
<style type="text/css">

ul { list-style:none; }
#list-top { padding:20px 10%;} 
#list-top div { width:100%; height:32px; }
#list-top div ul { margin:0; display:flex; padding:0  }
#list-top div ul:first-child { float:left; }
#list-top div ul:last-child { float:right; }
#list-top div ul li * { vertical-align:middle; } 
#list-top div ul li:not(:first-child) { margin-left:2px; } 

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

.grid li div span { float:right; }
/* 제목이 지나치게 길어도 여러줄로 보이지 않게 말줄임처리 */
table { table-layout:fixed; }
table tr td { overflow:hidden; text-overflow:ellipsis; white-space:nowrap; }

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

</style>
</head>
<body>
<div id="contents">
<h3>최신상품</h3>
</div>
<div id='list-top'>
<form method='post' action='list.ma'>
<input type='hidden' name='curPage' value='1' />
<input type='hidden' name='id' />
<div id="content">
	<ul class="con">
		<li>
			<select name='search' class='w-px80'>
			<option value='all' ${page.search eq 'all' ? 'selected' : ''}>전체</option>
			<option value='title' ${page.search eq 'title' ? 'selected' : ''}>제목</option>
			<option value='content' ${page.search eq 'content' ? 'selected' : ''}>내용</option>
			<option value='writer' ${page.search eq 'writer' ? 'selected' : ''}>작성자</option>
			</select>
		</li>
		<li><input type='text' name='keyword' value='${page.keyword}' class='w-px300' /></li>
		<li><a class='btn-fill'>검색</a></li>
	</ul>
	<ul class="con">
		<li>
			<select name='pageList' class='w-px80' 
				onchange='$("[name=curPage]").val(1); $("form").submit()'>
			<option value='10' ${page.pageList eq 10 ? 'selected' : ''}>10개씩</option>
			<option value='15' ${page.pageList eq 15 ? 'selected' : ''}>15개씩</option>
			<option value='20' ${page.pageList eq 20 ? 'selected' : ''}>20개씩</option>
			</select>
		</li>
		<li>

		</li>
	<!-- 로그인 되어 있는 경우 글쓰기 가능 -->
	<c:if test='${not empty login_info}'>
		<li>
			<a href='new.bo' class='btn-fill'>글쓰기</a>
		</li>
		</c:if>
	</ul>
	
</div>
</form>
</div>

<div id='data-list'>
<ul class='grid' style='padding:0; margin: 0 auto; width: 1010px; border: 1px solid black; background-color: white; border-radius: 20px;'>
<c:forEach items="${page.list}" var="vo">
	<li  class='mom' style="height: 270px; margin-top: 20px;"><div><a href='javascript:go_detail(${vo.member_id})'>
		<img src='${vo.md_photo_url}' onerror="this.src='img/pro_img.png'" style='width: 150px; height: 200px; border-radius: 10px; background-color: gray;'></a></div>
		<div>${vo.md_name}</div>
		<div>${vo.md_price}
			<%-- <span>${empty vo.filename ? '' : '<img class="file-img" src="img/attach.png"/>'}</span> --%>
		</div>
	</li>
</c:forEach>
</ul>
<div style="width:100px; margin: 0 auto;">
<a href='javascript:increases(${page.curPage})'>더보기</a>
</div>
</div>
<script type="text/javascript">
function go_detail(member_id){
	$('[name=id]').val(member_id);
	$('form').attr('action', 'detail.ma');
	$('form').submit();
}
$(function(){
	$('#data-list ul').css('height', 
		( ($('.grid li').length%5 > 0 ? 1 : 0) + Math.floor($('.grid li').length/5)  )*$('.grid li').outerHeight(true)-20  
			);	
	
});
function increases(curPage){
	
	i = curPage;	
	while (i < 5) { // 0, 1, 2가 출력됩니다.
		  alert( i );
		  i++;
	}
}

</script>
</body>
</html>