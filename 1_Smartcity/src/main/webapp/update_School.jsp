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
	int school_id = Integer.parseInt(request.getParameter("School_Id"));

	int i = SchoolDao.updateSchool(s, school_id);
	if (i > 0) {

		response.sendRedirect("Admin_ViewMoreSchool.jsp?School_Id="+school_id);
	} else {

		response.sendRedirect("Admin_UpdateSchool.jsp?School_Id="+school_id);
	}
	%>
</body>
</html>