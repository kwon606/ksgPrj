<%@page import="basic_p.MenuDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<MenuDTO> list = List.of(
        new MenuDTO("절대검감","img/mon1.jpg"),
        new MenuDTO("아포칼립스속에집을숨김","img/mon2.jpg")
        
    );
%>
<html>
<head>
<meta charset="UTF-8">
<title>mon</title>
</head>
<body>
	<h2>월요일 웹툰</h2>
	
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