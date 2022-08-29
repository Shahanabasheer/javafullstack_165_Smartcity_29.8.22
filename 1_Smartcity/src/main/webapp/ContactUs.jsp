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

<link rel="stylesheet" href="Admin_home_styles.css">

<style type="text/css">
#logoutbar {
	margin-right: 10px;
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
#body_contactus {
	background-image: url("images/bg_Adminhome.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
	font-family: serif;
	margin: 0;
	padding: 0;
	height: 90%;
}

.admin_home_head {
	position: relative;
	width: 700px;
}

.admin_home {
	position: relative;
	width: 95%;
	margin-left: 20px;
	background-color: #21618c;
	font-family: serif;
}

#contact_d1, #contact_d2 {
	display: inline-table;
}

#contact_d1 {
	height: 400px;
	width: 300px;
	background-color: #58CCED;
	margin-left: 30%;
	margin-top: 10%;
	opacity: 0.7;
	position: absolute;
}

#div_1 {
	max-width: 250px;
	text-align: center;
	margin-top: 5%;
	color: black;
}

#div_2 {
	max-width: 250px;
	text-align: center;
	margin-top: 5%;
	color: black;
}

#div_3 {
	max-width: 250px;
	text-align: center;
	margin-top: 5%;
	color: black;
}

#contact_d2 {
	height: 400px;
	width: 300px;
	background-color: white;
	opacity: 0.7;
	margin-left: 52%;
	margin-top: 10%;
	position: absolute;
	padding: 10px;
	color: black;
}

#contact_d2 h4 {
	text-align: center;
}

#contact_d2 form {
	margin-top: 30px;
}

#contact_d2 input[type="submit"] {
	margin-left: 150px;
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
		
		if (n == 1 && u == 1 && ph == 1 && ms==1) {
			alert("Valid details and message sent successfully");
			return true;
		} else {
			alert("Invalid details");
			return false;

		}
	}
</script>

<title>Contact Us</title>
</head>
<body id="body_contactus">
	<div class="user_home_head">
		<jsp:include page="Header.jsp"></jsp:include>
	</div>
	
	 <%
			if (session.getAttribute("user") == null || session.getAttribute("user") == "") {
				response.sendRedirect("Login.jsp");
			}
		%> 
	<ul class=" nav nav-pills navbar-right" id="logoutbar">
		<li class="nav-item"><a href="User_home.jsp">Home</a></li>
		<li class="nav-item"><a href="AboutUs.jsp">About Us</a></li>
		<li class="nav-item"><a href="Logout.jsp">Logout</a></li>

	</ul>
	<div id="contact_d1">
		<div id="div_1">
			<span class="glyphicon glyphicon-map-marker"></span>
			<h4>Address</h4>
			<br> City Center 3rd floor,Edappally<br> Kochi ,Kerala
			,India
		</div>
		<div id="div_2">
			<span class="glyphicon glyphicon-earphone"></span>
			<h4>Let's Talk</h4>
			+919847283567
		</div>
		<div id="div_3">
			<span class="glyphicon glyphicon-envelope"></span>
			<h4>General Support</h4>
			contactsc@gmail.com
		</div>

	</div>
	<div id="contact_d2">
		<h4>Send Us-A Message</h4>
		<form action="add_Message.jsp?Edu_name=Contact us" method="post" name="enquiryFM" onsubmit="return enqValidation()">
			<label>Name:<input type="text" name="name" id="name"></label><br>
			<span id="e_1"></span><br> <label>Email:<input
				type="email" name="email" id="email"></label><br> <span
				id="e_2"></span><br> <label>Phone<input type="tel"
				name="phoneNumber" id="phoneNumber"></label><br> <span id="e_3"></span><br>
			<label>Your message</label><br>
			<textarea rows="3" cols="30" name="textMsg" id="textMsg"></textarea>
			<br> <span id="e_4"></span><br> <input type="submit"
				name="submit" value="Send Message">
		</form>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>