<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<html>
	<head>
		<title>Insert title here</title>
		<meta charset="utf-8">
		<style type="text/css">
			form{
				display: inline-block;
			}
		</style>
	</head>
	<body>
		<%
			String book_id = request.getParameter("book_id");
			ArrayList<String> books = (ArrayList<String>) session.getAttribute("books");
			if(book_id != null) {
				if(books == null) {
					books = new ArrayList<>();
					session.setAttribute("books", books);
				}
				books.add(book_id);
			}
		%>
		<a href="8.99.1hw1_book_history.jsp">跳转到历史图书选购页面</a><br>
		计算机书c01，价格10.9<form action="#" method="post"><input name="book_id" type="hidden" value="c01"><input type="submit" value="加入购物车"></form><br>
		计算机书c02，价格27.5<form action="#" method="post"><input name="book_id" type="hidden" value="c02"><input type="submit" value="加入购物车"></form><br>
		计算机书c03，价格59.9<form action="#" method="post"><input name="book_id" type="hidden" value="c03"><input type="submit" value="加入购物车"></form><br>
		<%
			out.println("您的购物车: <br>");
			if(books != null) {
				for(String i: books) {
					out.println(i + "<br>");
				}
			}
		%>
	</body>
</html>