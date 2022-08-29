<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<style type="text/css">
#body_UserviewMoreLibrary {
	background-image: url("images/bg_libr.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
}

#body_UserviewMoreLibrary h3 {
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
	display: snone;
}

.logo img {
	margin-left: 25px;
	margin-top: 30px;
	margin-right: 25px;
	border-radius: 8px;
	padding: 5px;
	border: 1px solid #ddd;
}

#logo, #UserviewMoreLibrary_d1, #UserviewMoreLibrary_d2 {
	display: inline-table;
	vertical-align: top;
}

.UserviewMoreLibrary_d1 {
	margin-left: 5%;
	margin-top: 30px;
	font-family: serif;
	font-size: 18px;
	color: white;
	font-family: serif;
}

.UserviewMoreLibrary_d1 label {
	margin-right: 25px;
}

.UserviewMoreLibrary_d2 {
	background-color: darkSlateGray;
	position: absolute;
	margin-left: 30%;
	margin-top: 5%;
	max-width: 350px;
	border-radius: 10px;
	box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.1);
}

.UserviewMoreLibrary_d2 h4 {
	font-size: 20px;
	font-family: serif;
	text-align: center;
	color: white;
	padding-top: 10px;
}

.UserviewMoreLibrary_d2 form {
	padding: 2.3rem 2.2rem;
	font-family: serif;
	font-size: 15px;
}

.UserviewMoreLibrary_d2 span {
	margin-left: 30px;
	color: black;
}

.UserviewMoreLibrary_d2 label {
	margin-right: 40px;
	color: white;
}

.UserviewMoreLibrary_d2 input, textarea {
	margin-left: 2px;
	color: black
}

.UserviewMoreLibrary_d2 input[type="submit"] {
	width: 150px;
	margin-left: 65px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	font-family: serif;
	margin-top: 10px;
	border-radius: 5px;
	margin-top: 10px;
}

.UserviewMoreLibrary_d3 input[type="button"] {
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

#UserviewMoreLibrary_d4 {
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
</style>

<script type="text/javascript">
	function enqValidation() {

		var name = document.getElementById('name').value;
		//alert("Validattion.."+name);
		let n = 0;
		var re = /^[A-Za-z\s.]+$/;

		if (name == "") {
			e_1.textContent = "** Name can not be empty!";
			e_1.style.color = "white";
			document.getElementById('name').focus();
			n = 0;
		} else if (re.test(name)) {
			e_1.textContent = "Valid name";
			e_1.style.color = "white";
			n = 1;
		} else {
			e_1.textContent = "** Not a valid name!";
			e_1.style.color = "white";
			document.getElementById('name').focus();
			n = 0;
		}

		var email = document.getElementById('email').value;
		re = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		let u = 0;

		if (email.length == 0) {
			//alert("Empty..");
			e_2.textContent = "** Email can not be empty!";
			e_2.style.color = "white";
			document.getElementById('email').focus();
			u = 0;
		} else if (re.test(email)) {
			//alert("Email");
			e_2.textContent = "Valid email";
			e_2.style.color = "white";
			u = 1;
		} else {
			//alert("not email");
			e_2.textContent = "** Invalid email";
			e_2.style.color = "white";
			document.getElementById('email').focus();
			u = 0;
		}
		var phonenumber = document.getElementById('phoneNumber').value;
		let ph = 0;

		re = /^[6-9]\d{9}$/;
		if (re.test(phonenumber)) {
			//alert("phone..");
			e_3.textContent = "Valid phone number";
			e_3.style.color = "white";
			ph = 1;
		} else {
			//alert("not phone..");
			e_3.textContent = "** Not a valid phone number!";
			e_3.style.color = "white";
			document.getElementById('phoneNumber').focus();
			ph = 0;
		}

		var message = document.getElementById('textMsg').value;
		let ms = 0;
		var re = /^[a-zA-Z0-9,'.\s-]+$/;

		if (re.test(message)) {
			e_4.textContent = "Valid message";
			e_4.style.color = "white";
			ms = 1;
		} else {
			e_4.textContent = "** Not a valid meggase !";
			e_4.style.color = "white";
			document.getElementById('textMsg').focus();
			ms = 0;
		}

		if (n == 1 && u == 1 && ph == 1 && ms == 1) {
			alert("Valid details and message sent successfully");
			return true;
		} else {
			alert("Invalid details");
			return false;

		}
	}
</script>


<title>User View More Library</title>
</head>
<body id="body_UserviewMoreLibrary">

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

	<%
	session.setAttribute("id", l_id);
	session.setAttribute("category", "Library");
	%>
	<input type="hidden" name="Library_name" id="Library_name"
		value="<%=l.getLibraryName()%>">
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
	<div class="UserviewMoreLibrary_d1" id="UserviewMoreLibrary_d1">
		<label for="Ownership">Owned by: ${l.getLibraryOwn()}</label><br>
		<label for="time">Timing</label><label for="otime">${l.getLibraryOtime()}</label>To
		&nbsp&nbsp<label for="ctime">${l.getLibraryCtime()}</label><br> <label
			for="libraryaddress">${l.getLibraryAddress()}</label><br> <label
			for="Libraryphone">Ph: ${l.getLibraryPhone()}</label><br> <label>Email:${l.getLibraryEmail()}</label><br>
		<label> ${l.getLibraryWebsite() } </label><br> <label>About
			Library</label>
		<p>${l.getLibraryAbout()}</p>
	</div>
	<div class="UserviewMoreLibrary_d2" id="UserviewMoreLibrary_d2">

		<h4>Enquiry</h4>
		<form action="add_Message.jsp?Edu_name=${l.getLibraryName()}"
			method="post" name="enquiryFM" onsubmit="return enqValidation()">
			<label>Name:<input type="text" name="name" id="name"></label><br>
			<span id="e_1"></span><br> <label>Email:<input
				type="email" name="email" id="email"></label><br> <span
				id="e_2"></span><br> <label>Phone<input type="tel"
				name="phoneNumber" id="phoneNumber"></label><br> <span id="e_3"></span><br>
			<label>Your message</label><br>
			<textarea rows="3" cols="30" name="textMsg" id="textMsg"></textarea>
			<br> <span id="e_4"></span><br> <input type="submit"
				name="submit" value="Submit Enquiry">
		</form>
	</div>

	<div class="UserviewMoreLibrary_d3">
		<input type="button" name="viewbooks" id="viewbooks"
			value="View Books" onclick="show_books()">
	</div>
	<div id="UserviewMoreLibrary_d4">
		<table class="styled-table">
			<tr>
				<th>Sl No</th>
				<th>Category</th>
				<th>Title</th>
				<th>Author</th>
				<th>Book Id</th>
				<th>No of Copy</th>
				<th>Availability</th>
				<th>Request</th>
			</tr>
			<tr>
				<td>1</td>
				<td>Autobiography</td>
				<td>Wings of Fire</td>
				<td>Dr. APJ Abdul Kalam</td>
				<td>LIB_A_00001</td>
				<td>5</td>
				<td>4</td>
				<td>Request</td>

			</tr>
		</table>
	</div>
	<script type="text/javascript">
		function show_books() {
			document.getElementById("UserviewMoreLibrary_d4").style.display = "block";

		}
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js">
		<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js">
	</script>
</body>
</html>