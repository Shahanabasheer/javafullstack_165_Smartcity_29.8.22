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
	int college_id = Integer.parseInt(request.getParameter("College_Id"));

	int i = CollegeDao.updateCollege(c, college_id);
	if (i > 0) {

		response.sendRedirect("Admin_ViewMoreCollege.jsp?College_Id="+college_id);
	} else {

		response.sendRedirect("Admin_UpdateCollege.jsp?College_Id="+college_id);
	}
	%>
</body>
</html>