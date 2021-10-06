<%@ page language="java" contentType="text/html;charset=utf-8" %>
<html>
	<head>
		<title></title>
	</head>
	<body>
		<%
			String[] hobby = request.getParameterValues("hobby");
			out.println(hobby + "\n");
			out.println(hobby.length + "\n");
			for(int i = 0; i < hobby.length; i++) {
				out.println(hobby[i]);
			}
		%>
	</body>
</html>