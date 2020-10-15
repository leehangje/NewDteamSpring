<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세페이지</title>
<style type="text/css">
.md_basic_table {
	width: 50%;
	border-collapse: collapse;
}

.md_basic_table tr:hover {
	background-color: #F7F7F7;
}

.md_basic_table tr th:last-child, .basic_table tr td:last-child {
	border-right: 0
}

.md_basic_table th {
	font-size: 0.85em;
	background-color: #f5f5f5;
}

.md_basic_table td {
	font-size: 0.95em;
	line-height: 250%;
	text-align: left;
	border-color: #ffffff;
}

.md_basic_table td:second-child {
	font-size: 50px;
	line-height: 150%;

}

.md_basic_table td a {
	text-decoration: none;
	color: #454545
}


.md_basic_table .no_border {
	border-right-style: none;
}

.md_basic_table .td_center {
	text-align: center
}

.md_basic_table .td_right {
	text-align: right
}

.md_basic_table .td_left {
	text-align: left
}

.md_border_none {
	border-right: none;
}

.md_img {
	width: 50%;
	height: 200px;
	float: left;
}

.md_content{
	height: 150px;
}

tbody{
	border: none;
}


.review_list th {
	width: 20%;
	text-align: center;
} 

.review_list td{
	padding: 10px;
	width: 100%;
}

</style>
<script type="text/javascript">

	$(function() {
		tab('#tab', 0);
	});

	function tab(e, num) {
		var num = num || 0;
		var menu = $(e).children();
		var con = $(e + '_con').children();
		var select = $(menu).eq(num);
		var i = num;

		select.addClass('on');
		con.eq(num).show();

		menu.click(function() {
			if (select !== null) {
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
						<li>${vo.md_category }</li>
					</ul>
				</div>
				<div class="contents">
					<form action="">
						<a class="md_img"><img src='${vo.md_photo_url}'></a>
						<table class="md_basic_table">
							<colgroup>
								<col width="50%">
								<col width="50%">
							</colgroup>
							<tbody>
							<tr>
								<td class="md_name" style="font-size: 30px; line-height: 200%;">${vo.md_name }</td>
								<td></td>
							</tr>
							<tr>
								<td style="font-size: 40px; line-height: 170%;">${vo.md_price }원</td>
								<td></td>
							</tr>
							<tr>
								<td style="color: #696763" colspan="2">
								<img src="img/heart.png" style="width: 20px; height: 20px;">&nbsp;${vo.md_fav_count }
								&nbsp;&nbsp;&nbsp;&nbsp;
								<img src="img/view.png" style="width: 20px; height: 20px;">&nbsp;${vo.md_hits}
								</td>
								<%-- <td style="color: #696763" ><img src="img/view.png" style="width: 20px; height: 20px;">&nbsp;${vo.md_hits}</td> --%>
							</tr>
							<c:forEach items="${vo.nickaddr }" var="list">
								<tr>
									<td colspan="2" style="color: #696763">닉네임 : ${list.member_nickname}</td>
								</tr>
								<tr>
									<td colspan="2" style="color: #696763">주소 : ${list.member_addr}</td>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="2" style="border-bottom: solid 0.5px #696763 ;">상세설명</td>
							</tr>
							<tr>
								<td colspan="2" class="md_content">${vo.md_detail_content}</td>
							</tr>
							
							</tbody>
						</table>
					</form>
				</div><!-- content  -->

				<ul class="md_tab" id="tab">
					<li>상품리뷰</li>
					<li>상품문의</li>
				</ul>


				<div class="md_tab_con" id="tab_con">
					<div class="md_tab_con_sub" style="overflow:scroll; width:100%; height:500px; padding:10px;">
					<c:forEach items="${vo.review }" var="list">
						<table class="review_list" style="width:100%; margin-bottom: 15px; text-align: left; border-bottom: 1px solid gray; border-top: 1px solid gray;">
							<tr>
								<th>닉네임</th>
								<td>${list.member_nickname }</td>
							</tr>
							<tr>
								<th>별점</th>
								<td>${list.review_scope }</td>
							</tr>
							<tr>
								<th>내용</th>
								<td>${list.review_content }</td>
							</tr>
						</table>
					</c:forEach>
					</div>
   				
   					<div><iframe src="mdqna.ma?md_serial_number=${vo.md_serial_number}" width="100%" height="1000px";></iframe></div>					
				</div>
				
				
			</div> <!--content wrap  -->
		</div>
	</section>
</body>


</html>