<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Delete MSg
	<%@ page import="test_smartcity.MessageDao"%>
	<jsp:useBean id="msg" class="test_smartcity.Message"></jsp:useBean>
	<jsp:setProperty property="*" name="msg" />

	<%
	String m_id = request.getParameter("Msg_Id");
	System.out.println("User id.." + m_id);

	String[] str = m_id.replaceAll("\\[", "").replaceAll("]", "").split(",");

	int[] msgId = new int[str.length];

	for (int i = 0; i < str.length; i++) {
		msgId[i] = Integer.valueOf(str[i]);
	}
	 int j = MessageDao.deleteMsg(msgId);
	if (j > 0) {

		response.sendRedirect("Admin_Inbox.jsp");
	} 
	%>
</body>
</html>