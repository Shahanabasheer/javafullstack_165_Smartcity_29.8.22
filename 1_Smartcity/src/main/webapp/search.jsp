<%@ page import="java.sql.*"%>

<head>
<style type="text/css">
form, p {
	color: white;
}

#list {
	color: white;
	width: 200px;
}

#list a {
	color: white;
	margin-left: 10px;
}
</style>

</head>
<%
String name = request.getParameter("val");
String catName = (String) session.getAttribute("category");
//System.out.println("Search....." + name);
if (name == null || name.trim().equals("")) {
	out.print("<p>Please enter name!</p>");
} else {
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project", "root", "");

		PreparedStatement ps = null;
		ResultSet rs = null;
		System.out.println("Nmae " + catName);
		if (catName == "School") {
	ps = con.prepareStatement(
			"select School_id,School_name from add_schools where School_name like '" + name + "%'");
		}

		else if (catName == "College") {
	ps = con.prepareStatement(
			"select college_id,college_name from add_college where college_name like '" + name + "%'");
		} else if (catName == "Library") {
	ps = con.prepareStatement(
			"select library_id,library_name from add_library where library_name like '" + name + "%'");
		}
		rs = ps.executeQuery();

		if (!rs.isBeforeFirst()) {
	out.println("<p>No Record Found!</p>");
		} else {
%>

<table id="list">

	<%
	while (rs.next()) {
		int id = rs.getInt(1);
		String fname = rs.getString(2);
	%>
	<tr>

		<%
		if (session.getAttribute("user") == "Administrator") {
			switch (catName) {
			case "School":
		%>
		<td><a href="Admin_ViewMoreSchool.jsp?School_Id=<%=id%>"><%=fname%></a></td>
		<%
		;
			break;
		case "College":
		%>
		<td><a href="Admin_ViewMoreCollege.jsp?College_Id=<%=id%>"><%=fname%></a></td>
		<%
		;
			break;
		case "Library":
		%>
		<td><a href="Admin_ViewMoreLibrary.jsp?Library_Id=<%=id%>"><%=fname%></a></td>
		<%
		;
			break;

		}
		%>
		<td><a href="Admin_ViewMoreSchool.jsp?School_Id=<%=id%>"><%=fname%></a></td>
		<%
		} else {
		switch (catName) {
		case "School":
		%><td><a
			href="User_ViewMoreSchool.jsp?School_Id=<%=id%>"><%=fname%></a></td>
		<%
		;
			break;
		case "college":
		%><td><a
			href="User_ViewMoreCollege.jsp?College_Id=<%=id%>"><%=fname%></a></td>
		<%
		;
			break;
		case "Library":
		%><td><a
			href="User_ViewMoreLibrary.jsp?Library_Id=<%=id%>"><%=fname%></a></td>
		<%
		;
			break;

		}

		}
		%>


	</tr>
	<%
	}
	%>

</table>
<%
} //end of else for rs.isBeforeFirst  
con.close();

} catch (Exception e) {
out.print(e);
}
}
%>