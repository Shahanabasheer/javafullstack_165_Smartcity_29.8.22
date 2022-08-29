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
	 
	int i = SchoolDao.save(s);
	if (i > 0) {
		
		response.sendRedirect("ViewSchool.jsp");
	} else {

		response.sendRedirect("AddSchool.jsp");
	}
	%>

</body>
</html>