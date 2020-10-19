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

/* map 관련 css */
#map { 
	position:absolute; 
	width:800px; height:600px;
	left:50%; top:65%;	
	transform:translate(-50%, -50%);
	border:2px solid #666;		
	display:none;      
}

#btn_gps {
	font-size: 20px;
	margin-left: 5px;
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
								<td class="md_name" style="font-size: 30px; line-height: 200%; padding-left: 30px;">${vo.md_name }</td>
								<td></td>
							</tr>
							<tr>
								<td style="font-size: 40px; line-height: 170%; padding-left: 30px;">${vo.md_price }원</td>
								<td></td>
							</tr>
							<tr>
								<td style="color: #696763" colspan="2">
								<img src="img/heart.png" style="width: 50px; height: 20px; padding-left: 30px;">&nbsp;${vo.md_fav_count }
								&nbsp;&nbsp;&nbsp;&nbsp;
								<img src="img/view.png" style="width: 50px; height: 20px; padding-left: 30px;">&nbsp;${vo.md_hits}
								</td>
								<%-- <td style="color: #696763" ><img src="img/view.png" style="width: 20px; height: 20px;">&nbsp;${vo.md_hits}</td> --%>
							</tr>
							<c:forEach items="${vo.nickaddr }" var="list">
								<tr>
									<td colspan="2" style="color: #696763; padding-left: 30px;">닉네임 : ${list.member_nickname}</td>
								</tr>
								<tr>
									<c:if test="${info.member_addr ne null }">
										<td colspan="2" style="color: #696763; padding-left: 30px; cursor: pointer;" onclick="search_location();">주소 : ${info.member_addr}
											<c:if test="${(info.member_latitude ne null) and (info.member_longitude ne null)}">
												<span><i class="fas fa-map-marker-alt" id="btn_gps" onclick="search_location();"></i></span>
											</c:if>
										</td>
									</c:if>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="2" style="padding-left: 30px; font-size: 20px;">상품정보</td>
							</tr>
							<tr>
								<td colspan="2" class="md_content" style="padding-left: 30px;">${vo.md_detail_content}</td>
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
						<table class="review_list" style="width:100%; margin-bottom: 15px; text-align: left; border-bottom: 1px solid #a1a1a1; border-top: 1px solid #a1a1a1;">
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
   				
   					<div><iframe src="mdqna.ma?md_serial_number=${vo.md_serial_number}" style="width: 100%; height: 500px;"></iframe></div>					
				</div>
				
				
			</div> <!--content wrap  -->
		</div>
		<div id="popup-background" onclick="$('#popup-background, #map').css('display', 'none');"></div>
		<div id="map"></div>
	</section>
	<!-- google map을 위한 js -->
	<script type="text/javascript" 
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCsrerDHJrp9Wu09Ij7MUELxCTPiYfxfBI" ></script>
	<script type="text/javascript">
		function search_location() {

			var map;
			var marker;
			var latitude = Number(${info.member_latitude});		//위도
			var longitude = Number(${info.member_longitude}); 	//경도

			if("${info.member_latitude}" == "" || "${info.member_longitude}" == "") {
				alert("위치 정보를 찾을 수 없습니다!");
				return false;
			} else {
				$('#popup-background, #map').css('display', 'block');
				google.maps.event.addDomListener(window, 'load', initialize(latitude, longitude));
			}
				
			// Google Map으로 위도와 경도 초기화
			//initialize(latitude, longitude);
	
			function initialize(latitude, longitude) {
				// 현재 위치의 위도와 경도 정보를 currentLocatioon 에 초기화 
				var currentLocation = new google.maps.LatLng(latitude, longitude);
				var mapOptions = {
					center : currentLocation, 	//지도에 보여질 위치			
					zoom : 18, 		//지도 줌 (0축소 ~ 18확대) 	
					mapTypeId : google.maps.MapTypeId.ROADMAP
				};
				
				// DIV에 지도 달아주기
				map = new google.maps.Map(document.getElementById("map"), mapOptions);
				
				// 지도 위에 마커 달아주기
				marker = new google.maps.Marker({
					position : currentLocation,
					map : map
				});
				
				google.maps.event.addListener(marker, 'click', toggleBounce(marker));
			}

			function toggleBounce(marker) {
				if (marker.getAnimation() != null) {
					marker.setAnimation(null);
				} else {
					marker.setAnimation(google.maps.Animation.BOUNCE);
				}
			}
			
		} //search_location()
	</script>
</body>


</html>