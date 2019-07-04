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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>

	<%
		String pid = request.getParameter("pid");
		String ptitle = request.getParameter("ptitle");
		String pcontent = request.getParameter("pcontent");
		String price = request.getParameter("price");
	%>
	<nav class="navbar navbar-expand-sm bg-dark"></nav>
	<div>
	<form action="update2.jsp">
		상품 아이디 : <input type="text" readonly="readonly" value="<%=pid%>" name="pid"><br>
		상품 제목 : <input type="text" readonly="readonly" value="<%=ptitle%>" name="ptitle"><br>
		상품 설명 : <input type="text" name="pcontent" value="<%=pcontent%>" name="pcontent"><br>
		상품 수정 : <input type="text" name="price" value="<%=price%>" name="price"><br>
		<button type="submit" class="btn btn-outline-dark">수정완료</button>
	</form>
	<a href="selectAll.jsp"><button type="button" class="btn btn-outline-dark">메인으로</button></a>
	</div>
</body>
</html>