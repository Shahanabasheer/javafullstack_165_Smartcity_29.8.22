<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="School_style.css">

<style type="text/css">
.admin_viewSchool {
	border-style: groove;
	border-color: white;
	margin: 30px;
	margin-left: 18%;
}

#sessions {
	display: none;
}

#viewSchool_search {
	margin-top: 20px;
	margin-left: 20px;
	width: 200px;
	position: relative;
	z-index: 3;
}

.logo {
	margin-left: 25px;
	margin-top: 10px;
	margin-right: 25px;
	border-radius: 8px;
	padding: 5px;
	border: 1px solid #ddd;
}

.viewSchool_div1 {
	margin-top: 10px;
	font-family: serif;
	font-size: 20px;
	font-weight: bold;
	color: white;
}

#viewSchool_sp1 label {
	display: inline-block;
	margin-right: 100px;
}

#viewSchool_sp2 label {
	display: inline-block;
	margin-right: 200px;
}

#viewSchool_sp3 label {
	display: inline-block;
	margin-right: 200px;
}

#logo, #viewSchoolDiv1 {
	display: inline-table;
	vertical-align: top;
}

#viewSchoolDiv2 a {
	margin-left: 15px;
	margin-top: 40px;
	width: 120px;
	font-size: 15px;
}
</style>

<script>
	var request = new XMLHttpRequest();
	function searchData() {

		var data = document.searchFM.search.value;
		var url = "search.jsp?val=" + data;

		try {
			request.onreadystatechange = function() {
				//alert("Search..");
				if (request.readyState == 4) {
					var val = request.responseText;
					document.getElementById('searchRS').innerHTML = val;
				}
			}
			request.open("GET", url, true);
			request.send();

		} catch (e) {
			alert("Unable to connect to server");
		}
		
	}
</script>

<title>View School</title>
</head>
<body id="body_viewSchool">

	<%@ page import="test_smartcity.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	List<School> list = SchoolDao.getAllSchool();
	request.setAttribute("list", list);

	School sc = new School();
	%>

	<div class="admin_edu_head">
		<jsp:include page="Header.jsp"></jsp:include>
	</div>
	 <div id="sessions">
		<%
		if (session.getAttribute("user") == null || session.getAttribute("user") == "") {
			response.sendRedirect("Login.jsp");
		}
		%>
		<%=session.getAttribute("user")%>
	</div> 
	<% session.setAttribute("category", "School");
	%>
	<h3>
		<strong>Schools </strong>
	</h3>
	<ul class=" nav nav-pills navbar-right" id="logoutbar">
		<li class="nav-item"><a href="AboutUs.jsp">About Us</a></li>
		<li class="nav-item"><a href="ContactUs.jsp">Contact Us</a></li>
		<li class="nav-item"><a href="Logout.jsp">Logout</a></li>

	</ul>
	<div id="viewSchool_search">
		<form name="searchFM">
			<div class="form-group has-feedback has-search">

				<span class="form-control-feedback"></span> <input type="text"
					class="form-control" placeholder="Search" name="search" id="search"
					onkeyup="searchData()">

			</div>
		</form>
		<span id="searchRS"></span>
	</div>
	<c:forEach items="${list}" var="s">


		<div class="admin_viewSchool" id="">
			<div class="logo" id="logo">
				<label for="schoollogo"><img src="images/logo.jpg"
					alt="School logo" width="70" height="90"></label>
			</div>
			<div class="viewSchool_div1" id="viewSchoolDiv1"
				name="viewSchoolDiv1">
				<label for="School_id"><input type="hidden" id="School_Id"
					name="School_Id" value="${s.getSchool_id()}"></label> <label
					for="schoolname" id="SnameLabel">${s.getSchoolName()}</label><br>
				<span id="viewSchool_sp1"><label for="schooltype">${s.getSchoolType()}</label><label
					for="schoolcurriculum">${s.getSchoolCurriculum()}</label> <label
					for="schoolgrades">${s.getSchoolGrades()}</label></span><br> <span
					id="viewSchool_sp2"> <label for="schoollocation">${s.getSchoolPlace()}</label>
					<label for="schoolphone">Ph: ${s.getSchoolPhone()}</label>
				</span><br> <span id="viewSchool_sp3"><label for="schoolemail">E-mail:
						${s.getSchoolEmail()}</label> <label for="schoolwebsite">${s.getSchoolWebsite()}</label></span>
			</div>
			<div class="viewSchool_div2" id="viewSchoolDiv2">

				<label for="viewMore"> <%
 if (session.getAttribute("user") == "Administrator") {
 %> <a href="Admin_ViewMoreSchool.jsp?School_Id=${s.getSchool_id()}">
						<input type="button" name="viewMore" id="view_more"
						value="View More">
				</a> <%
 } else {
 %> <a href="User_ViewMoreSchool.jsp?School_Id=${s.getSchool_id()}"><input
						type="button" name="viewMore" id="view_more" value="View More"></a>
					<%
					}
					%>
				</label>
			</div>
		</div>
	</c:forEach>




	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>