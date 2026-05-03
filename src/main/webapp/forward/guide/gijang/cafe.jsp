<%@page import="List_p.MenuList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cate = "관광지";
	request.setAttribute("cate", "기장");
	request.setAttribute("menuData", new MenuList().menuList(cate));
	request.setAttribute("mainUrl", "/forView/info/gijangView.jsp");
	request.setAttribute("tab", "cafe");
%>
<jsp:forward page="../../../forView/template.jsp"/>
