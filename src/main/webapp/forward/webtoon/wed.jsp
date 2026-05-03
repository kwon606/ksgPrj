<%@page import="basic_p.MenuDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<MenuDTO> list = List.of(
        new MenuDTO("캐슬","img/wed1.jpg"),
        new MenuDTO("화산귀환","img/wed2.jpg")
    );
%>
<html>
<head>
<meta charset="UTF-8">
<title>wed</title>
</head>
<body>
	<h2>수요일 웹툰</h2>
	
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