<%@page import="List_p.MenuList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String cate = "관광지";

	request.setAttribute("cate", "송도");
	request.setAttribute("menuData", new MenuList().menuList(cate));
	request.setAttribute("mainUrl", "/forward/guide/songdoView.jsp");
	request.setAttribute("tab", "food");
%>

<jsp:forward page="../../../forView/guidetemplate.jsp"/>
