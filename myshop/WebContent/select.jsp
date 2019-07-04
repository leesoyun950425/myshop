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
<nav class="navbar navbar-expand-sm bg-dark"></nav>
<div>
	<form action="select2.jsp">
	검색할 아이디 : <input type="text" name="inputPid"><br>
	<button type="submit" class="btn btn-outline-dark">검색</button>
	</form>
</div>	
</body>
</html>