<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@ page import="test_smartcity.SchoolDao"%>
	<jsp:useBean id="s" class="test_smartcity.School"></jsp:useBean>
	<jsp:setProperty property="*" name="s" />

	<%
	String s_id = request.getParameter("S_Id");
	//System.out.println("User id.."+u_id);
	int sid = Integer.parseInt(s_id);
	
	int i = SchoolDao.deleteSchool(sid);
	if (i > 0) {

		response.sendRedirect("ViewSchool.jsp");
	}
	%>
</body>
</html>