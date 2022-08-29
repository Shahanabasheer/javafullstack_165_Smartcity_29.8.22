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
#addSchoolFM {
	font-family: serif;
	margin-left: 15px;
	color: white;
}

#addSchool_div1 legend {
	color: white;
}

#addSchool_div1 label {
	font-size: 15px;
	color: white;
	width: 170px;
	clear: left;
	text-align: left;
	padding-right: 10px;
	padding-bottom: 10px;
}

#addSchool_div1 input {
	font-size: 15px;
	color: black;
	width: auto;
}

#addSchool_div1 input, label {
	
}

#addSchool_div1 fieldset {
	border: 1 px solid black;
}

#addSchool_div2 {
	color: black;
}

#addSchool_div2 ul {
	list-style: none;
}

#addSchool_div2 input[type="radio"] {
	margin-left: 10px;
}

#addSchool_div2 ul li {
	display: inline-block;
}

#addSchool_div3 ul {
	list-style: none;
}

#addSchool_div3 input[type="radio"] {
	margin-left: 10px;
}

#addSchool_div3 ul li {
	display: inline-block;
}

#addSchool_div4 ul li {
	display: inline-block;
}

#addSchool_div4 input[type="checkbox"] {
	margin-left: 10px;
}

#addSchool_div5 select {
	color: black;
}

#addSchool_div6 textarea {
	margin-left: 140px;
	color: black;
}

#addSchool_div6 input[type="submit"] {
	width: 120px;
	margin-left: 65px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	margin-top: 10px;
	border-radius: 5px;
	margin-bottom: 30px;
}
</style>
<script type="text/javascript">
	function formValidation() {
		//alert("Form validation");
		
		var school_name = document.getElementById('schoolName').value;
		
		//alert("validate.."+school_name);
		
		 let sn = 0;

		 var re = /^[A-Za-z\s.'-]+$/;
		if (re.test(school_name)) {
			//alert("Validation");
			e_1.textContent = "Valid name";
			e_1.style.color = "white";
			
			sn = 1;
		} else {
			//alert("Not...Validation");
			e_1.textContent = "** Not a valid school name";
			e_1.style.color = "white";
			document.getElementById('schoolName').focus();
			sn = 0;
		} 

		 var school_place = document.getElementById('schoolPlace').value;
		let sp = 0;
		var re = /^[a-zA-Z,'.\s-]{1,25}$/;

		if (re.test(school_place)) {
			e_2.textContent = "Valid palce";
			e_2.style.color = "white";
			sp = 1;
		} else {
			e_2.textContent = "** Not a valid place";
			e_2.style.color = "white";
			document.getElementById('schoolPlace').focus();
			sp = 0;
		}

		var s_affiliation = document.getElementById('schoolAffiliationNum')
				.value;
		let aff = 0;
		var re = /^\d{6}$/;

		if (re.test(s_affiliation)) {
			e_3.textContent = "Valid affiliation number";
			e_3.style.color = "white";
			aff = 1;
		} else {
			e_3.textContent = "** Not a valid affiliation number";
			e_3.style.color = "white";
			document.getElementById('schoolAffiliationNum').focus();
			aff = 0;
		}
 
		var email = document.getElementById('schoolEmail').value;
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
			document.getElementById('schoolEmail').focus();
			em = 0;
		}

		var phonenumber = document.getElementById('schoolPhone').value;
		let ph = 0;
		
		re = /^[6-9]\d{9}$/;
		if (re.test(phonenumber)) {
			//alert("phone..");
			e_5.textContent = "Valid phone number";
			e_5.style.color = "white";
			ph = 1;
		} else {
			//alert("not phone..");
			e_5.textContent = "** Not a valid phone number!";
			e_5.style.color = "white";
			document.getElementById('schoolPhone').focus();
			ph = 0;
		}

			var website = document.getElementById('schoolWebsite').value;
		    let web = 0;
		    
		    re =/(http(s)?:\/\/.)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&=]*)$/;
		    if (re.test(website)) {
		    	//alert("Web");
				e_6.textContent = "Valid website";
				e_6.style.color = "white";
				web = 1;
			} else {
				//alert("Not web");
				e_6.textContent = "** Not a valid website!";
				e_6.style.color = "white";
				document.getElementById('schoolWebsite').focus();
				web = 0;
			}
		    
		    var principal_name=document.getElementById('schoolPrincipal').value;
		    let pri=0;
		    
		    
		    var re = /^[A-Za-z\s.]+$/;
		    
		    if (re.test(principal_name)) {
				e_7.textContent = "Valid name";
				e_7.style.color = "white";
				pri = 1;
			} else {
				e_7.textContent = "** Not a vlaid name!";
				e_7.style.color = "white";
				document.getElementById('schoolPrincipal').focus();
				pri = 0;
			}
		    var school_address = document.getElementById('schoolAddress').value;
			let sad = 0;
			var re = /^[a-zA-Z,'.\s-]+$/;

			if (re.test(school_address)) {
				e_8.textContent = "Valid address";
				e_8.style.color = "white";
				sad = 1;
			} else {
				e_8.textContent = "** Not a valid address !";
				e_8.style.color = "white";
				document.getElementById('schoolAddress').focus();
				sad = 0;
			}
			
			
		  if( sn==1  && sp==1&&aff==1&& em==1 &&ph==1&&web==1&&pri==1 &&sad==1){
		    	alert("Valid details and School added successfully");
		    	return true;
		    }else{
		    	alert("Invalid details");
		    	return false;
		    	
		    }
	}
</script>
<title>Add School</title>

</head>

<body id="body_Addschool">
	<div class="head_add_school">
		<jsp:include page="Header.jsp"></jsp:include>
	</div>
	 <div>
		 <%
		if (session.getAttribute("user") == null || session.getAttribute("user") == "") {
			response.sendRedirect("Admin_login.jsp");
		}
		%> 
	</div> 
	<div class="add_school" id="add_school">
		<h3>
			<strong>Add New School</strong>
		</h3>
		<ul class=" nav nav-pills navbar-right" id="logoutbar">
			<li class="nav-item"><a href="AboutUs.jsp">About Us</a></li>
			<li class="nav-item"><a href="ContactUs.jsp">Contact Us</a></li>
			<li class="nav-item"><a href="Logout.jsp">Logout</a></li>

		</ul>
		<form action="add_School.jsp" method="post" name="addSchoolFM"
			id="addSchoolFM" onsubmit="return formValidation()">
			<div id="addSchool_div1">
				<fieldset>
					<legend>Basic Information</legend>

					<label id="sname">Name of school:</label> <input type="text"
						name="schoolName" id="schoolName">&nbsp<span
						id="e_1"></span><br> <label>Place:</label> <input type="text"
						name="schoolPlace" id="schoolPlace">&nbsp<span
						id="e_2"></span><br> <label>Affiliation Number:</label><input
						type="text" name="schoolAffiliationNum" id="schoolAffiliationNum"
						><span id="e_3"></span><br> <span
						id="error_3"></span> <label>School Type :</label>
					<div id="addSchool_div2">
						<ul>
							<li><label class="radio-inline">Government<input
									type="radio" name="schoolType" id="schoolType"
									value="Government"></label></li>
							<li><label class="radio-inline">Government_Aided<input
									type="radio" name="schoolType" id="schoolType"
									value="Gov.aided"></label></li>
							<li><label class="radio-inline">Private<input
									type="radio" name="schoolType" id="schoolType" value="Private"></label></li>
							<li><label class="radio-inline">International<input
									type="radio" name="schoolType" id="schoolType"
									value="International"></label></li>
						</ul>
					</div>

					<label>Curriculum:</label>
					<div id="addSchool_div3">

						<ul>
							<li><label class="radio-inline">State Board<input
									type="radio" name="schoolCurriculum" id="schoolCurriculum"
									value="State board"></label></li>
							<li><label class="radio-inline">CBSE<input
									type="radio" name="schoolCurriculum" id="schoolCurriculum"
									value="CBSE"></label></li>
							<li><label class="radio-inline">ICSE<input
									type="radio" name="schoolCurriculum" id="schoolCurriculum"
									value="ICSE"></label></li>
							<li><label class="radio-inline">IB<input
									type="radio" name="schoolCurriculum" id="schoolCurriculum"
									value="IB"></label></li>
							<li><label class="radio-inline">IGCSE<input
									type="radio" name="schoolCurriculum" id="schoolCurriculum"
									value="IGCSE"></label></li>
						</ul>
					</div>

					<div id="addSchool_div4">
						<label>Grades</label>
						<ul>
							<li><label class="checkbox-inline">Pre Primary<input
									type="checkbox" name="schoolGrades" id="schoolGrades"
									value="Pre-school "></label></li>
							<li><label class="checkbox-inline">Lower Primary<input
									type="checkbox" name="schoolGrades" id="schoolGrades"
									value="LP "></label></li>
							<li><label class="checkbox-inline">Upper Primary<input
									type="checkbox" name="schoolGrades" id="schoolGrades"
									value="UP "></label></li>
							<li><label class="checkbox-inline">Secondary<input
									type="checkbox" name="schoolGrades" id="schoolGrades"
									value="Secondary "></label></li>
							<li><label class="checkbox-inline">Higher Secondary<input
									type="checkbox" name="schoolGrades" id="schoolGrades"
									value="Higher secondary"></label></li>
						</ul>
					</div>

					<div id="addSchool_div5">
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
					<div id="addSchool_div6">
						<label>School Address</label><br>
						<textarea name="schoolAddress" id="schoolAddress" rows="4"
							cols="30"></textarea><span id="e_8"></span>
						<br> <label>Email</label><input type="email"
							name="schoolEmail" id="schoolEmail"> <span id="e_4"></span><br>
						<label>School Website </label><input type="url"
							name="schoolWebsite" id="schoolWebsite" value="https://"><span id="e_6"></span><br> <label>Contact
							Number</label><input type="tel" name="schoolPhone" id="schoolPhone"
						> <span id="e_5"></span><br> <label>Principal
							Name</label><input type="text" name="schoolPrincipal"
							id="schoolPrincipal"><span id="e_7"></span><br> <label>About
							school</label><br>
						<textarea name="schoolAbout" id="schoolAbout" rows="6" cols="30"></textarea>
						<br> <label>Upload school logo</label><input type="file"
							name="schoolLogo" id="schoolLogo"><br> <input
							type="submit" name="shcoolAdd" id="schoolAdd" value="Submit">

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