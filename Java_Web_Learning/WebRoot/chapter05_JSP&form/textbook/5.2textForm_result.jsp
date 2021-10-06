<%@ page language="java" contentType="text/html;charset=utf-8" %>
<html>
	<body>
		<%
			String account = request.getParameter("account");
			String password = request.getParameter("password");
			out.println("输入的账号为：" + account);
			out.println("输入的密码为：" + password);
		%>
	</body>
</html>