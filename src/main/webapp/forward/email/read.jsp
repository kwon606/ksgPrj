
<%@page import="basic_p.MenuListService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cate = "email";

	request.setAttribute("cate",cate);
	request.setAttribute("menuData",new MenuListService().menuList(cate));
	request.setAttribute("mainUrl","email/list1/read.jsp");
	request.setAttribute("mainData","<a href='email/list1/readData.jsp'>읽기 전용 data</a>");
%>    
<jsp:forward page="/forView/emailTemplate.jsp"/>