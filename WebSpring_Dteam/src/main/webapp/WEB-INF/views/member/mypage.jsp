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
					<div class="comment_box">
						<div class="profile_img">
							<img src='img/pro_img.png' alt='프로필 이미지' />  
						</div>
						<div class="prifile_text">
							<ul>
								<li><img src="img/nickname.png" alt="닉네임" />&nbsp;&nbsp;닉네임</li>
								<li><img src="img/level.png" alt="등급" />&nbsp;&nbsp;등급</li>
								<li><img src="img/setting.png" alt="회원정보수정" />&nbsp;&nbsp;<a href="modify.cu?id=${vo.id}">회원정보수정</a></li>
							</ul>
						</div>
					</div>
					<ul class="tab" id="tab">
						<li>빌려준 상품 내역</li>
						<li>빌린 상품 내역</li>
						<li>찜 목록</li>
					</ul>

					<div class="tab_con" id="tab_con">
						<div>빌려준 상품 내역</div>
						<div>빌린 상품 내역</div>
						<div>찜 목록</div>
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