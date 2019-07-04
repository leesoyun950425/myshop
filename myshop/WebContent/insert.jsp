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
	ProductDAO dao = new ProductDAO();
	dao.insert(dto);
%>
<nav class="navbar navbar-expand-sm bg-dark"></nav>
<div>
<h1>상품 등록 완료!!</h1>
<a href="selectAll.jsp"><button type="button" class="btn btn-outline-dark">메인으로</button></a>
</div>
</body>
</html>