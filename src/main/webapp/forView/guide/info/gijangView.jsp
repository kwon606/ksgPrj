<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	.gijang-tabs {
		margin-bottom: 16px;
	}

	.gijang-list {
		display: grid;
		grid-template-columns: repeat(2, 260px);
		gap: 24px;
	}

	.gijang-item img {
		width: 260px;
		height: 170px;
		object-fit: cover;
	}

	.gijang-item h4 {
		margin: 8px 0 6px;
	}

	.gijang-item p {
		margin: 0 0 8px;
	}
</style>

<div class="gijang-tabs">
    <a href="/TeamPrj1/forward/info/gijang/tour.jsp">관광지정보</a> |
    <a href="/TeamPrj1/forward/info/gijang/food.jsp">식당정보</a> |
    <a href="/TeamPrj1/forward/info/gijang/cafe.jsp">카페정보</a> |
    <a href="/TeamPrj1/forward/info/gijang/stay.jsp">숙박정보</a>
</div>

<hr>

<%
	String tab = (String)request.getAttribute("tab");
%>

<% if (tab == null) { %>

	<h3><%=request.getAttribute("service") %></h3>

	<img src="/TeamPrj1/fff/gijang/gijang1.jpg" width="300">
	<img src="/TeamPrj1/fff/gijang/gijang2.jpg" width="300" height="226">

	<p><%=request.getAttribute("mainData") %></p>

<% } else if ("tour".equals(tab)) { %>

	<h3>관광지정보</h3>

	<div class="gijang-list">
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/tour1.jpg">
			<h4>스카이라인 루지</h4>
			<p>다양한 액티비티 활동을 체험 하는 곳</p>
			<a href="https://busan.skylineluge.kr/" target="_blank">공식홈페이지</a>
		</div>
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/tour2.jpg">
			<h4>죽성드림세트장</h4>
			<p>기장의 풍경과 관광지 구경 하는 곳</p>
			<a href="https://map.naver.com/p/entry/place/33500362?placePath=/home?from=map&fromPanelNum=1&additionalHeight=76&timestamp=202605030856&locale=ko&svcName=map_pcv5&c=15.00,0,0,0,dh" target="_blank">관광지주소</a>
		</div>
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/tour3.jpg">
			<h4>일광 해수욕장</h4>
			<p>기장의 8경 중 하나인 해수욕장 </p>
			<a href="https://map.naver.com/p/entry/place/13490896?c=15.00,0,0,0,dh&placePath=/home?from=map&fromPanelNum=1&additionalHeight=76&timestamp=202605030931&locale=ko&svcName=map_pcv5" target="_blank">관광지주소</a>
		</div>
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/tour4.jpg">
			<h4>해운대 캡슐열차</h4>
			<p>해안절경을 공중에서 관람하는 곳</p>
			<a href="https://map.naver.com/p/entry/place/1287134328?c=15.00,0,0,0,dh" target="_blank">관광지주소</a>
		</div>
	</div>

<% } else if ("food".equals(tab)) { %>

	<h3>식당정보</h3>

	<div class="gijang-list">
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/food1.jpg">
			<h4>어느 멋진날</h4>
			<p>
			전복 버터구이, 전복밥, 홍게살덮밥, 새우장덮밥 등 다양한 해산물 요리를 맛볼 수 있는 기장 해안가의 인기 맛집<br/>
			넓은 주차장과 바다 뷰가 특징이며, 테이블 간격이 넓어 편안한 식사가 가능<br/>
			
			</p>		
			<a href="https://m.place.naver.com/restaurant/1633168333/home" target="_blank">식당주소</a>
		</div>
		
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/food2.jpg">
			<h4>파도정원 화덕생선구이 기장본점</h4>
			<p>
			신선한 생선과 정갈한 밑반찬이 특징인 한식 전문점<br/>
			화덕으로 구운 생선구이와 함께 들깨미역국, 갈치조림, 새우장 등 다양한 메뉴<br/>
			특히 강황솥밥과 홍국솥밥 등 건강한 밥 메뉴가 인기<br/>
			</p>
			<a href="https://map.naver.com/p/entry/place/1327095728?lng=129.2238723&lat=35.1975757&placePath=%2Fhome&entry=plt&searchType=place&c=15.00,0,0,0,dh" target="_blank">식당주소</a>
		</div>
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/food3.jpg">
			<h4>일광 바다 횟집</h4>
			<p>
			일광바다횟집은 신선한 해산물 요리와 멸치쌈밥으로 이름난 부산의 맛집<br/>
			멸치쌈밥은 매콤한 양념과 함께 상추, 다시마 쌈과 어우러져 특별한 맛을 선사<br/>
			도다리쑥국은 쑥 향과 탱글한 도다리 살이 조화를 이룬다<br/>
			</p>
			<a href="https://map.naver.com/p/entry/place/19387003?lng=129.2335011&lat=35.2609107&placePath=/home?from=map&fromPanelNum=1&additionalHeight=76&timestamp=202605030945&locale=ko&svcName=map_pcv5&entry=plt&searchType=place&c=15.00,0,0,0,dh" target="_blank">식당주소</a>
		</div>
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/food4.jpg">
			<h4>바다앤장어 기장점</h4>
			<p>강사님 여름 보신은 장으아입니까</p>
			<a href="https://map.naver.com/p/entry/place/1669714923?lng=129.2500028&lat=35.2725919&placePath=/home?from=map&fromPanelNum=1&additionalHeight=76&timestamp=202605030948&locale=ko&svcName=map_pcv5&entry=plt&searchType=place&c=15.00,0,0,0,dh" target="_blank">식당주소</a>
		</div>
	</div>

<% } else if ("cafe".equals(tab)) { %>

	<h3>카페정보</h3>

	<div class="gijang-list">
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/cafe1.jpg">
			<h4>칠암사계</h4>
			<p>여기 소금빵 진짜 개존맛탱구리</p>
			<a href="https://map.naver.com/p/entry/place/1101934691?lng=129.2591596&lat=35.2998247&placePath=/home?from=map&fromPanelNum=1&additionalHeight=76&timestamp=202605031002&locale=ko&svcName=map_pcv5&entry=plt&searchType=place&c=15.00,0,0,0,dh" target="_blank">카페주소</a>
		</div>
		
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/cafe2.jpg">
			<h4>웨이브온</h4>
			<p>
			경치 좋은 카페1 <br/>
			별채(개별룸)가 있어 편안한 휴식과 경치를 즐길 수 있다<br/>
			</p>
			<a href="https://map.naver.com/p/entry/place/859310081?lng=129.2697668&lat=35.3222748&placePath=/home?from=map&fromPanelNum=1&additionalHeight=76&timestamp=202605031003&locale=ko&svcName=map_pcv5&entry=plt&searchType=place&c=15.15,0,0,0,dh" target="_blank">카페주소</a>
		</div>
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/cafe3.jpg">
			<h4>헤이든카페</h4>
			<p>
			경치 좋은 카페2<br/>
			</p>
			<a href="https://map.naver.com/p/entry/place/1780456812?lng=129.2566999&lat=35.2824233&placePath=/photo&entry=plt&searchType=place&c=15.00,0,0,0,dh" target="_blank">카페주소</a>
		</div>
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/cafe4.jpg">
			<h4>OFF.O</h4>
			<p>
			경치 좋은 카페3<br/>
			</p>
			<a href="https://map.naver.com/p/entry/place/1812300797?lng=129.2438633&lat=35.2318402&placePath=/home?from=map&fromPanelNum=1&additionalHeight=76&timestamp=202605031003&locale=ko&svcName=map_pcv5&entry=plt&searchType=place&c=15.44,0,0,0,dh" target="_blank">카페주소</a>
		</div>
	</div>

<% } else if ("stay".equals(tab)) { %>

	<h3>숙박정보</h3>

	<div class="gijang-list">
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/stay1.jpg">
			<h4>숙박1</h4>
			<p>숙박 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">숙박주소</a>
		</div>
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/stay2.jpg">
			<h4>숙박2</h4>
			<p>숙박 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">숙박주소</a>
		</div>
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/stay3.jpg">
			<h4>숙박3</h4>
			<p>숙박 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">숙박주소</a>
		</div>
		<div class="gijang-item">
			<img src="/TeamPrj1/fff/gijang/stay4.jpg">
			<h4>숙박4</h4>
			<p>숙박 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">숙박주소</a>
		</div>
	</div>

<% } %>
