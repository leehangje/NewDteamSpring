<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
.jetab_con div { display:block; background:#fff; line-height:100px; text-align:center; padding: 0 15px; }

.notice {border: 1ps solid red; border-bottom:0px solid #ddd; margin:1em 0; }
.notice .noticeHeader{position:relative;zoom:1}
.notice .noticeHeader .showAll{position:absolute;bottom:0;right:0;border:0;padding:0;overflow:visible;background:none;cursor:pointer}
.notice .noticeBody{margin:0;padding:0}
.notice .noticeBody .article{list-style:none}
.notice .q {margin:}
.notice .q a:hover, .notice .q a:active, .notice .q a:focus{}
.notice .q a {
    display: block;
    text-align: left;
    background: url(https://happyjung.diskn.com/data/lecture/icon_jquery_faq_20170221_1.png) no-repeat 0 0;
    padding: 0 0 0 35px;
    font-size: 15px;
    color: #2b2b2b;
    font-weight: bold;
    line-height: 27px;
    cursor: pointer;
    margin: 15px 0 5px 10px;
}
.notice .a {
    /* background: #f8f8f8 url(https://happyjung.diskn.com/data/lecture/icon_jquery_faq_20170221_2.png) no-repeat 40px 10px; */
    background: #f8f8f8 no-repeat 40px 10px;
    padding: 10px 75px 10px 75px;
    font-size: 14px;
    color: #444444;
    line-height: 22px;
    border-top: 1px solid #bdbdbd;
    margin: 5px 0 0 0;
    text-align: left;
}
.time { color: #8f8d8d; font-weight: 500; font-size: 14px;}

</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-latest.js"></script>
</head>

<body>
<!-- 공통으로 넣기 -->
<section id="content_area">
	<div class="container">
		<div class="content_wrap">
			<div class="content_top">
				<h3>공지사항</h3>
				<ul class="breadcrumb">
					<li><img src="img/home.png" alt="홈"> &gt;</li>
					<li>공지사항</li>
				</ul>
			</div>
			<div class="contents">
<!------------------------------------------------------------------------------------------------->			
		
				<ul class="tab" id="tab">
					<li>공지사항</li>
					<li onclick="location.href='list.fa'">자주 묻는 질문</li>
					<li onclick="location.href='list.qn'">1:1 문의하기</li>
				</ul>
		
				<div class="jetab_con" id="tab_con">
					<div class="notice">
					    <div class="noticeHeader">
					        <!--button type="button" class="showAll">답변 모두 여닫기</button-->
					    </div>
					    <ul class="noticeBody">
					        <li class="article" id="a1">
					            <p class="q"><a href="#a1">[공지] 추석 연휴 사기 거래 주의! 꼭 읽어주세요!<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            안녕하세요 고객님.
									<br/>
									오늘도 대여안대여를 이용해주셔서 감사합니다.
									<br/>
									<br/>
									추석을 앞두고 에어팟(디지털/가전 기기), 선물세트, 상품권 등 명절 선물을 저렴한 가격에 올린 후,
									<br/>
									카톡 등 외부 메신저로 유인하는 사기 거래 행위가 늘어날 것으로 예상되어 안내드립니다.
									<br/>
									<br/>
									아래와 같이 사기가 의심 되는 경우 대여안대여 내에서 거래하시면 구매 후 물건을 직접 확인할 때까지
									<br/>
									대여안대여가 금액을 안전하게 보관하고 있어 각종 사기 피해를 미연에 방지하실 수 있다는 점, 잊지 마세요!
									<br/>
									<br/>
									<b>[사기 의심 유형]</b>
									<br/>
									<br/>
									1. 채팅에서 외부 메신저로 유도하는 행위 (카톡ID, 계좌, 연락처를 이미지로 전달하는 경우)
									<br/>
									2. 직거래가 어렵다며 계좌이체 유도 후 계좌번호를 URL로 보내는 경우 (URL은 모두 가짜!!)
									<br/>
									3. 대여안대여에서 제공하지 않는 결제 서비스를 유도하는 경우 (송금, 가상계좌 등)
									<br/>
									4. 상품의 가격이 시세 대비 비정상적으로 저렴한 경우
									<br/>
									5. 계좌이체 결제 시 예금주명이 판매자명과 다른 경우
									<br/>
									<br/>
									고객님께서도 사기 유형들을 숙지하시어 주의해 주시고 사기 거래가 의심될 경우 즉시 거래를 중단하고 '내상점 > 1:1문의'로 신고해 주시기 바랍니다.
									<br/>
									앞으로도 대여안대여는 고객님의 더 안전한 거래를 위해 최선을 다하겠습니다.
									<br/>
									행복하고 풍요로운 추석 되세요.
									<br/>
									감사합니다.
									<br/>
								</p>
					        </li>
					        <hr>
					        <li class="article" id="a2">
					            <p class="q"><a href="#a2">대여안대여 개인정보처리방침 개정 안내<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            대여안대여 개인정보처리방침이 아래와 같이 변경됨에 따라 변경 내역을 공지하오니 참고하여 주시기 바랍니다.
						            <br/>
						            <b>1. 변경일시 :</b> 2020년 10월 01일부터
									<br/>
									<br/>
									<br/>
									<b>2. 변경사유 :</b> 개인정보처리 위탁 변경, 처리하는 개인정보 항목 변경, 개인정보 보호책임자 정보변경, 광고식별자 처리 사업자 변경
									<br/>
									<br/>
									<br/>
									<b>3. 개인정보 처리방침 버전 :</b> V7.4 à V7.5
									<br/>
									<br/>
									<br/>
									<b>4. 변경 내역 : 으앙</b>
									<br/>
									
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a3">
					            <p class="q"><a href="#a3">공지사항 세번째로 써볼게<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            공지사항 세번째로 써볼게
						            <br/>
						            <br/>
						            쓸 말이 없네
						            <br/>
						            <br/>
						            쩝.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a4">
					            <p class="q"><a href="#a4">공지사항 네번째로 써볼게<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            공지사항 네번째로 써볼게
						            <br/>
						            <br/>
						            쓸 말이 없네
						            <br/>
						            <br/>
						            쩝.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a5">
					            <p class="q"><a href="#a5">공지사항 다섯번째로 써볼게<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            공지사항 세번째로 써볼게
						            <br/>
						            <br/>
						            쓸 말이 없네
						            <br/>
						            <br/>
						            쩝.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a6">
					            <p class="q"><a href="#a6">공지사항 여섯번째로 써볼게<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            공지사항 세번째로 써볼게
						            <br/>
						            <br/>
						            쓸 말이 없네
						            <br/>
						            <br/>
						            쩝.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a7">
					            <p class="q"><a href="#a7">공지사항 일곱번째로 써볼게<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            공지사항 세번째로 써볼게
						            <br/>
						            <br/>
						            쓸 말이 없네
						            <br/>
						            <br/>
						            쩝.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a8">
					            <p class="q"><a href="#a8">공지사항 여덟번째로 써볼게<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            공지사항 세번째로 써볼게
						            <br/>
						            <br/>
						            쓸 말이 없네
						            <br/>
						            <br/>
						            쩝.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a9">
					            <p class="q"><a href="#a9">공지사항 아홉번째로 써볼게<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            공지사항 세번째로 써볼게
						            <br/>
						            <br/>
						            쓸 말이 없네
						            <br/>
						            <br/>
						            쩝.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a10">
					            <p class="q"><a href="#a10">공지사항 열번째로 써볼게<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            공지사항 세번째로 써볼게
						            <br/>
						            <br/>
						            쓸 말이 없네
						            <br/>
						            <br/>
						            쩝.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a11">
					            <p class="q"><a href="#a10">공지사항 열한번째로 써볼게<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            공지사항 세번째로 써볼게
						            <br/>
						            <br/>
						            쓸 말이 없네
						            <br/>
						            <br/>
						            쩝.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a12">
					            <p class="q"><a href="#a10">공지사항 열두번째로 써볼게<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            공지사항 세번째로 써볼게
						            <br/>
						            <br/>
						            쓸 말이 없네
						            <br/>
						            <br/>
						            쩝.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a13">
					            <p class="q"><a href="#a10">공지사항 열세번째로 써볼게<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            공지사항 세번째로 써볼게
						            <br/>
						            <br/>
						            쓸 말이 없네
						            <br/>
						            <br/>
						            쩝.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a14">
					            <p class="q"><a href="#a10">공지사항 열네번째로 써볼게<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            공지사항 세번째로 써볼게
						            <br/>
						            <br/>
						            쓸 말이 없네
						            <br/>
						            <br/>
						            쩝.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a15">
					            <p class="q"><a href="#a10">공지사항 열다섯번째로 써볼게<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            공지사항 세번째로 써볼게
						            <br/>
						            <br/>
						            쓸 말이 없네
						            <br/>
						            <br/>
						            쩝.
						            <br/>
					            </p>
					        </li>
					        <hr>
					    </ul>
					</div>
				</div>	
				
		
<!------------------------------------------------------------------------------------------------->					
			</div>
		</div>
	</div>
</section>
<script>
$(function () {		//Tab
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


jQuery(function($){	
	//공지사항 글보기
    var article = $('.notice>.noticeBody>.article');
    article.addClass('hide');
    article.find('.a').hide();
    article.eq(0).removeClass('hide');
    article.eq(0).find('.a').show();
    $('.notice>.noticeBody>.article>.q>a').click(function(){
        var myArticle = $(this).parents('.article:first');
        if(myArticle.hasClass('hide')){
            article.addClass('hide').removeClass('show');
            article.find('.a').slideUp(200);
            myArticle.removeClass('hide').addClass('show');
            myArticle.find('.a').slideDown(200);
        } else {
            myArticle.removeClass('show').addClass('hide');
            myArticle.find('.a').slideUp(200);
        }
        return false;
    });
    $('.notice>.noticeHeader>.showAll').click(function(){
        var hidden = $('.notice>.noticeBody>.article.hide').length;
        if(hidden > 0){
            article.removeClass('hide').addClass('show');
            article.find('.a').slideDown(200);
        } else {
            article.removeClass('show').addClass('hide');
            article.find('.a').slideUp(200);
        }
    });
});
</script>
</body>
</html>