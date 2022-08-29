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
<link rel="stylesheet" href="School_style.css">
<style type="text/css">
#body_Addcollege {
	background-image: url("images/bg_col.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
}

#addCollegeFM {
	font-family: serif;
	margin-left: 15px;
	color: white;
}

#addCollege_div1 legend {
	color: white;
}

#addCollege_div1 label {
	font-size: 15px;
	color: white;
	width: 170px;
	clear: left;
	text-align: left;
	padding-right: 20px;
	padding-bottom: 10px;
}

#addCollege_div1 input {
	font-size: 15px;
	color: black;
	width: auto;
}

#addCollege_div1 fieldset {
	border: 1 px solid black;
}

#addCollege_div2 {
	color: black;;
}

#addCollege_div2 ul {
	list-style: none;
}

#addCollege_div2 input[type="radio"] {
	margin-left: 10px;
}

#addCollege_div2 ul li {
	display: inline-block;
}

#addCollege_div3 ul {
	list-style: none;
}

#addCollege_div3 input[type="radio"] {
	margin-left: 10px;
}

#addCollege_div3 ul li {
	display: inline-block;
}

#addCollege_div4 ul li {
	display: inline-block;
}

#addCollege_div4 input[type="checkbox"] {
	margin-left: 10px;
}

#addCollege_div5 select {
	color: black;
}

#addCollege_div6 textarea {
	margin-left: 140px;
	border-radius: 10px;
	color: black;
}

#addCollege_div6 input[type="submit"] {
	width: 120px;
	margin-left: 65px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	margin-top: 10px;
	margin-bottom: 25px;
	border-radius: 5px;
}
</style>

<script type="text/javascript">
	function formValidation() {
		//alert("Form validation");
		var college_name = document.getElementById('collegeName').value;

		//alert("validate.."+school_name);

		let cn = 0;

		var re = /^[A-Za-z\s.'-]+$/;
		if (re.test(college_name)) {
			//alert("Validation");
			e_1.textContent = "Valid name";
			e_1.style.color = "white";

			cn = 1;
		} else {
			//alert("Not...Validation");
			e_1.textContent = "** Not a valid college name";
			e_1.style.color = "white";
			document.getElementById('collegeName').focus();
			cn = 0;
		}

		var college_place = document.getElementById('collegePlace').value;
		let cp = 0;
		var re = /^[a-zA-Z,'.\s-]{1,25}$/;

		if (re.test(college_place)) {
			e_2.textContent = "Valid palce";
			e_2.style.color = "white";
			cp = 1;
		} else {
			e_2.textContent = "** Not a valid place";
			e_2.style.color = "white";
			document.getElementById('collegePlace').focus();
			cp = 0;
		}

		var c_affiliation = document.getElementById('collegeAffiliation').value;
		let aff = 0;
		var re = /^[A-Za-z\s]+$/;

		if (re.test(c_affiliation)) {
			e_3.textContent = "Valid affiliation number";
			e_3.style.color = "white";
			aff = 1;
		} else {
			e_3.textContent = "** Not a valid affiliation";
			e_3.style.color = "white";
			document.getElementById('collegeAffiliation').focus();
			aff = 0;
		}

		var college_address = document.getElementById('collegeAddress').value;
		let cad = 0;
		var re = /^[a-zA-Z,'.\s-]+$/;

		if (re.test(college_address)) {
			e_4.textContent = "Valid address";
			e_4.style.color = "white";
			cad = 1;
		} else {
			e_4.textContent = "** Not a valid address !";
			e_4.style.color = "white";
			document.getElementById('collegeAddress').focus();
			cad = 0;
		}

		var email = document.getElementById('collegeEmail').value;
		re = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		let em = 0;

		if (re.test(email)) {
			//alert("Email");
			e_5.textContent = "Valid email";
			e_5.style.color = "white";
			em = 1;
		} else {
			//alert("not email");
			e_5.textContent = "** Invalid email !";
			e_5.style.color = "white";
			document.getElementById('collegeEmail').focus();
			em = 0;
		}

		var website = document.getElementById('collegeWebsite').value;
		let web = 0;

		re = /(http(s)?:\/\/.)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&=]*)$/;
		if (re.test(website)) {
			//alert("Web");
			e_6.textContent = "Valid website";
			e_6.style.color = "white";
			web = 1;
		} else {
			//alert("Not web");
			e_6.textContent = "** Not a valid website!";
			e_6.style.color = "white";
			document.getElementById('collegeWebsite').focus();
			web = 0;
		}

		var phonenumber = document.getElementById('collegePhone').value;
		let ph = 0;

		re = /^[6-9]\d{9}$/;
		if (re.test(phonenumber)) {
			//alert("phone..");
			e_7.textContent = "Valid phone number";
			e_7.style.color = "white";
			ph = 1;
		} else {
			//alert("not phone..");
			e_7.textContent = "** Not a valid phone number!";
			e_7.style.color = "white";
			document.getElementById('collegePhone').focus();
			ph = 0;
		}
		var principal_name = document.getElementById('collegePrincipal').value;
		let pri = 0;

		var re = /^[A-Za-z\s.]+$/;

		if (re.test(principal_name)) {
			e_8.textContent = "Valid name";
			e_8.style.color = "white";
			pri = 1;
		} else {
			e_8.textContent = "** Not a vlaid name!";
			e_8.style.color = "white";
			document.getElementById('collegePrincipal').focus();
			pri = 0;
		}
		if (cn == 1 && cp == 1 && aff == 1 && cad == 1 && em == 1 && web == 1
				&& ph == 1 && pri == 1) {
			alert("Valid details and School added successfully");
			return true;
		} else {
			alert("Invalid details");
			return false;

		}
	}
</script>
<title>Add College</title>
</head>
<body id="body_Addcollege">
	<div class="head_add_college">
		<jsp:include page="Header.jsp"></jsp:include>
	</div>
	 <div>
		 <%
		if (session.getAttribute("user") == null || session.getAttribute("user") == "") {
			response.sendRedirect("Login.jsp");
		}
		%> 
	</div>
	<div class="add_college" id="add_college">
		<h3>
			<strong>Add New College</strong>
		</h3>
		<ul class=" nav nav-pills navbar-right" id="logoutbar">
			<li class="nav-item"><a href="AboutUs.jsp">About Us</a></li>
			<li class="nav-item"><a href="ContactUs.jsp">Contact Us</a></li>
			<li class="nav-item"><a href="Logout.jsp">Logout</a></li>

		</ul>
		<form action="add_College.jsp" method="post" name="addCollegeFM" id="addCollegeFM"
			onsubmit="return formValidation()">
			<div id="addCollege_div1">
				<fieldset>
					<legend>Basic Information</legend>

					<label id="cname">Name of college:</label><input type="text"
						name="collegeName" id="collegeName">&nbsp<span id="e_1"></span><br>
					<label>Place:</label> <input type="text" name="collegePlace"
						id="collegePlace"><span id="e_2"></span><br> <label>Affiliation</label><input
						type="text" name="collegeAffiliation" id="collegeAffiliation"><span
						id="e_3"></span><br> <label>College Type :</label>
					<div id="addCollege_div2">
						<ul>
							<li><label class="radio-inline">Government<input
									type="radio" name="collegeType" id="collegeType"
									value="Government"></label></li>
							<li><label class="radio-inline">Government_Aided<input
									type="radio" name="collegeType" id="collegeType"
									value="Gov-Aided"></label></li>
							<li><label class="radio-inline">Private<input
									type="radio" name="collegeType" id="collegeType"
									value="Private"></label></li>
							<li><label class="radio-inline">International<input
									type="radio" name="collegeType" id="collegeType"
									value="International"></label></li>
						</ul>
					</div>

					<label>Course Type</label>
					<div id="addCollege_div3">

						<ul>
							<li><label class="radio-inline">Arts and Science<input
									type="radio" name="collegeCoursetype" id="collegeCoursetype"
									value="Arts and Science"></label></li>
							<li><label class="radio-inline">Professional<input
									type="radio" name="collegeCoursetype" id="collegeCoursetype"
									value="Professional"></label></li>
							<li><label class="radio-inline">Medical<input
									type="radio" name="collegeCoursetype" id="collegeCoursetype"
									value="Medical"></label></li>
							<li><label class="radio-inline">Management<input
									type="radio" name="collegeCoursetype" id="collegeCoursetype"
									value="Management"></label></li>
							<li><label class="radio-inline">Others<input
									type="radio" name="collegeCoursetype" id="collegeCoursetype"
									value="Others"></label></li>
						</ul>
					</div>

					<div id="addCollege_div4">
						<label>Accreditation</label>
						<ul>
							<li><label class="checkbox-inline">UGC<input
									type="checkbox" name="collegeAccreditation"
									id="collegeAccreditation" value="UGC"></label></li>
							<li><label class="checkbox-inline">AICTE<input
									type="checkbox" name="collegeAccreditation"
									id="collegeAccreditation" value="AICTE"></label></li>
							<li><label class="checkbox-inline">PCI<input
									type="checkbox" name="collegeAccreditation"
									id="collegeAccreditation" value="PCI"></label></li>
							<li><label class="checkbox-inline">NBA<input
									type="checkbox" name="collegeAccreditation"
									id="collegeAccreditation" value="NBA"></label></li>
							<li><label class="checkbox-inline">NAAC<input
									type="checkbox" name="collegeAccreditation"
									id="collegeAccreditation" value="NAAC"></label></li>
						</ul>
					</div>

					<div id="addCollege_div5">
						<label>Year of Establishment</label> <select id="year_established"
							name="year_established">
						</select><br>
						<script>
							let dateDropdown = document
									.getElementById('year_established');

							let currentYear = new Date().getFullYear();
							let earliestYear = 1947;
							while (currentYear >= earliestYear) {
								let dateOption = document
										.createElement('option');
								dateOption.text = currentYear;
								dateOption.value = currentYear;
								dateDropdown.add(dateOption);
								currentYear -= 1;
							}
						</script>
					</div>
					<div id="addCollege_div6">
						<label>College Address</label><br>
						<textarea name="collegeAddress" id="collegeAddress" rows="4"
							cols="30"></textarea>
						&nbsp <span id="e_4"></span> <br> <br> <label>Email</label><input
							type="email" name="collegeEmail" id="collegeEmail">&nbsp<span
							id="e_5"></span><br> <label>College Website </label><input
							type="url" name="collegeWebsite" id="collegeWebsite"
							value="https://"><span id="e_6"></span><br> <label>Contact
							Number</label><input type="tel" name="collegePhone" id="collegePhone"><span
							id="e_7"></span><br> <label>Principal Name</label><input
							type="text" name="collegePrincipal" id="collegePrincipal"><span
							id="e_8"></span><br> <label>About college</label><br>
						<textarea name="collegeAbout" id="collegeAbout" rows="6" cols="30"></textarea>
						<br> <label>Upload college logo</label><input type="file"
							name="collegeLogo" id="collegeLogo"><br> <input
							type="submit" name="scoolAdd" id="collegeAdd" value="Submit">
					</div>
				</fieldset>
			</div>
		</form>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>