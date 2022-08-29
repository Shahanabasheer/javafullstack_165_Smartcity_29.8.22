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
	int user_id=Integer.parseInt(request.getParameter("user_id"));
	//System.out.println("User id"+user_id);
	int i = UserDao.updateUser(u,user_id);

	if (i > 0) {
		//System.out.println("User.."+i);
		response.sendRedirect("User_home.jsp");
	}

	else {
		// System.out.println("Error ");
		request.setAttribute("errorMsg", "Invalid User name");
		RequestDispatcher rd = request.getRequestDispatcher("/User_home.jsp");
		rd.forward(request, response);
	}
	%>
</body>
</html>