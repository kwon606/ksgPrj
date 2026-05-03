<%@page import="basic_p.MenuDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<MenuDTO> list = List.of(
        new MenuDTO("나노마신","img/thu1.jpg"),
        new MenuDTO("재벌집막내아들","img/thu2.jpg")
    );
%>
<html>
<head>
<meta charset="UTF-8">
<title>thu</title>
</head>
<body>
	<h2>목요일 웹툰</h2>
	
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