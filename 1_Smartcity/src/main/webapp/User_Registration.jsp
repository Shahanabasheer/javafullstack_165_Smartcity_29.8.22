<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />

<style type="text/css">
#body_userReg {
	background-image: url("images/regist.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
}

#logoutbar {
	margin-left: 70%;
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

.registration {
	display: flex;
	position: relative;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	height: 600px;
	background-color: #1a5f80;
	width: 700px;
	margin-left: 25%;
}

.registration h3 {
	color: white;
	font-family: sans-serif;
	margin: 20px;
	margin-top: 15px;
}

#registrationFM {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 600px;
	font-size: 15px;
	font-family: sans-serif;
	background-color: #154a68;
	padding: 20px;
	border-radius: 5px;
}

#registrationFM label {
	color: white;
}

#registrationFM span {
	position: relative;
	margin-left: 20px;
	bottom: 0;
	font-family: monospace;
	color: white;
	font-size: 12px;
}

#registrationFM i {
	color: white;
}

#registrationFM input[type="text"], input[type="email"], input[type="password"],
	input[type="tel"] {
	border: none;
	padding: 5px;
	margin-top: 10px;
	font-family: sans-serif;
	color: black;
	margin-left: 20px;
}

#registrationFM input[type="submit"] {
	width: 180px;
	margin-left: 85px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	margin-top: 10px;
	border-radius: 5px;
	height: 35px;
}
</style>




<script>
	function formValidate() {
		//alert("form validation...");

		var name = document.getElementById('name').value;
		let n = 0;
		var re = /^[A-Za-z\s.]+$/;

		if (name.length == 0) {
			e_1.textContent = "** Name can not be empty!";

			document.getElementById('name').focus();
			n = 0;
		} else if (re.test(name)) {
			e_1.textContent = "Valid name";

			n = 1;
		} else {
			e_1.textContent = "** Not a valid name!";

			document.getElementById('name').focus();
			n = 0;
		}

		var email = document.getElementById('email').value;
		re = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		let u = 0;

		
		//alert("Avalability: "+email_avail);

		if (email.length == 0) {
			//alert("Empty..");
			e_2.textContent = "** Email can not be empty!";

			document.getElementById('email').focus();
			u = 0;
		} else if (re.test(email)) {
			//alert("Email");
			e_2.textContent = "Valid email";

			u = 1;
		} else {
			//alert("not email");
			e_2.textContent = "** Invalid email";

			document.getElementById('email').focus();
			u = 0;
		}

		var password = document.getElementById('password').value;
		let p = 0;
		re = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,12}$/;

		if (re.test(password)) {
			e_3.textContent = "Valid password";

			p = 1;
		}

		else {
			e_3.textContent = "** Password should contain atleast 6 character,1 capital,small letter,number&special character";

			document.getElementById('password').focus();
			p = 0;
		}

		var cpassword = document.getElementById('cpassword').value;
		let cp = 0;

		if (password != cpassword) {
			e_4.textContent = "** Passwords did not match!";

			document.getElementById('cpassword').focus();
			cp = 0;

		} else {
			e_4.textContent = "Passwords match!";

			cp = 1;
		}

		var place = document.getElementById('city').value;
		let pl = 0;
		var re = /^[a-zA-Z,'.\s-]{1,25}$/;

		if (re.test(place)) {
			e_5.textContent = "Valid palce";

			pl = 1;
		} else {
			e_5.textContent = "** Not a valid place";

			document.getElementById('city').focus();
			pl = 0;
		}
		var phonenumber = document.getElementById('phoneNumber').value;
		let ph = 0;

		re = /^[6-9]\d{9}$/;
		if (re.test(phonenumber)) {
			//alert("phone..");
			e_6.textContent = "Valid phone number";

			ph = 1;
		} else {
			//alert("not phone..");
			e_6.textContent = "** Not a vlaid phone number!";

			document.getElementById('phoneNumber').focus();
			ph = 0;
		}
		
		
		var email_avail = document.getElementById('availability').innerHTML;
		alert("Avalability:1 " + email_avail);
		let avail = 0;
		
		if (email_avail=="Available") {
			alert("Avalability:2 " + email_avail);
			avail = 1;
		}else{
			document.getElementById('email').focus();
			avail = 0;
		}
		
		if (avail == 1 && n == 1 && u == 1 && p == 1 && cp == 1 && pl == 1
				&& ph == 1) {
			alert("Successfully registered");
			return true;
		} else {
			alert("Registration not successfull!!!");
			return false;
		}
	}
	function sendInfo() {
		//alert("Avalability");
		var email = document.registrationFM.email.value;
		var url = "emailfinder.jsp?email=" + email;

		if (window.XMLHttpRequest) {
			request = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			request = new ActiveXObject("Microsoft.XMLHTTP");
		}
		try {
			request.onreadystatechange = getInfo;
			request.open("GET", url, true);
			request.send();
		} catch (e) {
			alert("Unable to connect to server");
		}
	}
	function getInfo() {
		if (request.readyState == 4) {
			var val = request.responseText;
			document.getElementById('availability').innerHTML = val;
			//alert(val);

		}
	}
</script>
<title>Registration form</title>
</head>
<body id="body_userReg">
	<div class="head_registration">
		<jsp:include page="Header.jsp"></jsp:include>
	</div>
	<ul class=" nav nav-pills navbar-right" id="logoutbar">
		<li class="nav-item"><a href="#">About Us</a></li>
		<li class="nav-item"><a href="#">Contact Us</a></li>
	</ul>
	<div class="registration" id="">
		<h3>
			<strong>Registration Form</strong>
		</h3>

		<form action="add_User.jsp" method="post" id="registrationFM"
			name="registrationFM" onsubmit="return formValidate()">
			<table>
				<tr>
					<td><label for="uname">Name:</label></td>
					<td><input type="text" id="name" name="name"><br>
						<span id="e_1"></span></td>
				</tr>
				<tr>
					<td><label for="email">Email Address:</label></td>
					<td><input type="text" id="email" name="email"> <input
						type="button" onclick="sendInfo()" value="Check Availability" />
						<br> <span id="availability"></span><br> <span id="e_2"></span></td>
				</tr>
				<tr>
					<td><label for="password">Password:</label></td>
					<td><input type="password" id="password" name="password">&nbsp&nbsp<i
						class="bi bi-eye-slash" id="togglePassword1"></i><br> <span
						id="e_3"></span></td>
				</tr>
				<tr>
					<td><label for="cpassword">Confirm Password:</label></td>
					<td><input type="password" id="cpassword" name="cpassword">&nbsp&nbsp<i
						class="bi bi-eye-slash" id="togglePassword2"></i><br> <span
						id="e_4"></span></td>
				</tr>
				<tr>
					<td><label for="city">City:</label></td>
					<td><input type="text" id="city" name="city"><br>
						<span id="e_5"></span></td>
				</tr>
				<tr>
					<td><label for="phoneNumber">Phone Number:</label></td>
					<td><input type="tel" name="phoneNumber" id="phoneNumber"><br>
						<span id="e_6"></span></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="register"
						value="Register Now"></td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
	<!---script toggle password--->
		const togglePassword1 = document.querySelector("#togglePassword1");
		const togglePassword2 = document.querySelector("#togglePassword2");
		const password = document.querySelector("#password");
		const cpassword = document.querySelector("#cpassword");

		togglePassword1.addEventListener("click", function() {
			// toggle the type attribute
			const type = password.getAttribute("type") === "password" ? "text"
					: "password";
			password.setAttribute("type", type);

			// toggle the icon
			this.classList.toggle("bi-eye");
		});
		togglePassword2.addEventListener("click", function() {
			// toggle the type attribute
			const type = cpassword.getAttribute("type") === "password" ? "text"
					: "password";
			cpassword.setAttribute("type", type);

			// toggle the icon
			this.classList.toggle("bi-eye");
		});
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>