<%@page import="basic_p.MenuDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<MenuDTO> list = List.of(
        new MenuDTO("킬러배드로","img/sat1.jpg"),
        new MenuDTO("절대군림","img/sat2.jpg")
    );
%>
<html>
<head>
<meta charset="UTF-8">
<title>sat</title>
</head>
<body>
	<h2>토요일 웹툰</h2>
	
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