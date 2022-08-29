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
	String u_id = request.getParameter("U_Id");
	//System.out.println("User id.."+u_id);
	int uid = Integer.parseInt(u_id);
	int i = UserDao.delete(uid);
	System.out.println("Delete..");
	if (i > 0) {

		response.sendRedirect("Admin_ViewUsers.jsp");
	} else {

		response.sendRedirect("Admin_ViewUsers.jsp");
	}
	//response.sendRedirect("Admin_ViewUsers.jsp");
	%>
</body>
</html>