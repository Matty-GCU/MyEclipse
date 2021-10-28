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
		//Java风格的一种注释，它不会被发送到客户端
		/* Java风格的另一种注释，它不会被发送到客户端 */
		out.print("测试不同的注释方式");
	%>
	<br>
	<!-- HTML风格注释，它会被发送到客户端 -->
	<%-- JSP风格的注释，它不会被发送到客户端 --%>
</body>
</html>