
<%@page import="basic_p.MenuListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cate = "email";
	request.setAttribute("cate",cate);
	request.setAttribute("menuData",new MenuListService().menuList(cate));
	request.setAttribute("mainUrl","email/list1/trash.jsp");
	  request.setAttribute("mainData",
		        "<div id='folderArea'>" +
		        "<ul style='list-style-type:none; padding-left:0;'>" +
		        "<li>예비군훈련</li>" +
		        "<li>전기세</li>" +
		        "<li>휴대폰요금</li>" +
		        "<li>광고메일</li>" +
		        "</ul>" +
		        "<button onclick='deleteAll()'>모두 버리기</button>" +
		        "</div>" +
		        "<script>" +
		        "function deleteAll(){ " +
		        "   alert('모두 버리기 완료'); " +
		        "   document.getElementById('folderArea').innerHTML = ''; " +
		        "}" +
		        "</script>"
		    );
%>    
<jsp:forward page="/forView/emailTemplate.jsp"/>