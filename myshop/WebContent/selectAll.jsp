<%@page import="product.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
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
	<jsp:setProperty property="*" name="dto" />
	<nav class="navbar navbar-expand-sm bg-dark">
	</nav>
	<div>
		<ul>
		<li>
			<table >
				<tr>
					<td id="mainT">아이디</td>
					<td id="mainT">상품제목</td>
					<td id="mainT">상품내용</td>
					<td id="mainT">가격</td>
				</tr>
			</table>
			<hr>
		</li>
			<%
				ProductDAO dao = new ProductDAO();
				ArrayList<ProductDTO> list = dao.selectAll();
				for (int i = 0; i < list.size(); i++) {
					dto = list.get(i);
			%>
			<li>
			
				<table>
					<tr>
					<form action="update.jsp">
						<td id="tbId"><input type="text" value="<%=dto.getPid()%>" readonly="readonly" name="pid"></td>
						<td id="tbTitle"><input type="text" value="<%=dto.getPtitle()%>" readonly="readonly" name="ptitle"></td>
						<td id="tbContent" ><input type="text" value="<%=dto.getPcontent()%>" readonly="readonly" name="pcontent"></td>
						<td id="tbPrice" ><input type="text" value="<%=dto.getPrice()%>" readonly="readonly" name="price"></td>
						<td><a href="update.jsp"><button id="update" class="btn btn-outline-dark" >수정</button></a></td>
						</form>
						<td><a href="delete.jsp?pid=<%=dto.getPid()%>"><button class="btn btn-outline-dark">삭제</button></a></td>
					</tr>
				</table>
			</li>
			<%
				}
			%>
		</ul>
		
		<a href="insert.html"><button class="btn btn-outline-dark">상품 등록</button></a>
		<a href="select.jsp"><button class="btn btn-outline-dark">상품 검색</button></a>
		
		
	</div>
</body>
</html>