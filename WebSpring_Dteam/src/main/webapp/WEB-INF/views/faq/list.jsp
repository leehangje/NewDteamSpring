<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.tab li {
    float: left;
    width: 33.3%;
    border-left: 1px solid #ddd;
    text-align: center;
    box-sizing: border-box;
    color: #333333
}

.tab li.on {
    background-color: #eee;
    color: #333333;
    font-weight: bold;
    font-size: 1.1em;
    border-bottom: 2px solid #3E4BA9;
}
.jetab_con { clear:both; margin-top:5px; border:1px solid #ddd; }
.jetab_con div { display:block; background:#fff; line-height:100px; text-align:center; }


</style>
</head>
<body>
<!-- 공통으로 넣기 -->
<section id="content_area">
	<div class="container">
		<div class="content_wrap">
			<div class="content_top">
				<h3>자주 묻는 질문</h3>
				<ul class="breadcrumb">
					<li><img src="img/home.png" alt="홈"> &gt;</li>
					<li>자주 묻는 질문</li>
				</ul>
			</div>
			<div class="contents">
<!------------------------------------------------------------------------------------------------->

				<ul class="tab" id="tab">
					<li onclick="location.href='list.no'">공지사항</li>
					<li>자주 묻는 질문</li>
					<li onclick="location.href='list.qn'">1:1 문의하기</li>
				</ul>
		
				<div class="jetab_con" id="tab_con">
					<div>
						자주 묻는 질문
					</div>
				</div>

<!------------------------------------------------------------------------------------------------->
			</div>
		</div>
	</div>
</section>			
<script type="text/javascript">
$(function () {	
	tab('#tab',1);	
});

function tab(e, num){
    var num = num || 1;
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