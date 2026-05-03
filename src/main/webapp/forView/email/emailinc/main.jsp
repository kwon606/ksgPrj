<%@page import="basic_p.MenuDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cate = (String)request.getAttribute("cate");
	List<MenuDTO> menuData = (List<MenuDTO>)request.getAttribute("menuData");
%>
<aside>    
<% for(MenuDTO dto : menuData){ %>
<a href="<%=dto.getUrl() %>"><%=dto.getTitle() %></a>
<%} %>
</aside>
