<%@page import="basic_p.MenuDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	String cate = "webtoon";
	if(request.getParameter("cate")!=null){
		cate = request.getParameter("cate");
	}
	
	String service = "mon";
	if(request.getParameter("service")!=null){
		service = request.getParameter("service");
	}
	
	String serviceUrl = "/"+cate+"/"+service+".jsp";
	
	Map<String,List<MenuDTO>> menuData = Map.of(
			"webtoon",
			List.of(
				new MenuDTO("mon","월요일"),
				new MenuDTO("tue","화요일"),
				new MenuDTO("wed","수요일"),
				new MenuDTO("thu","목요일"),
				new MenuDTO("fri","금요일"),
				new MenuDTO("sat","토요일"),
				new MenuDTO("sun","일요일")
			)
		);
		
		request.setAttribute("cate", cate);
    	request.setAttribute("menuData", menuData.get(cate));
	
		
%>
<title>웹툰 사이트</title>
</head>
<body>
	<h1>웹툰</h1>
	<jsp:include page="/forView/webInc/webtoonStyle.jsp"/>
	<table border="">
<tr>
    <td colspan="2">
        <jsp:include page="/forView/webInc/header.jsp"/>
    </td>
</tr>

<tr>
    <td width="200">
        <jsp:include page="/forView/webInc/menu.jsp"/>
    </td>

    <td width="700">
        <jsp:include page="<%=serviceUrl %>"/>
    </td>
</tr>

<tr>
    <td colspan="2">
        <jsp:include page="/forView/webInc/footer.jsp"/>
    </td>
</tr>
</table>
</body>
</html>