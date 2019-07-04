<%@page import="product.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="myshop.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<jsp:useBean id="dto" class="product.ProductDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<%
	String inputPid = request.getParameter("inputPid");
	ProductDAO dao = new ProductDAO();
	dto = dao.select(inputPid);
%>
<nav class="navbar navbar-expand-sm bg-dark"></nav>
<div>
	검색한 결과 입니다.<br>
	아이디 : <input type="text" value="<%=dto.getPid()%>"><br>
	상품제목 : <input type="text" value="<%=dto.getPtitle()%>"><br>
	상품설명 : <input type="text" value="<%=dto.getPcontent()%>"><br>
	가격 : <input type="text" value="<%=dto.getPrice()%>"><br>
</div>
</body>
</html>