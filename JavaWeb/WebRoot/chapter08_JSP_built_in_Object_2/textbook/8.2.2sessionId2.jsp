<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String id = session.getId();
			out.println(id);
		%>
	</body>
</html>