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
    border-bottom: 3px solid #3E4BA9;
}
.jetab_con { clear:both; margin-top:5px; border:1px solid #ddd; }
.jetab_con div { display:block; background:#fff; line-height:100px; text-align:center; padding: 0 15px;}

.faq {border: 0px solid red; border-bottom:0px solid #ddd; margin:1em 0; }
.faq .faqHeader{position:relative;zoom:1}
.faq .faqHeader .showAll{position:absolute;bottom:0;right:0;border:0;padding:0;overflow:visible;background:none;cursor:pointer}
.faq .faqBody{margin:0;padding:0}
.faq .faqBody .article{list-style:none}
.faq .q {margin:}
.faq .q a:hover, .notice .q a:active, .notice .q a:focus{}
.faq .q a {
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
.faq .a {
    background: #f8f8f8 url(https://happyjung.diskn.com/data/lecture/icon_jquery_faq_20170221_2.png) no-repeat 40px 10px;
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
				<h3>자주묻는 질문</h3>
				<ul class="breadcrumb">
					<li><img src="img/home.png" alt="홈"> &gt;</li>
					<li>자주묻는 질문</li>
				</ul>
			</div>
			<div class="contents">
<!------------------------------------------------------------------------------------------------->
				<!-- 탭메뉴 -->
				<ul class="tab" id="tab">
					<li onclick="location.href='list.no'">공지사항</li>
					<li>자주묻는 질문</li>
					<li onclick="location.href='list.qn'">1:1 문의하기</li>
				</ul>
		
				<div class="jetab_con" id="tab_con">
					<div class="faq">
					    <div class="faqHeader">
					        <!--button type="button" class="showAll">답변 모두 여닫기</button-->
					    </div>
					    <ul class="faqBody">
					    	 <li class="article" id="a1">
					            <p class="q"><a href="#a1">상품 대여는 어떻게 하나요?<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
									<b style="color: red;">[상품 판매 등록 방법]</b>
									<br/><br/>
									* 앱 > 하단의 '+' 버튼 선택 후 상품등록하기				            
									<br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a2">
					            <p class="q"><a href="#a2">거래를 하면 안되는 것들은 어떤 것이 있나요?<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            <b>거래금지품목은 즉시 삭제 및 계정 차단이 될 수 있으므로 운영정책을 참고하셔서 이용 부탁드립니다.</b>
									<br/><br/>
									<b>1. 주민등록증(각종 신분증)</b>
									<br/>
									- 문서, 도화, 전자기록 등 특수매체 기록, 공정증서 원본, 면허증, 허가증, 등록증 또는 여권의 위변조 및 사용은 형법으로 처벌받을 수 있습니다.
									<br/><br/>
									<b>2. 대포차, 대포 통장</b>
									<br/>
									- 전자금융거래법 제49조 제4항에서는 통장의 양도 또는 대여 행위 등에 대하여 3년 이하의 징역 또는 2천만원 이하의 벌금으로 처벌하고 있습니다.
									<br/><br/>
									<b>3. 마약/도박</b>
									<br/>
									1) 마약류는 마약·향정신성의약품 및 대마를 지칭하는 것으로 마약류관리에 관한 법률에 따라 의료용 및 학술연구용으로만이 취급 가능하며 마약류 소매업자라 하더라도 인터넷 쇼핑몰을 통해서는 판매할 수 없습니다.
									<br/>
									2) 보건복지부에서는 그 오용 또는 남용으로 인한 보건상의 위해를 방지하기 위하여 이에 대한 취급 제한을 두고 있습니다.
									<br/><br/>
									<b>4. 위조상품/이미테이션</b>
									<br/>
									- 상표법, 부정경쟁방지 및 영업비밀보호에 관한 법률 등의 적용으로 거래가 금지됩니다.
									<br/><br/>
									<b>5. 담배(전자담배용품)</b>
									<br/>
									- 담배사업법에 따라 담배의 온라인 판매는 금지되어 있으며, 담뱃잎을 사용하지 않았다 하더라도 그 유사한 형태의 끽연용 제품을 담배와 동일하게 취급하여 판매를 규제하고 있습니다.
									<br/><br/>
									<b>6. 불법시술(타투, 반영구화장 등)</b>
									<br/>
									- 현행 의료법령에 따라 의료인만 반영구화장과 같은 문신 시술을 할 수 있고 가정용 의료기기도 피부관리실에서 사용할 수 없습니다.
									<br/><br/>
									<b>7. 혈액(헌혈증)</b>
									<br/>
									- 혈액관리법에서는 금전·재산상의 이익이나 기타 대가적 급부를 주거나 받음으로써 혈액 또는 헌혈증서를 매매하는 행위를 금지하고 있습니다.
									<br/><br/>
									<b>8. 장물</b>
									<br/>
									- 장물을 취득, 양도, 운반, 보관 또는 이를 알선하는 자는 7년 이하의 징역이나 1500만원 이하의 벌금에 처하게 됩니다(형법 제362조)
									<br/><br/>
									<b>9. 성기구/음란물</b>
									<br/>
									- 대법원 판례 및 방송통신심의위원회의 정보통신에 관한 심의 규정에 따라 음란물로 구분되는 정보는 인터넷으로 유통할 수 없습니다.
									<br/><br/>
									<b>10. 주류</b>
									<br/>
									- 주세법에 따라 주류소매업 및 의제주류판매업 면허를 받은 자는 허가된 장소에서만 주류를 판매하여야 하고, 통신판매(전자상거래, E-mail, 전화 주문에 의한 택배 등 대면 판매가 아닌 경우)는 할 수 없도록 규정되어 있습니다.
									<br/><br/>
									<b>11. 의약품</b>
									<br/>
									- 모든 의약품(동물용 의약품 포함)은 약사법(동물용 의약품 등 취급규칙)에 의거 약국 개설자(해당 약국에 근무하는 약사 또는 한약사 포함)만이 판매 가능하며, 약국 개설자의 경우에도 지방자치단체장의 승인을 얻은 경우를 제외하고는 인터넷(약국 또는 점포 이외의 장소)을 통한 판매가 불가합니다.
									<br/><br/>
									<b>12. 시력보정용 안경 및 콘택트 렌즈</b>
									<br/>
									- 의료기사 등에 관한 법률 제 12조 5항에 의거 온라인 판매를 금지합니다.
									1) 시력 보정용(도수 있는) 안경 및 선글라스
									2) 시력 보정용&치료용 콘택트렌즈(하드&소프트)
									3) 도수 없는 미용 렌즈(서클렌즈, 컬러렌즈)
									<br/><br/>
									<b>13. 온라인 게임 계정</b>
									<br/><br/>
									<b>14. 야생 동/식물</b>
									<br/><br/>
									<b>15. 불법 소프트웨어</b>
									<br/>
									- 저작권법에 의해 복제 등을 통한 불법적인 소프트웨어의 유통은 금지되어 있습니다.
									<br/><br/>
									<b>16. 허위 등록 상품</b>
									<br/>
									- 실제 판매제품이 아닌 허위로 등록된 상품등록은 제재를 받습니다.
									<br/><br/>
									<b>17. 총포, 도검, 무기, 화약</b>
									<br/>
									1) 총포·도검·화약류·분사기·전자충격기·석궁은 특정 허가된 장소에서 판매 및 소지허가가 있는 사람에 의해서만 판매가 가능한 상품으로 대여안대여에서의 판매는 불가합니다.
									2) 총포·도검·화약류 등 단속법에 명시된 무기류 외에 인명 또는 동물을 살상할 목적으로 제작되었거나 그러기에, 충분한 위력을 가졌다고 판단되는 모든 무기류 및 폭력을 조장하는 물품 또한 판매할 수 없도록 규정되어 있습니다. (단, 통상적으로 그 주기능이 생활용품, 예술활동용품, 수렵을 제외한 레저용품으로 인정되는 경우는 제외)
									<br/><br/>
									<b>18. 무허가 식품</b>
									<br/>
									- 허가되지 않은 불량식품 판매는 거래할 수 없습니다.
									<br/><br/>
									<b>19. 유해화학물질</b>
									<br/>
									- 유독물, 관찰물질, 취급 제한 금지물질, 사고대비물질, 그 밖에 유해성 또는 위해성이 있거나 그러한 우려가 있는 화학물질은 거래할 수 없습니다.
									<br/><br/>
									<b>20. 랜덤박스</b>
									<br/>
									- 내용물을 알 수 없거나 일부만 알 수 있는 것은 거래할 수 없습니다.
									<br/><br/>
									<b>21. 온누리상품권, 지역사랑상품권, 지역화폐</b>
									<br/><br/>
									<b>22. 재난기본소득 등으로 지급받은 선불카드, 지역화폐카드</b>
									<br/><br/>
									<b>23. 유사군복류, 군용장구</b>
									<br/>
									- 군복 및 군용장구의 단속에 관한 법률에 따라 금지하고 있습니다.
									<br/><br/>
									<b>24. 반려동물</b>
									<br/><br/>
									<b>25. 적합성 평가를 받지 않은 불법방송통신기자재</b>
									<br/>
									- 국가통합인증마크(KC마크)가 없는 기자재를 판매/대여할 목적으로 진열(인터넷 게시 포함)/보관 또는 운송하거나 무선국/방송통신망에 설치한 자는 1년 이하의 징역 또는 1천만원 이하의 벌금형에 처합니다.
									<br/><br/>
									<b>26. 개인 사용 목적으로 해외직구한 전자제품</b>
									<br/><br/>
									감사합니다.
									<br/>
								</p>
					        </li>
					        <hr>
					        <li class="article" id="a3">
					            <p class="q"><a href="#a3">수제(음식,화장품)을 판매하고 싶은데 어떤 서류가 필요한가요?<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            <b style="color: red;">수제(음식,화장품)을 판매하실 통신판매 허기증, 사업자등록증, 신분증 필요</b>
									<br/><br/>
									수제 음식 : 통신 판매 허가증/사업자 등록증/신분증
						            <br/>
									수제 화장품(비누) : 식약청 허가증/통신 판매 허가증/사업자 등록증/신분증
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a4">
					            <p class="q"><a href="#a4">물품대여 후 교환이나 환불은 어떻게 하나요?<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            <b style="color: red;">교환/반품은 판매자와 협의 필요</b>
						            <br/><br/>
									물품대여는 개인간의 거래이므로 전자상거래법, 소비자보호법등이 적용되지 않습니다.
									물품을 받으신 후 단순변심 또는 전달 받지 못한 하자가 확인되어 교환/반품을 원하실 경우, 판매자와 협의를 통해 진행 해 주시기 바랍니다. 
									<br/>
									단순변심 환불로 판매자와 협의된 경우 배송비는 구매자 부담이 될 수 있습니다.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a5">
					            <p class="q"><a href="#a5">14세 미만은 가입이 불가한가요?<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						             <b style="color: red;">14세 미만 회원 가입불가</b>
						             <br/><br/>
									대여안대여는 만 14세미만 회원의 경우 법정대리인 동의 후 서비스 이용이 가능하도록 하였으나
									법률적 대리인(보호자)정보를 파악하기에 어려움이 있어 회원가입 정책을 변경하였습니다.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a6">
					            <p class="q"><a href="#a6">여러개의 계정을 만들 수 있나요?<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						        	<b style="color: red;">1인 1계정 원칙</b>
						        	<br/><br/>
								  	대여안대여는 1인 1계정 사용을 원칙으로 하고 있습니다. 
						            <br/>
								  	여러 계정의 동일 사용자라 판단되는 경우 경고 및 제재조치가 될 수 있습니다. 
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a7">
					            <p class="q"><a href="#a7">휴면계정 해제는 어떻게 하나요?<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            <b style="color: red;">휴면계정은 해제가 불가, 재가입을 통한 서비스 이용가능</b>
									<br/><br/>
									회원의 개인 정보보호를 위해 1년 이상 서비스 이용이 없는 고객들을 대상으로 휴면 계정 정책을 시행합니다.
									<br/><br/>
									휴면 계정으로 전환되는 경우 아래의 내용이 적용 됩니다.<br/>
									1. 개인 정보를 포함한 서비스 이용 정보가 모두 삭제처리<br/>
									2. 보유한 포인트는 모두 소멸<br/>
									3. 휴면 전환 즉시 해당 사용자의 계정은 대여안대여에서 탈퇴 처리됩니다.<br/>
									<br/>
									관련 법령<br/>
									- 정보통신망 이용 촉진 및 정보 보호 등에 관한 법률 제29조 및 시행령 제 16조(15년 8월 18일 시행)에 따라
									정보 통신 서비스 제공자 등은 대통령령으로 정하는 기간(1년) 동안 이용하지 아니하는 이용자의 정보를 보호하기 위하여 파기 또는 별도 보관하여야 한다.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a8">
					            <p class="q"><a href="#a8">상품 수정 / 상품 삭제 방법<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            - 내상점 > 판매상품> 설정 > 상품수정 또는 삭제
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a9">
					            <p class="q"><a href="#a9">내 상품이 삭제 처리 됐어요.<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            <b style="color: red;">[상품 삭제 처리 기준]</b>
						            <br/><br/>
									- 거래금지품목(술,전자담배,계정,의약품 등)을 판매 등록한 경우
									<br/>
									- 타 사이트 홍보 및 외부 url이 있는 경우
									<br/>
									- 운영정책 위반으로 상점이 차단된 경우 판매중인 상품은 판매완료로 변경
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a10">
					            <p class="q"><a href="#a10">찜은 무엇이고, 어떻게 하나요?<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            <b>1. 찜이란</b>
						            <br/>
									- 관심 상품을 확인할 수 있도록 보관하는 기능으로서 상품페이지 > 찜하기 가능
									<br/><br/>								
									<b>2. 찜한 상품을 보는 방법</b>
									<br/>
									-앱 > 우측 상단의 하트 아이콘 > 찜리스트 확인 가능
									<br/><br/>
									<b>3. 찜 취소 방법</b>
									<br/>
									- 찜한 상품의 상세페이지 > 찜 버튼을 한번 더 눌러 찜 해제 가능
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a11">
					            <p class="q"><a href="#a11">상품등록이 안되요.<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            <b>상품등록을 실패하는 경우 아래내용을 확인해 주세요.</b> 
						            <br/><br/>
						            1. 대여안대여 앱 버전을 최신 버전으로 업데이트 하기
									<br/>
									- 하위 버전 이용 중인 경우에는 일부 서비스 이용이 제한되니 반드시 대여안대여 앱을 최신버전으로 업데이트 후 사용 부탁드립니다.
									<br/><br/>
									2. 내상점 > 본인인증이 완료되어 있는지 확인
									<br/>
									- 마지막 본인인증 후 180일이 경과하면 본인인증이 만료됩니다.본인인증 후 서비스 이용이 가능합니다.
									<br/><br/>
									* 최신 버전에서도 상품 업로드가 실패해요!
									<br/>
									>> 네트워크가 원활하지 않은 경우 상품 등록이 어려울 수 있으니 현재 이용 중인 네트워크가 아닌 다른 네트워크로 연결하여 상품등록을  해주세요.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a12">
					            <p class="q"><a href="#a12">탈퇴는 어떻게 하나요?<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            안녕하세요. 대여안대여 입니다.
						            <br/><br/>
						            대여안대여 웹사이트 또는 앱에서 계정 설정을 통해 탈퇴하실 수 있습니다.
									<br/><br/>
									감사합니다.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a13">
					            <p class="q"><a href="#a13">상점 주소는 어떻게 설정하나요?<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            <b style="color: red;">[상점 주소 설정 방법]</b>
						            <br/><br/>
									내상점 > 설정 > 상점설정 > 상점 주소 설정
									<br/><br/>
									- 상점주소 설정 후 주소 변경만 가능하며, 상점 주소 삭제는 불가합니다.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a14">
					            <p class="q"><a href="#a14">특정공간에서 앱 접속이 안되요. 어떻게 하나요?<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            이동 중이거나 건물 지하와 같은 특정 공간에서는 네트워 연결이 원할하지 않을 수 있습니다.
						            <br/><br/>
									만약 지속적으로 오류가 발생한다면 '내상점 > 1:1문의'로 접수 부탁드립니다.
									<br/><br/>
									문의 TIP
									<br/>
									- 포털 사이트 > '내 IP' 검색시 조회되는 IP를 기재하여 문의하시면 원할한 상담이 가능합니다.
						            <br/>
					            </p>
					        </li>
					        <hr>
					        <li class="article" id="a15">
					            <p class="q"><a href="#a15">사기를 당하면 어떻게 처리해야 되나요?<br><time class="time">2020/09/27</time></a></p>
					            <p class="a">
						            사기거래 발생 시 수사기관 접수
						            <br/><br/>
									대여안대여는 개인간의 거래(C2C)에 대해 직접관여하지 않으므로, 피해를 당하셨을 경우 유관기관에 직접 신고를 하여 처리하셔야 합니다.
									<br/><br/>
									신고 방법 및 필요서류는 아래내용을 참고 부탁드립니다.
									<br/><br/>
									1. 준비자료 및 증거자료 수집
									<br/>
									▶ 준비자료 : 피해자 인적사항, 피해일시, 해당사이트, ID 또는 상점명, 거래내역
									<br/>
									(가해상점의 개인정보는 개인정보보호법에 의해 신고인에게 직접 제공할 수 없으며, 경찰서의 공문을 통해 제공하고 있습니다.)
									<br/>
									▶ 증거자료 수집 : 상대방과 거래한 대화내용, 입금한 이체내역서
									<br/><br/>
									2. 경찰서 민원봉사실이나 사이버안전지킴이에 신고
									<br/>
									- 경찰청: https://www.police.go.kr/index.do
									<br/><br/>
									1) 경찰서 민원봉사실 방문(형사상 처리를 통해 검거 또는 보상이 필요할 경우)
									<br/>
									2) 고소장을 작성
									<br/>
									3) 사건사실확인서 발급을 요청
									<br/>
									4) 사건사실확인서를 가지고 상대방의 은행에 방문하여 계좌지급정지 신청
									<br/><br/>
									- 사이버안전지킴이
									<br/>
									https://www.police.go.kr/www/security/cyber.jsp
									<br/>
									해당 사이트에 방문하여 증거자료를 첨부하여 안내에 따라 작성하시면 됩니다.
									<br/><br/>
									대여안대여에서 처리해 드릴 수 있는 부분은, 사실확인 후 신고된 상대방의 상점이 활동하지 못하도록 계정을 정지하여 드리는 것입니다.
									<br/>
									[설정>1:1상담하기]를 통해 제보해 주실 수 있습니다.
									<br/>
									처리절차는 다음과 같습니다. (1:1문의통해 거래/송금 증거자료 제출 - 사실여부 확인 - 계정정지)
									<br/><br/>
									<b>[신고사유에 따른 필요 내용]</b>
									<br/>
									• 상태불량 : 실제수령한 상품이미지 등 관련자료 이미지 첨부
									<br/>
									• 착불 : 선불로 협의한 대화내용(카톡, 채팅 등) 등 관련 자료 이미지 첨부
									<br/>
									• 교환 : 상점에 등록 된 신고자(본인)의 상품과 상대방의 상품기재(본인상품, 상대방의 상품 추가금 발생했다면 기재)
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

jQuery(function($){	
	//공지사항 글보기
    var article = $('.faq>.faqBody>.article');
    article.addClass('hide');
    article.find('.a').hide();
    article.eq(0).removeClass('hide');
    article.eq(0).find('.a').show();
    $('.faq>.faqBody>.article>.q>a').click(function(){
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
    $('.faq>.faqHeader>.showAll').click(function(){
        var hidden = $('.faq>.faqBody>.article.hide').length;
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