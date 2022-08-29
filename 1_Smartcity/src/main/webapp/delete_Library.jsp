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
	String l_id = request.getParameter("L_Id");
	//System.out.println("User id.."+u_id);
	int lid = Integer.parseInt(l_id);
	
	int i = LibraryDao.deleteLibrary(lid);
	if (i > 0) {

		response.sendRedirect("ViewLibrary.jsp");
	}
	%>
</body>
</html>