<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	.info-tabs {
		margin-bottom: 16px;
	}

	.info-list {
		display: grid;
		grid-template-columns: repeat(2, 260px);
		gap: 24px;
	}

	.info-item img {
		width: 260px;
		height: 170px;
		object-fit: cover;
	}

	.info-item h4 {
		margin: 8px 0 6px;
	}

	.info-item p {
		margin: 0 0 8px;
	}
</style>

<div class="info-tabs">
    <a href="/kgsPrj/forward/guide/songdo/tour.jsp">관광지정보</a> |
    <a href="/kgsPrj/forward/guide/songdo/food.jsp">식당정보</a> |
    <a href="/kgsPrj/forward/guide/songdo/cafe.jsp">카페정보</a> |
    <a href="/kgsPrj/forward/guide/songdo/stay.jsp">숙박정보</a>
</div>

<hr>

<%
	String tab = (String)request.getAttribute("tab");
%>

<% if (tab == null) { %>

	<h3><%=request.getAttribute("service") %></h3>

	<img src="/kgsPrj/img/songdo/songdo1.jpg" width="300">
	<img src="/kgsPrj/img/songdo/songdo2.jpg" width="300" height="226">

	<p><%=request.getAttribute("mainData") %></p>

<% } else if ("tour".equals(tab)) { %>

	<h3>관광지정보</h3>

	<div class="info-list">
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/tour1.jpg">
			<h4>관광지1</h4>
			<p>관광지 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">관광지주소</a>
		</div>
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/tour2.jpg">
			<h4>관광지2</h4>
			<p>관광지 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">관광지주소</a>
		</div>
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/tour3.jpg">
			<h4>관광지3</h4>
			<p>관광지 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">관광지주소</a>
		</div>
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/tour4.jpg">
			<h4>관광지4</h4>
			<p>관광지 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">관광지주소</a>
		</div>
	</div>

<% } else if ("food".equals(tab)) { %>

	<h3>식당정보</h3>

	<div class="info-list">
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/food1.jpg">
			<h4>식당1</h4>
			<p>식당 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">식당주소</a>
		</div>
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/food2.jpg">
			<h4>식당2</h4>
			<p>식당 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">식당주소</a>
		</div>
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/food3.jpg">
			<h4>식당3</h4>
			<p>식당 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">식당주소</a>
		</div>
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/food4.jpg">
			<h4>식당4</h4>
			<p>식당 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">식당주소</a>
		</div>
	</div>

<% } else if ("cafe".equals(tab)) { %>

	<h3>카페정보</h3>

	<div class="info-list">
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/cafe1.jpg">
			<h4>카페1</h4>
			<p>카페 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">카페주소</a>
		</div>
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/cafe2.jpg">
			<h4>카페2</h4>
			<p>카페 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">카페주소</a>
		</div>
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/cafe3.jpg">
			<h4>카페3</h4>
			<p>카페 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">카페주소</a>
		</div>
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/cafe4.jpg">
			<h4>카페4</h4>
			<p>카페 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">카페주소</a>
		</div>
	</div>

<% } else if ("stay".equals(tab)) { %>

	<h3>숙박정보</h3>

	<div class="info-list">
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/stay1.jpg">
			<h4>숙박1</h4>
			<p>숙박 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">숙박주소</a>
		</div>
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/stay2.jpg">
			<h4>숙박2</h4>
			<p>숙박 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">숙박주소</a>
		</div>
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/stay3.jpg">
			<h4>숙박3</h4>
			<p>숙박 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">숙박주소</a>
		</div>
		<div class="info-item">
			<img src="/kgsPrj/img/songdo/stay4.jpg">
			<h4>숙박4</h4>
			<p>숙박 간단 설명 들어갈 부분</p>
			<a href="https://map.naver.com/" target="_blank">숙박주소</a>
		</div>
	</div>


<% } %>
