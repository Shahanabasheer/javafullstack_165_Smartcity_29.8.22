<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="test_smartcity.UserDao"%>
	<jsp:useBean id="u" class="test_smartcity.User"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />
	<%
	int i = UserDao.save(u);
	if (i > 0) {
	%>
	<script type="text/javascript">
		alert("You are successfully registered");
	</script>
	<%
	response.sendRedirect("Login.jsp");
	} else {
	response.sendRedirect("addUser_errorpage.jsp");
	}
	%>
</body>
</html>