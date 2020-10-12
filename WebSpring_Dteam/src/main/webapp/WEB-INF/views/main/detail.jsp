<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세페이지</title>
<style type="text/css">
.md_basic_table {width:50%; border-collapse:collapse; border-style: none;}
.md_basic_table tr:hover { background-color: #F7F7F7; }
.md_basic_table tr th:last-child,.basic_table tr td:last-child{ border-right:0}
.md_basic_table th { font-size:0.85em;  background-color:#f5f5f5; }
.md_basic_table td { font-size:0.75em;  line-height:150%; text-align:center}
.md_basic_table td:second-child { font-size:50px;  line-height:150%; text-align:center}
.md_basic_table td a{ text-decoration:none; color:#454545}
.md_basic_table .no_border { border-right-style: none; }  
.md_basic_table .td_center { text-align:center }
.md_basic_table .td_right { text-align:right }
.md_basic_table .td_left { text-align:left }
.md_border_none{ border-right:none;}

.md_img{
width:50%;
float: left;
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
				
					<a class="md_img"><img src='${vo.md_photo_url}'></a>
					<table class="md_basic_table">
					<colgroup>
						<col width="50%">
						<col width="25%">
						<col width="25%">
					</colgroup>
								<tr>
									<td></td>
									<td class="md_name">${vo.md_name }</td>
								</tr>
								<tr>
									<td>${vo.md_price }</td>
								</tr>
								<tr>
									<td>좋아요 수 : ${vo.md_fav_count }</td>
									<td>조회수 : ${vo.md_hits} </td>
								</tr>
								<tr>
									<td>member_nickname</td>
									<td>member_addr</td>
								</tr>
								<tr>
									<td colspan="2">${vo.md_detail_content}</td>
								</tr>
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