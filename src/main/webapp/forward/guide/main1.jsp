<%@page import="List_p.MenuList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	
	
<%
	String cate = "관광지";
	request.setAttribute("cate","cate");
	request.setAttribute("menuData",new MenuList().menuList(cate));
	request.setAttribute("mainUrl","info/menu1.jsp");
	request.setAttribute("mainData","관광지 정보 낼거임");
%>    









<jsp:forward page="/forView/guidetemplate.jsp"/>