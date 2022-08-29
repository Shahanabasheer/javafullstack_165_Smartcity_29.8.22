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
<link rel="stylesheet" href="Styles_t.css">
<style type="text/css">
#body_viewMoreCollege {
	background-image: url("images/bg_col.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
}

#body_viewMoreCollege h3 {
	line-height: 60px;
	font-size: 30px;
	font-family: serif;
	margin: 0;
	margin-left: 15px;
	color: white;
	width: 40%;
	text-align: left;
	text-shadow: 2px 2px 5px;
}

#logoutbar {
	margin-right: 10px;
}

#logoutbar a {
	display: inline-block;
	font-family: serif;
	font-size: 20px;
	color: white;
	font-weight: bold;
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

#logo, #viewMoreCollege_d1 {
	display: inline-table;
	vertical-align: top;
}

.viewMoreCollege_d1 {
	margin-left: 5%;
	margin-top: 10px;
	font-family: serif;
	font-size: 18px;
	color: white;
	max-width: 600px;
	position: absolute;
}

#viewMore_s1 label {
	display: inline-block;
	margin-right: 150px;
}

#viewMore_s2 label {
	display: inline-block;
	margin-right: 150px;
}

#viewMore_s3 label {
	display: inline-block;
	margin-right: 150px;
}

.viewMoreCollege_d2 {
	margin-left: 20px;
}

.viewMoreCollege_d2 input[type="button"] {
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

<title>View More College</title>
</head>
<body id="body_viewMoreCollege">

	<%@ page import="test_smartcity.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	String c_id = request.getParameter("College_Id");
	System.out.print("ID: " + c_id);
	College c = CollegeDao.getMoreCollege(Integer.parseInt(c_id));
	request.setAttribute("c", c);
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
		<strong>${c.getCollegeName()}-</strong><label for="collegelocation">${c.getCollegePlace()}</label>
	</h3>
	<ul class=" nav nav-pills navbar-right" id="logoutbar">
		<li class="nav-item"><a href="AboutUs.jsp">About Us</a></li>
		<li class="nav-item"><a href="ContactUs.jsp">Contact Us</a></li>
		<li class="nav-item"><a href="Logout.jsp">Logout</a></li>

	</ul>
	<div class="logo" id="logo">
		<label for="schoollogo"><img src="images/college.png"
			alt="College logo" width="150" height="150"></label>
	</div>

	<div class="viewMoreCollege_d1" id="viewMoreCollege_d1">
		<label for="collegetype">${c.getCollegeType()}</label><br> <span
			id="viewMore_s1"><label for="collegeaffiliation">Affiliated
				to ${c.getCollegeAffiliation()}</label> <label for="collegecoursetype">${c.getCollegeCoursetype()}</label></span><br>
		<label for="collegeaccreditation">${c.getCollegeAccreditation()}</label><br>
		<label>Established on ${c.getYear_established()}</label><br> <span
			id="viewMore_s2"> <label for="collegelocation">Located
				at ${c.getCollegePlace()}</label> <label for="collegephone">Ph:
				${c.getCollegePhone()}</label></span><br> <label>Address for
			communication: ${c.getCollegeAddress()}</label><br> <span
			id="viewMore_s3"> <label for="collegeemail">E-mail:
				${c.getCollegeEmail()}</label><br> <label for="collegewebsite">Website:<a
				href=""> ${c.getCollegeWebsite()}</a></label></span><br> <label>Principal:
			${c.getCollegePrincipal()}</label><br> <label>About college</label>
		<p>${c.getCollegeAbout()}</p>
		<br>


	</div>
	<div class="viewMoreCollege_d2">
		<div class="overlay" id="confirmDel" hidden>
			<div class="confirm-box">
				<div onclick="closeConfirmBox()" class="close">&#10006;</div>
				<h4>Delete</h4>
				<p>Are you sure you want to Remove this College?</p>
				<button onclick="isConfirm(true,<%=c_id%>)">Yes</button>
				<button onclick="isConfirm(false,0)">No</button>
			</div>
		</div>
		<a href="Admin_UpdateCollege.jsp?College_Id=<%=c_id%>"><input
			type="button" name="update" value="Update"></a> <input
			type="button" name="remove" value="Remove"
			onclick="showConfirmDelete()">

	</div>
	<script type="text/javascript">
	function showConfirmDelete() {
	    document.getElementById("confirmDel").hidden = false;
	  }
	  function closeConfirmDel() {
	    document.getElementById("confirmDel").hidden = true;
	  }
	  function isConfirm(answer,CollegeId) {
		    if (answer) {
		    	document.getElementById("confirmDel")
		      //alert("Answer is yes"+SchoolId);
		      	window.location = "delete_College.jsp?C_Id="+CollegeId;
				alert("College deleted" + CollegeId);
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