<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String mainUrl = (String)request.getAttribute("mainUrl");
String cate = (String)request.getAttribute("cate");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template</title>
<style>


	
	tr > td:first-child {
    width: 1000px;
    height: 100px;
    text-align: center;
	}
	
	tr:nth-child(2) > td:first-child {
  	 height: 300px;
  	 width: 200px;
	}
	tr:nth-child(3) > td:first-child {
  	 height: 100px;
	}
</style>
</head>
<body>
<h1>emailtemplate</h1>
<table border="">
	<tr>
		<td colspan="2">
		<jsp:include page="email/emailinc/header.jsp"/>
		</td>
	</tr>
	<tr>
		<td>
		<jsp:include page="email/emailinc/main.jsp"/>
		</td>
		<td >
		<jsp:include page="<%=mainUrl%>"/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<jsp:include page="inc/footer.jsp"/>
		</td>
	</tr>
</table>
</body>
</html>