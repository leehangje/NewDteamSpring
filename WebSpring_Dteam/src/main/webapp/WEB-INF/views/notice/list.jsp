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

.notice {border: 0px solid red; border-bottom:0px solid #ddd; margin:1em 0; }
.notice .noticeHeader{position:relative;zoom:1}
.notice .noticeHeader .showAll{position:absolute;bottom:0;right:0;border:0;padding:0;overflow:visible;background:none;cursor:pointer}
.notice .noticeBody{margin:0;padding:0}
.notice .noticeBody .article{list-style:none}
.notice .q a:hover, .notice .q a:active, .notice .q a:focus{}
.notice .q a {
    display: block;
    text-align: left;
    background: url(img/notice_icon.png) no-repeat 0 0;
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
				<!-- 탭메뉴 -->
				<ul class="tab" id="tab">
					<li>공지사항</li>
					<li onclick="location.href='list.fa'">자주묻는 질문</li>
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
									추석을 앞두고 에어팟(디지털/가전 기기), 선물세트, 상품권 등 명절 선물을 저렴한 가격에 올린 후,
									<br/>
									카톡 등 외부 메신저로 유인하는 사기 거래 행위가 늘어날 것으로 예상되어 안내드립니다.
									<br/><br/>
									아래와 같이 사기가 의심 되는 경우 대여안대여 내에서 거래하시면 구매 후 물건을 직접 확인할 때까지
									<br/>
									대여안대여가 금액을 안전하게 보관하고 있어 각종 사기 피해를 미연에 방지하실 수 있다는 점, 잊지 마세요!
									<br/><br/>
									<b>[사기 의심 유형]</b>
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
									<br/><br/>
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
									<br/><br/><br/>
									<b>2. 변경사유 :</b> 개인정보처리 위탁 변경, 처리하는 개인정보 항목 변경, 개인정보 보호책임자 정보변경, 광고식별자 처리 사업자 변경
									<br/><br/><br/>
									<b>3. 개인정보 처리방침 버전 :</b> V7.4 à V7.5
									<br/><br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a3">
					            <p class="q"><a href="#a3">카카오톡 아이디 포함 시 상품 삭제 정책 안내<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            안녕하세요. 대여안대여입니다.<br/><br/>
									최근 카카오톡 아이디를 이용한 피싱 사기가 증가하고 있습니다.<br/>
									사기의 대부분은 대여안대여 채팅이 아닌 카카오톡으로 대화를 유도한 뒤에 
									피싱 사이트의 URL로 결제를 요청하여 사기를 발생시키고 있습니다.<br/>
									따라서, 대여안대여에서는 상품 등록 시 카카오톡 ID를 포함할 경우 해당 상품을 삭제하여 
									‘카카오톡 피싱 사기’ 피해가 발생하지 않도록 상품등록 정책을 변경할 예정입니다.<br/>
									해당 정책은 2020년 10월 23일 12:00부터 적용될 예정입니다.<br/>
									
									대여안대여 회원님들의 사기 피해를 방지하기 위한 조치이므로 불편한 점은 양해 부탁드리며, 
									정책 변경 후부터는 상품 상세에 카카오톡 아이디를 넣지 말아 주시기 바랍니다.<br/><br/>
									[정책 변경 사항]<br/>
									- 적용 일시: 2020년 10월 23일 12:00<br/>
									- 정책: 상품 상세에 카카오톡 ID 포함 시 상품 삭제<br/>
									그밖에 아래와 같은 상황에서 사기가 많이 발생하고 있으니 거래 시 꼭 주의해주세요.<br/>
									- 카카오톡 등 외부 채팅 서비스로 대화 유도<br/>
									- 무리한 선입금 요구 및 입금후 잠적<br/>
									- 대여안대여 채팅 사용 거부 (알림이 느리다, 사용법을 모른다, 오류가 많다 등의 이유로 거부)<br/>
									- 직거래 거부 및 택배거래 유도(코로나, 출장, 특정지역에서만 가능 등의 이유로 거부)<br/>
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a4">
					            <p class="q"><a href="#a4">이용약관 및 개인정보처리방침 변경 공지<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						          안녕하세요. 대여안대여입니다.<br/><br/>
									[대여안대여 이용약관] 및 [개인정보처리방침]이 2020년 9월 16일부터 개정됨에 따라 공지해드립니다.<br/><br/>
									회원님들께서는 개정사항의 상세내용을 확인하셔서 이용에 불편이 없으시길 바랍니다.<br/>
									- 개정목적: 결제/배송 조항 추가, 중고차경매 개인정보처리방침 추가<br/>
									- 공고일자: 2020년 9월 10일(목)<br/>
									- 시행일자: 2020년 9월 16일(수)<br/><br/>
									대여안대여는 회원분들이 직접 만들어가는, 바로 회원님들을 위한 공간입니다.<br/>
									늘 여러분들의 목소리를 경청하겠습니다.<br/>
									감사합니다.
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a5">
					            <p class="q"><a href="#a5">대여안대여 서비스 점검 안내<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            안녕하세요, 대여안대여입니다.<br/><br/>
									보다 안정적인 서비스를 제공하기 위해 아래와 같이 점검을 진행합니다.
									<br/><br/>
									1. 일시 : 2020년 10월 12일(월) 02:00~05:00 (3시간)<br/>
									2. 내용 : 대여안대여 모든 서비스 이용 제한<br/>
									<br/><br/>
									대여안대여는 가장 안전한 물품대여 서비스를 제공하겠습니다.
									<br/><br/>
									감사합니다.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a6">
					            <p class="q"><a href="#a6">상품권 및 기프트카드 거래 금지 안내<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            안녕하세요, 대여안대여입니다.<br/><br/>
									상품권은 금융사고의 우려가 있어 거래를 금지해왔습니다.<br/><br/>
									아래의 상품권은 마켓 내 상품 등록 및 거래 제한 대상임을 알려드립니다.<br/><br/>
									- 거래부적합 상품권 : 문화상품권 및 기타상품권 (컬쳐랜드, 해피머니, 도서상품권, 백화점/마트/온누리상품권, 
									외식/패션/제화 상품권 등) / 기프트카드류 / 캐시,페이,머니류 (티머니, 틴캐시, OK캐시백 등)<br/><br/>
									단, 소액의 식음료 기프티콘(5만원 이하)은 거래가 허용됩니다.<br/>
									거래부적합 상품권은 판매 등록이 금지되며 마켓 내 모든 거래가 불가한 점 당부드립니다.<br/><br/>
									안전한 마켓 환경을 위해 회원님들의 협조와 이해를 부탁드립니다.<br/><br/>
									감사합니다.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a7">
					            <p class="q"><a href="#a7">대여안대여 1주년 이벤트 당첨자 발표<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            안녕하세요, 대여안대여입니다.<br/><br/>
									지난 2020.02.10~02.29 진행 된 1주년 이벤트의 당첨자를 발표합니다.<br/><br/>
									[에어팟 프로 당첨자 2명]<br/>
									- n159355** / 휴대폰 뒷자리 **31<br/>
									- n130197** / 휴대폰 뒷자리 **89<br/><br/>
									당첨자분들에게는 개별 연락드리겠습니다.<br/><br/>
									감사합니다.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a8">
					            <p class="q"><a href="#a8">대여안대여 서비스 점검 안내<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            안녕하세요, 대여안대여입니다.<br/><br/>
									보다 안정적인 서비스를 제공하기 위해 아래와 같이 점검을 진행합니다.
									<br/><br/>
									1. 일시 : 2020년 9월 22일(화) 02:00~05:00 (3시간)<br/>
									2. 내용 : 대여안대여 모든 서비스 이용 제한<br/>
									<br/><br/>
									대여안대여는 가장 안전한 물품대여 서비스를 제공하겠습니다.
									<br/><br/>
									감사합니다.
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a9">
					            <p class="q"><a href="#a9">대여안대여 아이디 설정 안내<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						         	답변안녕하세요, 대여안대여입니다.<br/><br/>
									회원님들께 대여안대여 아이디(이메일)를 설정해주시길 안내드립니다.<br/>
									앞으로 아이디를 설정하셔야 원활한 이용이 가능합니다.<br/>
									[나의메뉴]-[설정]-[내정보 설정]에서 로그인 시 사용할 아이디를 설정해주세요.<br/>
									현재 아이디를 모르실 경우 해당 메뉴에서 확인 또는 변경도 가능합니다.<br/>
									아이디 설정에 대해 궁금하신 사항은 [나의메뉴]-[1:1문의]로 보내주세요.<br/><br/>
									감사합니다.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a10">
					            <p class="q"><a href="#a10">8월 17일 임시공휴일 전화상담 휴무 안내<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            안녕하세요, 대여안대여입니다.<br/><br/>
									8월 17일은 임시공휴일로 대여안대여 전화상담이 운영되지 않는 점 양해를 부탁드립니다.<br/>
									마켓 내 서비스 이용은 예정대로 진행됩니다.<br/>
									문의사항은 [1:1문의]로 보내주시면 신속한 답변을 위해 최선을 다하겠습니다.<br/><br/>
									감사합니다.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a11">
					            <p class="q"><a href="#a11">대여안대여 서비스 점검 안내<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            안녕하세요, 대여안대여입니다.<br/><br/>
									보다 안정적인 서비스를 제공하기 위해 아래와 같이 점검을 진행합니다.
									<br/><br/>
									1. 일시 : 2020년 8월 14일(금) 02:00~05:00 (3시간)<br/>
									2. 내용 : 대여안대여 모든 서비스 이용 제한<br/>
									<br/><br/>
									대여안대여는 가장 안전한 물품대여 서비스를 제공하겠습니다.
									<br/><br/>
									감사합니다.
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a12">
					            <p class="q"><a href="#a12">5월 1일 근로자의 날 전화상담 휴무 안내<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            안녕하세요, 대여안대여입니다.<br/><br/>
									5월 1일 근로자의 날에는 전화상담이 휴무로 운영되지 않는 점 양해 부탁드립니다.<br/><br/>
									문의 사항은 웹/앱 내 1:1 문의로 남겨주시면 확인 후 도움드리겠습니다.<br/><br/>
									그 외 서비스 이용은 정상적으로 진행되오니 이용에 참고 부탁드립니다.<br/>
									감사합니다.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a13">
					            <p class="q"><a href="#a13">부정군수품 집중 단속 활동에 대한 안내<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            안녕하세요, 대여안대여입니다.<br/><br/>
									최근 국방부 산하 군사경찰대로부터 부정군수품 집중단속에 대한 협조 요청을 받아 안내드립니다.
									<br/><br/>
									군용 물품을 사고 파는 행위는 형사처벌 대상으로, 아래와 같은 상품은 거래하지 않으시기 바랍니다.
									<br/>
									- 총기, 탄약, 폭발물<br/>
									- 통신장비<br/>
									- 군용유류/식량<br/>
									- 군복류(군용모자, 제복, 군화, 군복에 붙이는 부착물, 기타 피아식별 띠 등)<br/>
									- 군용장구(권총집, 구급대, 수통, 야전삽, 천막류, 침낭, 모포, 방탄모, 방탄복, 배낭 등)<br/><br/>
									대여안대여는 이용약관 제18조 및 현행 법률에 따라 거래 부적합 상품 등록 및 거래를 금지하고 있으며, 관련 상품을 등록할 경우 삭제 및 제재조치가 진행될 수 있습니다.
									<br/><br/>
									단속대상을 확인하시고 잘 알지 못하여 처벌받는 일이 없으시도록 회원님의 관심과 협조를 부탁드립니다.
									<br/><br/>
									감사합니다.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a14">
					            <p class="q"><a href="#a14">긴급재난지원금 거래 행위 금지<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            안녕하세요, 대여안대여 운영팀입니다.
						            <br/><br/>
									코로나19 바이러스 확산에 따른 경제위기 극복을 위해 정부에서 다양한 형태로 긴급재난지원금을 지급하고 있습니다.
									<br/><br/>
									발행취지에 맞지 않게 정부의 긴급재난지원금을 거래하는 행위는 제한되며,<br/>
									관련 상품을 등록할 경우 삭제 및 제재가 진행되오니 이러한 상품을 거래하지 않으시기 바랍니다.<br/><br/>
									- 지역 화폐<br/>
									- 지역 사랑 상품권<br/>
									- 선불카드<br/>
									- 기타 긴급재난지원금<br/><br/>
									코로나19 바이러스가 무사히 종식되고, 이로 인한 상황이 하루 빨리 회복되길 응원합니다.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a15">
					            <p class="q"><a href="#a15">대여안대여 이용약관 변경 건 공지<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            안녕하세요. 대여안대여입니다.
									<br/>
									대여안대여 [이용 약관]이 변경되어 아래와 같이 안내드립니다.
									<br/><br/>
									- 변경되는 [이용 약관]
									<br/>
									  1) 제 4 조 (관련법령과의 관계)
									  <br/>
									  2) 제 6 조 (개인정보의 보호 및 사용)
									  <br/>
									  2) 제 8 조 (서비스 이용자의 의무)
									  <br/>
									  3) 제 10 조 (분쟁처리 및 분쟁조정)
									  <br/><br/>
									- 변경되는 약관 효력 발생일: 2019. 7. 15.
									<br/><br/> 
									- 변경 내역
						            <br/>
						            <b style="color: red">[기존]</b><br/>
				                	<b>제 4조 (관련법령과의 관계)</b><br/>
										1. 이 약관에서 정하지 않은 사항은 전기통신사업법, 전자거래기본법, 
										정보통신망이용촉진및정보보호등에관한법률, 전자상거래등에서의 소비자보호에관한법률 등 
										관련법령의 규정과 일반적인 상관 례에 의합니다.</br>
					            		2. 회원은 회사가 제공하는 서비스를 이용함에 있어서 전자상거래등에서의 
					            		소비자보호에관한법률(예시:공급서, 표시광고, 반품, 배송 등 통신판매에 관한 규정), 
					            		전자거래기본법(예시:소비자보호에 관한 규정), 소비자보호법(예시:사업자의 의무에 관한 규정), 
					            		정보통신망이용촉진및정보보호등에관한법률(예시:개인정보보호에 관한 규정) 등 관련법령을 준수하여야 하며, 
					            		이 약관의 규정을 들어 관련법령 위반에 대한 면책을 주장할 수 없습니다.<br/><br/>
					            		
					            	<b>제 6조 (개인정보의 보호 및 사용)</b><br/>
										1.사용회사는 개인정보를 중요하게 생각하고 관리하고 있습니다. 
										회사의 개인정보보호에 대해서는 개인정보보호정책을 통해 확인하실 수 있습니다. <br/><br/>
										
									<b>제 8조 (서비스 이용자의 의무)</b><br/>
										1. 판매자의 의무<br/>
											8) 판매자는 “전자상거래등에서의 소비자보호에 관한 법률” 등 상품의 매매와 관련한 법령에서
										 	정하는 기간동안 필요자료를 보관하여야 합니다.<br/>
										
										3. 회사의 의무<br/>
											5) 회사는 서비스 제공자로서 관련 법령에서 정하는 기간동안 필요정보를 보관합니다. 
											또한 보관중인 자료에 대하여 권리가 있는 자의 요청이 있는 경우 관련 자료를 제공할 수 있습니다.<br/>
											6) 전자적 장치의 운영장애, 그 밖의 사유로 거래 내용을 제공 할 수 없을 때 
											회사는 회원들에게 이를 즉시 알리며 만일 회원이 자신의 거래 내용을 서면(전자문서는 제외)으로 제공받기를 원한다면, 
											회원 본인의 이름, 아이디, 주민번호, 확인하고자 하는 거래정보(거래번호, 가격, 결제일 등) 등을 
											명시한 서면자료를 아래 주소지로 등기 우편으로 보내야 합니다.<br/><br/>
										
									<b>제 10조 (분쟁처리 및 분쟁조정)</b><br/>
										3. 이용자는 ‘금융감독기구의 설치 등에 관한 법률’ 제 51조의 규정에 따른 금융감독원의 금융분쟁조정위원회나
										 ‘소비자보호법’ 제 31조 제 1항의 규정에 따른 소비자보호원에 
										 회사의 전자금융거래 서비스의 이용과 관련한 분쟁조정을 신청할 수 있습니다.<br/><br/> 
															            		
					            	<b style="color: red">[변경]</b><br/>	
					            	<b>제 4조 (관련법령과의 관계)</b><br/>
					            	 	1. 이 약관에서 정하지 않은 사항은 전기통신사업법, 전자문서 및 전자거래기본법, 
					            	 	정보통신망 이용촉진 및 정보보호등에 관한 법률, 전자상거래 등에서의 소비자보호에 관한 법률 등 
					            	 	관련법령의 규정과 일반적인 상관 례에 의합니다.<br/>
										2. 회원은 회사가 제공하는 서비스를 이용함에 있어서 전자상거래 등에서의 
										소비자보호에 관한 법률 (예시:공급서, 표시광고, 반품, 배송 등 통신판매에 관한 규정), 
										전자상거래 등에서의 소비자보호에 관한 법률 (예시:소비자보호에 관한 규정), 
										소비자기본법(예시:사업자의 의무에 관한 규정), 정보통신망 이용촉진 및 
										정보보호등에 관한 법률 (예시:개인정보보호에 관한 규정) 등 관련법령을 준수하여야 하며, 
										이 약관의 규정을 들어 관련법령 위반에 대한 면책을 주장할 수 없습니다.<br/><br/>
										
									<b>제 6조 (개인정보의 보호 및 사용)</b><br/>
										 1.사용회사는 개인정보를 중요하게 생각하고 관리하고 있습니다. 
										 회사의 개인정보보호에 대해서는 개인정보처리방침을 통해 확인하실 수 있습니다.<br/><br/>
									<b>제 8 조 (개인정보의 수집 등)</b><br/>
										1. 판매자의 의무<br/>
											8) 판매자는 " 전자상거래 등에서의 소비자보호에 관한 법률" 등 상품의 매매와 관련한 법령에서
											 정하는 기간동안 필요자료를 보관하여야 합니다.<br/>
										3. 회사의 의무<br/>
											5) 회사는 서비스 제공자로서 관련 법령에서 정하는 기간동안 필요정보를 보관합니다.
											 또한 보관중인 자료에 대하여 당사자의 요청이 있는 경우 관련 자료를 제공할 수 있습니다.<br/>
											6) 전자적 장치의 운영장애, 그 밖의 사유로 거래 내용을 제공 할 수 없을 때 회사는 회원들에게 
											이를 즉시 알리며 만일 회원이 자신의 거래 내용을 서면(전자문서는 제외)으로 제공받기를 원한다면, 
											회원 본인의 이름, 아이디, 전화번호, 확인하고자 하는 거래정보(거래번호, 가격, 결제일 등) 등을 명시한 
											서면자료를 아래 주소지로 등기 우편으로 보내야 합니다.<br/><br/>
									<b>제 10조 (분쟁처리 및 분쟁조정)</b><br/>
										3. 이용자는 '금융위원회의 설치 등에 관한 법률' 제 51조의 규정에 따른 
										금융감독원의 금융분쟁조정위원회나 ' 전자상거래 등에서의 소비자보호에 관한 법률 ' 제 31조 제 1항의 
										규정에 따른 한국소비자원에 회사의 전자금융거래 서비스의 이용과 관련한 분쟁조정을 신청할 수 있습니다.<br/><br/>
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