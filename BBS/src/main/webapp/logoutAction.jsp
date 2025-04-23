<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>첫 번째 - JSP 게시판 웹 사이트(로그아웃 기능)</title>
</head>
<body>
	<%
		session.invalidate(); // 세션을 빼앗아 로그아웃하게 함
	%>
	<script>
		location.href = 'main.jsp';
	</script>
</body>
</html>