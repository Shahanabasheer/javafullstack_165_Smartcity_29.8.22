<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="test_smartcity.MessageDao"%>
	<jsp:useBean id="msg" class="test_smartcity.Message"></jsp:useBean>
	<jsp:setProperty property="*" name="msg" />
	<%
	String Education_Name = request.getParameter("Edu_name");
	String catName = (String) session.getAttribute("category");
	String Cat_id = (String) session.getAttribute("id");

	int id = Integer.parseInt(Cat_id);

	//System.out.println("School id "+id);

	//System.out.println("Catogory:"+catName);
	//int s_id=Integer.parseInt(request.getParameter("School_Id"));
	//System.out.println("school " + catName);

	int i = MessageDao.save(msg, Education_Name, catName);
	if (i > 0) {
	%>
	<%
	if (catName == "School") {
	%>
	<jsp:forward page="User_ViewMoreSchool.jsp">
		<jsp:param value="<%=id%>" name="School_Id" />
	</jsp:forward>
	<%
	} else if (catName == "College") {
	%>

	<jsp:forward page="User_ViewMoreCollege.jsp">
		<jsp:param value="<%=id%>" name="College_Id" />
	</jsp:forward>
	<%
	} else if (catName == "Library") {
	%>
	<jsp:forward page="User_ViewMoreLibrary.jsp">
		<jsp:param value="<%=id%>" name="Library_Id" />
	</jsp:forward>
	<%
	}
	%>
	<%
	} else {
	response.sendRedirect("addCollege_errorpage_t.jsp");
	}
	%>
</body>
</html>