<%@page import="basic_p.MenuDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<MenuDTO> list = List.of(
        new MenuDTO("레드셔츠","img/sun1.jpg"),
        new MenuDTO("천화서고대공자","img/sun2.jpg")
    );
%>
<html>
<head>
<meta charset="UTF-8">
<title>sun</title>
</head>
<body>
	<h2>일요일 웹툰</h2>
	
	<div>
<%
    for(MenuDTO w : list){
%>
    <div>
        <img src="/kgsPrj/<%=w.getTitle()%>" width="100"><br>
        <%=w.getTitle()%>
    </div>
<%
    }
%>
</div>
</body>
</html>