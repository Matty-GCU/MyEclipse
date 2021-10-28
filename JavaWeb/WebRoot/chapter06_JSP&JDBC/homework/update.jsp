<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
	<head>
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String oldName = request.getParameter("oldName");
			String newName = request.getParameter("newName");
			String newId = request.getParameter("newId");
			if("".equals(oldName)) {
				out.println("修改失败！");
				return;
			}
			else if("".equals(newName) && "".equals(newId)) {
				out.println("修改失败！");
				return;
			}
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students", "root", "123456");
			Statement stat = conn.createStatement();
			String sql = null;
			if("".equals(newName)) {
				sql = "UPDATE students_for_javaweb SET id = '" + newId + "' WHERE name = '" + oldName + "'";
			}
			else if("".equals(newId)) {
				sql = "UPDATE students_for_javaweb SET name = '" + newName + "' WHERE name = '" + oldName + "'";
			}
			else {
				sql = "UPDATe students_for_javaweb SET name = '" + newName + "', id = '" + newId + "' WHERE name = '" + oldName + "'";
			}
			int count = stat.executeUpdate(sql);
			stat.close();
			conn.close();
			out.println(count + "row(s) affected.");
		%>
		<form action="updatePage.html">
			<input type="submit" value="继续修改">
		</form>
	</body>
</html>