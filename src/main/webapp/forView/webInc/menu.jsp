<%@page import="basic_p.MenuDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div{
  display: flex;
  justify-content: center;   
  align-items: center;       
  gap: 40px;
  padding: 30px 0px;
}
</style>
</head>
<body>
	<%
    List<MenuDTO> list = (List<MenuDTO>)request.getAttribute("menuData");
    String cate = (String)request.getAttribute("cate");

    for(MenuDTO m : list){
%>
    <div>
        <a href="webMain.jsp?cate=<%=cate%>&service=<%=m.getUrl()%>">
            <%=m.getTitle()%>
        </a>
    </div>
    
<%
    }
%>
</body>
</html>