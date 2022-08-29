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

<style type="text/css">
#body_viewMoreLibrary {
	background-image: url("images/bg_libr.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
}

#body_viewMoreLibrary h3 {
	line-height: 40px;
	font-size: 30px;
	margin-top: 25px;
	margin-left: 25px;
	color: white;
	width: 40%;
	text-align: left;
	text-shadow: 2px 2px 5px;
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

#sessions {
	dispaly: none;
}

.viewMoreLibrary_d1 {
	margin-left: 5%;
	margin-top: 30px;
	font-family: serif;
	font-size: 18px;
	color: white;
	font-family: serif;
}

.viewMoreLibrary_d1 label {
	margin-right: 25px;
}

.viewMoreLibrary_d2 {
	margin-left: 20px;
}

.viewMoreLibrary_d2 input[type="button"] {
	margin: 5px;
	border-radius: 10px;
	padding: 5px 10px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	font-family: serif;
	margin-top: 10px;
}

.viewMoreLibrary_d3 input[type="button"] {
	width: 120px;
	margin-left: 65px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	margin-top: 10px;
	border-radius: 5px;
	margin-bottom: 25px;
}

#viewMoreLibrary_d4 {
	display: none;
}

.styled-table {
	border-collapse: collapse;
	margin-left: 25px;
	font-size: 15px;;
	font-family: sans-serif;
	min-width: 400px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.styled-table tr th {
	background-color: #008080;
	color: white;
	text-align: left;
}

.styled-table th, .styled-table td {
	padding: 12px 15px;
}

.styled-table tbody tr {
	border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
	background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
	border-bottom: 2px solid #009879;
}

.overlay {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background: rgba(0, 0, 0, 0.8);
	z-index: 2;
}

.confirm-box {
	position: absolute;
	padding: 5px;
	border-radius: 5px;
	border-style: outset;
	width: 25%;
	height: 25%;
	top: 25%;
	left: 35%;
	text-align: center;
	background: white;
}

.confirm-box button {
	margin-top: 15px;
	margin-right: 10px;
}

.close {
	cursor: pointer;
}
</style>
<title>Admin View More Library</title>
</head>
<body id="body_viewMoreLibrary">

	<%@ page import="test_smartcity.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	String l_id = request.getParameter("Library_Id");
	//System.out.print("ID: " + s_id);
	Library l = LibraryDao.getMoreLibrary(Integer.parseInt(l_id));
	request.setAttribute("l", l);
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

	<h3>
		<strong>${l.getLibraryName()}-</strong><label for="Librarylocation">${l.getLibraryPlace()}</label>
	</h3>
	<input type="hidden" name="l_id" id="l_id" value=<%=l_id%>>

	<ul class=" nav nav-pills navbar-right" id="logoutbar">
		<li class="nav-item"><a href="AboutUs.jsp">About Us</a></li>
		<li class="nav-item"><a href="ContactUs.jsp">Contact Us</a></li>
		<li class="nav-item"><a href="Logout.jsp">Logout</a></li>

	</ul>
	<div class="logo" id="logo">
		<label for="schoollogo"><img src="images/logo.jpg"
			alt="School logo" width="150" height="150"></label>
	</div>

	<div class="viewMoreLibrary_d1" id="viewMoreLibraryD1">
		<label for="Ownership">Owned by: ${l.getLibraryOwn()}</label><br>
		<label for="time">Timing</label><label for="otime">${l.getLibraryOtime()}</label>To
		&nbsp&nbsp<label for="ctime">${l.getLibraryCtime()}</label><br> <label
			for="libraryaddress">${l.getLibraryAddress()}</label><br> <label
			for="Libraryphone">Ph: ${l.getLibraryPhone()}</label><br> <label>Email:${l.getLibraryEmail()}</label><br>
		<label> ${l.getLibraryWebsite() } </label><br> <label>About
			Library</label>
		<p>${l.getLibraryAbout()}</p>
	</div>
	<!-- <div class="viewMoreLibrary_d2">
		<input type="button" name="update" value="Update"> <input
			type="button" name="remove" value="Remove">

	</div> -->

	<div class="viewMoreLibrary_d2">
		<div class="overlay" id="confirmDel" hidden>
			<div class="confirm-box">
				<div onclick="closeConfirmBox()" class="close">&#10006;</div>
				<h4>Delete</h4>
				<p>Are you sure you want to Remove this Library?</p>
				<button onclick="isConfirm(true,<%=l_id%>)">Yes</button>
				<button onclick="isConfirm(false,0)">No</button>
			</div>
		</div>

		<a href="Admin_UpdateLibrary.jsp?Library_Id=<%=l_id%>"><input
			type="button" name="update" value="Update"> </a> <input
			type="button" name="remove" value="Remove"
			onclick="showConfirmDelete()">

	</div>


	<div class="viewMoreLibrary_d3">
		<input type="button" name="viewbooks" id="viewbooks"
			value="View Books">
	</div>
	<div id="viewMoreLibrary_d4">
		<table class="styled-table">
			<tr>
				<th>Sl No</th>
				<th>Category</th>
				<th>Title</th>
				<th>Author</th>
				<th>Book Id</th>
				<th>No of Copy</th>
				<th>Update</th>
				<th>Remove</th>
			</tr>
			<tr>
				<td>1</td>
				<td>Autobiography</td>
				<td>Wings of Fire</td>
				<td>Dr. APJ Abdul Kalam</td>
				<td>LIB_A_00001</td>
				<td>5</td>
				<td><a href="#">Update</a></td>
				<td><a href="#">Remove</a></td>
			</tr>
		</table>
	</div>

	<script type="text/javascript">
	 function showConfirmDelete() {
		 alert("delete...");
		    document.getElementById("confirmDel").hidden = false;
		  }
		  function closeConfirmDel() {
		    document.getElementById("confirmDel").hidden = true;
		  }

		  function isConfirm(answer,LibraryId) {
		    if (answer) {
		    	document.getElementById("confirmDel")
		      //alert("Answer is yes"+SchoolId);
		     	window.location = "delete_Library.jsp?L_Id="+LibraryId;
				alert("Library deleted" + LibraryId); 
		    } else {
		     // alert("Answer is no");
		    }
		    closeConfirmDel();
		  }
	
	</script>


	<script type="text/javascript">
		$(document).ready(function() {
			$("#viewbooks").click(function() {
				$("#viewMoreLibrary_d4").toggle();
			});

		});
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js">
		<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js">
	</script>
</body>
</html>