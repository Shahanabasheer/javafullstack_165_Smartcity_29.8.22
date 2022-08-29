<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="test_smartcity.LibraryDao"%>

	<jsp:useBean id="l" class="test_smartcity.Library"></jsp:useBean>
	<jsp:setProperty property="*" name="l" />
	<%
	int library_id = Integer.parseInt(request.getParameter("Library_Id"));

	int i = LibraryDao.updateLibrary(l, library_id);
	if (i > 0) {

		response.sendRedirect("Admin_ViewMoreLibrary.jsp?Library_Id=" + library_id);
	} else {

		response.sendRedirect("Admin_UpdateLibrary.jsp?Library_Id=" + library_id);
	}
	%>
</body>
</html>