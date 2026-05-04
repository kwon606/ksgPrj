<%@page import="basic_p.MenuDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<MenuDTO> list = List.of(
        new MenuDTO("괴력난신","img/tue1.jpg"),
        new MenuDTO("사신소년","img/tue2.jpg")
    );
%>
<html>
<head>
<meta charset="UTF-8">
<title>tue</title>
<style>
div{
  display: block;      
  gap: 40px;
  padding: 30px 0px;
}
</style>

</head>
<body>
	<h2>화요일 웹툰</h2>
	
	<div>
<%
    for(MenuDTO w : list){
%>
    <div>
        <img src="/kgsPrj/<%=w.getTitle()%>" width="100"><br>
        <a href=""><%=w.getUrl()%></a>
    </div>
<%
    }
%>
</div>
</body>
</html>