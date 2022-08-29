<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="test_smartcity.CollegeDao"%>
	<jsp:useBean id="c" class="test_smartcity.College"></jsp:useBean>
	<jsp:setProperty property="*" name="c" />

	<%
	String c_id = request.getParameter("C_Id");
	//System.out.println("User id.."+u_id);
	int cid = Integer.parseInt(c_id);
	
	int i = CollegeDao.deleteCollege(cid);
	if (i > 0) {

		response.sendRedirect("ViewCollege.jsp");
	}
	%>
</body>
</html>