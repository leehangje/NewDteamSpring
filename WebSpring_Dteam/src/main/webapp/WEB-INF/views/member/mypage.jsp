<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대여안대여</title>
</head>
<body>
<section id="content_area">
	<div class="container">
		<div class="content_wrap">
			<div class="content_top">
				<h3>마이페이지</h3>
				<ul class="breadcrumb">
					<li><img src="img/home.png" alt="홈"> &gt;</li>
					<li>마이페이지</li>
				</ul>
			</div>
				<div class="contents">
					<div class="profile_box">
						<div class="profile_img" style="float: left; width: 200px; height: 200px; margin-right: 20px;">
							<img src="<c:url value='/' />${vo.member_profile}" class="file-img"/></a>
						</div>
						<div class="user_info" style="float: left; width: 830px;">
						<table class="t_style03" >
							<colgroup>
								<col width="50%">
								<col width="50%">
							</colgroup>
							<tbody>
								<tr>
									<th style="height: ">닉네임</th>
									<td>${vo.member_nickname}</td>
								</tr>

								<tr>
									<th>등급</th>
									<td>${vo.member_grade}</td>
								</tr>
								<tr>
									<th colspan="2">${vo.member_id}<a href="#">회원정보수정</a></th>
								</tr>
							</tbody>
						</table>
						</div>
					</div>
					<ul class="tab" id="tab">
						<li>빌려준 상품 내역</li>
						<li>빌린 상품 내역</li>
						<li>찜 목록</li>
					</ul>

					<div class="tab_con" id="tab_con">
						<div>
							<%@ include file="/WEB-INF/views/md/lend_list.jsp"%>
						</div>
						<div>
							<%@ include file="/WEB-INF/views/md/borrow_list.jsp"%>
						</div>
						<div>
							<%@ include file="/WEB-INF/views/md/like_list.jsp"%>
						</div>
					</div>
				</div>
			</div>
	</div>
</section>
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
</body>
</html>