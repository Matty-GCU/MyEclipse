<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String str = "12";
			int number = Integer.parseInt(str);
		%>
		12的平方为：<%=number*number%>
		<hr>
		<a href="4.6urlP2.jsp?number=<%=number%>">访问4.6urlP2.jsp</a>
	</body>
</html>