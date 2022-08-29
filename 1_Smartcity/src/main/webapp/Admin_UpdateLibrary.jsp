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
.update_library h3 {
	line-height: 60px;
	font-size: 25px;
	margin: 0;
	margin-left: 15px;
	color: white;
	width: 40%;
	text-align: left;
	text-shadow: 2px 2px 5px;
}

#logoutbar {
	margin-right: 10px;
	margin-top: 10px;
	width: 400px;
	height: 200px;
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

#updateLibraryFM {
	font-family: serif;
	margin-left: 15px;
	color: white;
}

#updateLibrary_div1 legend {
	color: white;
}

#updateLibrary_div1 label {
	font-size: 15px;
	color: white;
	width: 170px;
	clear: left;
	text-align: left;
	padding-right: 50px;
	padding-bottom: 10px;
}

#to {
	margin-left: 50px;
}

#ctime {
	margin-left: 0;
}

#updateLibrary_div1 input {
	font-size: 15px;
	color: black;
	width: auto;
	margin-left: 30px;
}

#updateLibrary_div1 fieldset {
	border: 1 px solid black;
}

#updateLibrary_div1 textarea {
	margin-left: 140px;
	border-radius: 10px;
	color: black;
}

#updateLibrary_div1 input[type="submit"] {
	width: 120px;
	margin-left: 65px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	margin-top: 10px;
	border-radius: 5px;
}

#addmorebooks {
	font-size: 18px;
	height: 35px;
	width: 150px;
	background-color: #008080;
	border-radius: 5px;
	margin-bottom: 25px;
	margin-left: 200px;
	margin-top: 25px;
	color: white;
}

#add_books {
	margin-left: 15px;
}

#add_books label {
	font-size: 15px;
	color: white;
	width: 170px;
	clear: left;
	text-align: left;
	padding-right: 10px;
	padding-bottom: 10px;
	clear: left;
}

#add_books input {
	font-size: 15px;
	color: black;
	width: auto;
}

#add_books input[type="button"] {
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

#add_books {
	display: none;
}
</style>
<script type="text/javascript">
	function formValidation() {
		//alert("Form validation");

		var library_name = document.getElementById('libraryName').value;

		alert("validate.." + library_name);

		let ln = 0;

		var re = /^[A-Za-z\s.'-]+$/;
		if ((library_name != null) && (re.test(library_name))) {
			//alert("Validation");
			e_1.textContent = "Valid name";
			e_1.style.color = "white";

			ln = 1;
		} else {
			//alert("Not...Validation");
			e_1.textContent = "** Not a valid library name";
			e_1.style.color = "white";
			document.getElementById('libraryName').focus();
			ln = 0;
		}

		var library_place = document.getElementById('libraryPlace').value;
		let lp = 0;
		var re = /^[a-zA-Z,'.\s-]{1,25}$/;

		if (re.test(library_place)) {
			e_2.textContent = "Valid palce";
			e_2.style.color = "white";
			lp = 1;
		} else {
			e_2.textContent = "** Not a valid place";
			e_2.style.color = "white";
			document.getElementById('libraryPlace').focus();
			lp = 0;
		}

		var owner_name = document.getElementById('libraryOwn').value;

		//alert("validate.."+school_name);

		let on = 0;

		var re = /^[A-Za-z\s.'-]+$/;
		if ((owner_name != null) && (re.test(owner_name))) {
			//alert("Validation");
			e_3.textContent = "Valid name";
			e_3.style.color = "white";

			on = 1;
		} else {
			//alert("Not...Validation");
			e_3.textContent = "** Not a valid owner name";
			e_3.style.color = "white";
			document.getElementById('libraryOwn').focus();
			on = 0;
		}

		var email = document.getElementById('libraryEmail').value;
		re = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		let em = 0;

		if (re.test(email)) {
			//alert("Email");
			e_4.textContent = "Valid email";
			e_4.style.color = "white";
			em = 1;
		} else {
			//alert("not email");
			e_4.textContent = "** Invalid email";
			e_4.style.color = "white";
			document.getElementById('libraryEmail').focus();
			em = 0;
		}
		var website = document.getElementById('libraryWebsite').value;
		let web = 0;

		re = /(http(s)?:\/\/.)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&=]*)$/;
		if (re.test(website)) {
			//alert("Web");
			e_5.textContent = "Valid website";
			e_5.style.color = "white";
			web = 1;
		} else {
			//alert("Not web");
			e_5.textContent = "** Not a valid website!";
			e_5.style.color = "white";
			document.getElementById('libraryWebsite').focus();
			web = 0;
		}

		var phonenumber = document.getElementById('libraryPhone').value;
		let ph = 0;

		re = /^[6-9]\d{9}$/;
		if (re.test(phonenumber)) {
			//alert("phone..");
			e_6.textContent = "Valid phone number";
			e_6.style.color = "white";
			ph = 1;
		} else {
			//alert("not phone..");
			e_6.textContent = "** Not a vlaid phone number!";
			e_6.style.color = "white";
			document.getElementById('libraryPhone').focus();
			ph = 0;
		}

		var library_address = document.getElementById('libraryAddress').value;
		let lad = 0;
		var re = /^[a-zA-Z,'.\s-]+$/;

		if (re.test(library_address)) {
			e_7.textContent = "Valid address";
			e_7.style.color = "white";
			lad = 1;
		} else {
			e_7.textContent = "** Not a valid address !";
			e_7.style.color = "white";
			document.getElementById('libraryAddress').focus();
			lad = 0;
		}

		if (ln == 1 && lp == 1 && on == 1 && em == 1 && web == 1 && ph == 1) {
			alert("Valid details and Library added successfully");
			return true;
		} else {
			alert("Invalid details");
			return false;

		}
	}
</script>
<title>Update Library</title>
</head>
<body id="body_updatelibrary">

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

	<div>
		<%
		if (session.getAttribute("user") == null || session.getAttribute("user") == "") {
			response.sendRedirect("Login.jsp");
		}
		%>
	</div>

	<div class="update_library" id="update_library">
		<h3>
			<strong>Update Library</strong>
		</h3>
		<ul class=" nav nav-pills navbar-right" id="logoutbar">
			<li class="nav-item"><a href="AboutUs.jsp">About Us</a></li>
			<li class="nav-item"><a href="ContactUs.jsp">Contact Us</a></li>
			<li class="nav-item"><a href="Logout.jsp">Logout</a></li>

		</ul>
		<form action="update_Library.jsp?Library_Id=<%=l_id%>" method="post"
			name="updateLibraryFM" id="updateLibraryFM"
			onsubmit="return formValidation()">
			<div id="updateLibrary_div1">
				<fieldset>

					<legend>Basic Information</legend>

					<label id="lname">Name of library:</label><input type="text"
						name="libraryName" id="libraryName"
						value="<%=l.getLibraryName()%>">&nbsp<span id="e_1"></span><br>
					<label>Place:</label> <input type="text" name="libraryPlace"
						id="libraryPlace" value="<%=l.getLibraryPlace()%>">&nbsp<span
						id="e_2"></span><br> <label for="librarytype">Owned
						by:</label> <input type="text" name="libraryOwn" id="libraryOwn"
						value="<%=l.getLibraryOwn()%>">&nbsp<span id="e_3"></span><br>
					<label for="time">Timing</label><input type="time"
						name="libraryOtime" id="libraryOtime"
						value="<%=l.getLibraryOtime()%>"><label for="to" id="to">To</label><input
						type="time" id="libraryCtime" name="libraryCtime"
						value="<%=l.getLibraryCtime()%>"><br> <label
						for="libraryaddress">Address</label><br>
					<textarea name="libraryAddress" id="libraryAddress" rows="4"
						cols="30"><%=l.getLibraryAddress()%></textarea>
					<span id="e_7"></span> <br> <label>Email</label><input
						type="email" name="libraryEmail" id="libraryEmail"
						value="<%=l.getLibraryEmail()%>">&nbsp<span id="e_4"></span><br>
					<label> Website </label><input type="url" name="libraryWebsite"
						id="libraryWebsite" value="<%=l.getLibraryWebsite()%>">&nbsp<span
						id="e_5"></span><br> <label>Contact Number</label><input
						type="tel" name="libraryPhone" id="libraryPhone"
						value="<%=l.getLibraryPhone()%>">&nbsp<span id="e_6"></span><br>
					<label>About Library</label><br>
					<textarea name="libraryAbout" id="libraryAbout" rows="6" cols="30"><%=l.getLibraryAbout()%></textarea>
					<input type="submit" name="libraryUpdate" id="libraryUpdate"
						value="Update">
				</fieldset>

			</div>
		</form>

		<input type="button" name="addmorebooks" id="addmorebooks"
			value="Add Books">

		<div id="add_books">


			<label for="category">Category</label><input type="text"
				name="bookCategory" id="bookCategory"><br> <label
				for="title">Title</label><input type="text" name="bookName"
				id="bookName"><br> <label for="author">Author</label><input
				type="text" name="bookAuthor" id="bookAuthor"><br> <label
				for="bookid">Book Id</label><input type="text" name="bookId"
				id="bookId"><br> <label for="numofcopy">No: of
				Copy</label><input type="number" name="numofCopy" id="numofCopy"><br>
			<input type="button" name="addbook" id="addbook" value="Add">

		</div>

	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#addmorebooks").click(function() {
				$("#add_books").toggle();
			});

		});
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>