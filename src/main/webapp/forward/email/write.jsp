
<%@page import="basic_p.MenuListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cate = "email";
	request.setAttribute("cate",cate);
	request.setAttribute("menuData",new MenuListService().menuList(cate));
	request.setAttribute("mainUrl","email/list1/write.jsp");
    request.setAttribute("mainData",
            "<textarea name='writeInfo' rows='15' cols='80'>문구입력</textarea>" +
            "<form onsubmit='return showAlert()' style='text-align:center;'>" +
            "<input type='submit' value='보내기' style='display:block; margin:0 auto;'>" +
            "</form>" +
            "<script>" +
            "function showAlert(){ alert('전송 완료'); return false; }" +
            "</script>"
        );
%>  
<jsp:forward page="/forView/emailTemplate.jsp"/>