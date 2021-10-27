<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<html>
	<head>
		<title>Insert title here</title>
	</head>
	<body>
		<%
			ArrayList<String> books = new ArrayList<>();
			session.setAttribute("book", books);
			books.add("三国演义");
			books.add("水浒传");
			books.add("西游记");
		%>
		<a href="8.1.2cart3_2.jsp">查看购物车</a>
	</body>
</html>