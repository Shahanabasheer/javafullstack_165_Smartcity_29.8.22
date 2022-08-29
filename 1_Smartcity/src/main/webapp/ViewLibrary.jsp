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
<link rel="stylesheet" href="Library_style.css">

<style type="text/css">
#body_viewLibrary h3 {
	line-height: 40px;
	font-size: 30px;
	margin: 0;
	margin-left: 15px;
	color: white;
	width: 40%;
	text-align: left;
	text-shadow: 2px 2px 5px;
}

#sessions {
	display: none;
}
.admin_viewLibrary {
	border-style: groove;
	border-color: white;
	margin: 30px;
	margin-left: 10%;
}

#sessions {
	display: none;
}

#logoutbar {
	line-height: 30px;
	margin-right: 10px;
	margin-left: 70%;
	margin-top: 0;
	position: absolute;
	z-index: 2;
}

#logoutbar a {
	display: inline-block;
	font-family: serif;
	font-size: 20px;
	color: white;
}

#logoutbar a:hover {
	background-color: #008080;
}

#viewLibrary_search {
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

.viewLibrary_div1 {
	margin-top: 10px;
	font-family: serif;
	font-size: 20px;
	font-weight: bold;
	color: white;
}

#viewLibrary_sp1 label {
	display: inline-block;
	margin-right: 100px;
}

#viewLibrary_sp2 label {
	display: inline-block;
	margin-right: 200px;
}

#viewLibrary_sp3 label {
	display: inline-block;
	margin-right: 50px;
}

#logo, #viewLibraryDiv1 {
	display: inline-table;
	vertical-align: top;
}

#viewLibraryDiv2 a {
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
<title>View Library</title>
</head>
<body id="body_viewLibrary">

	<%@ page import="test_smartcity.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	List<Library> list = LibraryDao.getAllLibrary();
	request.setAttribute("list", list);

	Library lib = new Library();
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
	<%
	session.setAttribute("category", "Library");
	%>
	<h3>
		<strong>Library</strong>
	</h3>
	<ul class=" nav nav-pills navbar-right" id="logoutbar">
		<li class="nav-item"><a href="AboutUs.jsp">About Us</a></li>
		<li class="nav-item"><a href="ContactUs.jsp">Contact Us</a></li>
		<li class="nav-item"><a href="Logout.jsp">Logout</a></li>

	</ul>
	<div id="viewLibrary_search">
		<form name="searchFM">
			<div class="form-group has-feedback has-search">
				<span class="glyphicon glyphicon-search form-control-feedback"></span>
				<input type="text" class="form-control" placeholder="Search"
					name="search" id="search" onkeyup="searchData()">
			</div>
		</form>
		<span id="searchRS"></span>
	</div>
	<c:forEach items="${list}" var="l">
		<div class="admin_viewLibrary" id="">
			<div class="logo" id="logo">
				<label for="librarylogo"><img src="images/logo.jpg"
					alt="Library logo" width="70" height="90"></label>
			</div>
			<div class="viewLibrary_div1" id="viewLibraryDiv1">
				<label for="Library_id"><input type="hidden" id="Library_Id"
					name="Library_Id" value="${l.getLibrary_id()}"></label> <label
					for="Libraryname">${l.getLibraryName()}</label><br> <span
					id="viewLibrary_sp1"><label for="Ownership">Owned
						by: ${l.getLibraryOwn()}</label></span><br> <span id="viewLibrary_sp2"><label
					for="Librarylocation">${l.getLibraryPlace()}</label><br> <label
					for="Libraryphone">Ph: ${l.getLibraryPhone()}</label></span><br> <span
					id="viewLibrary_sp3"><label for="timing">Timing </label><label
					for="otime">${l.getLibraryOtime()}</label>To &nbsp&nbsp<label
					for="ctime">${l.getLibraryCtime()}</label> </span>
			</div>
			<div class="viewLibrary_div2" id="viewLibraryDiv2">
				<label for="viewMore"> <%
 if (session.getAttribute("user") == "Administrator") {
 	//System.out.println("Admin");
 %> <a href="Admin_ViewMoreLibrary.jsp?Library_Id=${l.getLibrary_id()}"><input
						type="button" name="viewMore" id="view_more" value="View More"></a>
					<%
					} else {//System.out.println("User");
					%> <a
					href="User_ViewMoreLibrary.jsp?Library_Id=${l.getLibrary_id()}">
						<input type="button" name="viewMore" id="view_more"
						value="View More">
				</a> <%
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