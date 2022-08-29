<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="School_style.css">
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

#sessions {
	display: none;
}

.logo img {
	margin-left: 25px;
	margin-top: 10px;
	margin-right: 25px;
	border-radius: 8px;
	padding: 5px;
	border: 1px solid #ddd;
}

#logo, #viewMoreSchool_d1 {
	display: inline-table;
	vertical-align: top;
}

.viewMoreSchool_d1 {
	margin-left: 5%;
	margin-top: 10px;
	font-family: serif;
	font-size: 18px;
	color: white;
	max-width: 600px;
	position: absolute;
}

.viewMoreSchool_d1 a {
	color: white;
}

.viewMoreSchool_d1 a:hover {
	color: gray;
}

#viewMore_s1 label {
	display: inline-block;
	margin-right: 150px;
}

#viewMore_s2 label {
	display: inline-block;
	margin-right: 200px;
}

#viewMore_s3 label {
	display: inline-block;
	margin-right: 150px;
}

.viewMoreSchool_d2 {
	margin-left: 20px;
}

.viewMoreSchool_d2 input[type="button"] {
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

<title>View More School</title>

</head>
<body id="body_AdminviewMoreSchool">

	<%@ page import="test_smartcity.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	String s_id = request.getParameter("School_Id");
	//System.out.print("ID: " + s_id);
	School s = SchoolDao.getMoreSchool(Integer.parseInt(s_id));
	request.setAttribute("s", s);
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
		<strong>${s.getSchoolName()}-</strong> <label for="schoollocation">${s.getSchoolPlace()}</label>
	</h3>
	<input type="hidden" name="s_id" id="s_id" value=<%=s_id%>>
	<ul class=" nav nav-pills navbar-right" id="logoutbar">
		<li class="nav-item"><a href="AboutUs.jsp">About Us</a></li>
		<li class="nav-item"><a href="ContactUs.jsp">Contact Us</a></li>
		<li class="nav-item"><a href="Logout.jsp">Logout</a></li>

	</ul>
	<div class="logo" id="logo">
		<label for="schoollogo"><img src="images/logo.jpg"
			alt="School logo" width="150" height="150"></label>
	</div>

	<div class="viewMoreSchool_d1" id="viewMoreSchool_d1">
		<label for="schooltype">School Type: ${s.getSchoolType()}</label><br>
		<span id="viewMore_s1"><label for="schoolcurriculum">School
				curriculum: ${s.getSchoolCurriculum()}</label> <label>Affiliation
				Number:${s.getSchoolAffiliationNum() }</label></span><br> <label
			for="schoolgrades">Grades: ${s.getSchoolGrades()}</label><br> <label>Year
			Established:${s.getYear_established()}</label><br> <span
			id="viewMore_s2"> <label for="schoolphone">Ph:
				${s.getSchoolPhone()}</label></span><br> <label>${s.getSchoolAddress()}</label><br>
		<span id="viewMore_s3"> <label for="schoolemail">E-mail:
				${s.getSchoolEmail()}</label><br> <label for="schoolwebsite">Website:<a
				href="">${s.getSchoolWebsite()}</a></label></span><br> <label>Principal:
			${s.getSchoolPrincipal()  }</label><br> <label>About school</label>
		<p>${s.getSchoolAbout()}</p>
		<br>


	</div>
	<div class="viewMoreSchool_d2">
		<div class="overlay" id="confirmDel" hidden>
			<div class="confirm-box">
				<div onclick="closeConfirmBox()" class="close">&#10006;</div>
				<h4>Delete</h4>
				<p>Are you sure you want to Remove this school?</p>
				<button onclick="isConfirm(true,<%=s_id%>)">Yes</button>
				<button onclick="isConfirm(false,0)">No</button>
			</div>
		</div>

		<a href="Admin_UpdateSchool.jsp?School_Id=<%=s_id%>"><input
			type="button" name="update" value="Update"></a> <input
			type="button" name="remove" value="Remove"
			onclick="showConfirmDelete()">

	</div>

	<script>
  function showConfirmDelete() {
    document.getElementById("confirmDel").hidden = false;
  }
  function closeConfirmDel() {
    document.getElementById("confirmDel").hidden = true;
  }

  function isConfirm(answer,SchoolId) {
    if (answer) {
    	document.getElementById("confirmDel")
      //alert("Answer is yes"+SchoolId);
      	window.location = "delete_School.jsp?S_Id="+SchoolId;
		alert("Shool deleted" + SchoolId);
    } else {
     // alert("Answer is no");
    }
    closeConfirmDel();
  }
  
</script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>