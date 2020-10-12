<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세페이지</title>
<style type="text/css">
.basic_table{
	margin-bottom: 50px;
}
.md_name{
	font-size: 150px;
	font-weight: bold;
}

</style>
<script type="text/javascript">
$(function () {	
	tab('#tab',0);	
});

function tab(e, num){
    var num = num || 0;
    var menu = $(e).children();
    var con = $(e+'_con').children();
    var select = $(menu).eq(num);
    var i = num;

    select.addClass('on');
    con.eq(num).show();

    menu.click(function(){
        if(select!==null){
            select.removeClass("on");
            con.eq(i).hide();
        }

        select = $(this);	
        i = $(this).index();

        select.addClass('on');
        con.eq(i).show();
    });
}
</script>
</head>
<body>
<section id="content_area">
	<div class="container">
		<div class="content_wrap">
			<div class="content_top">
				<h3>상세페이지</h3>
				<ul class="breadcrumb">
					<li><img src="img/home.png" alt="홈"> &gt;</li>
					<li>상세페이지 &gt;</li>
					<li>카테고리 </li>
				</ul>
			</div>
			<div class="contents">
				<form action="">
					<table class="basic_table">
					<colgroup>
						<col width="50%">
						<col width="25%">
						<col width="25%">
					</colgroup>
							<tbody class="tbody">
								<tr>
									<td rowspan="5"><a><img src='${vo.md_photo_url}'></a>이미지</td>
									<td class="md_name"><a>${vo.md_name }</a>상품이름</td>
									<td><a>10</a></td>
								</tr>
								<tr>
									<td><a>${vo.md_price }</a>가격</td>
									<td>20</td>
								</tr>
								<tr>
									<td>좋아요</td>
									<td>조회수</td>
								</tr>
								<tr>
									<td>닉네임</td>
									<td>동네</td>
								</tr>
								<tr>
									<td colspan="2">상품설명</td>
								</tr>
							</tbody>
						</table>
				</form>
				
				<ul class="md_tab" id="tab">
					<li>상품리뷰</li>
					<li>상품문의</li>
				</ul>

				<div class="md_tab_con" id="tab_con">
					<div>상품리뷰</div>
					<div>상품문의</div>
				</div>
				
			</div>
		</div>
	</div>
</section>

</body>
</html>