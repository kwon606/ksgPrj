<%@page import="basic_p.MenuDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
		List<MenuDTO> list = List.of(
        new MenuDTO("나혼자만렙뉴비","img/fri1.jpg"),
        new MenuDTO("외모지상주의","img/fri2.jpg")
    );
%>
<html>
<head>
<meta charset="UTF-8">
<title>fri</title>
<style>
div{
  display: block;      
  gap: 40px;
  padding: 30px 0px;
}
</style>


</head>
<body>
	<h2>금요일 웹툰</h2>
	
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