<%@page import="List_p.MenuList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%   
String cate = "관광지";

request.setAttribute("cate", "송도");
request.setAttribute("menuData", new MenuList().menuList(cate));
request.setAttribute("mainUrl", "/forward/guide/songdoView.jsp");
request.setAttribute("service", "송도소개");
request.setAttribute("mainData",
		"송도는 부산에서 바다 풍경을 가까이 즐길 수 있는 대표적인 여행지다. "
		+ "송도해수욕장과 해상케이블카, 구름산책로가 이어져 있어 바다 위를 걷는 듯한 느낌을 받을 수 있고, 주변에는 식당과 카페도 많아 여유롭게 둘러보기 좋다."
);


%>

<jsp:forward page="/forView/guidetemplate.jsp"></jsp:forward>