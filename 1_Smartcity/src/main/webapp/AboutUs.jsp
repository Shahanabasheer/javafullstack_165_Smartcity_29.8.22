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

#body_aboutus {
	background-image: url("images/bg_Adminhome.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
	font-family: serif;
	margin: 0;
	padding: 0;
	height: 90%;
}

#about_d1 {
	height: 400px;
	width: 700px;
	/* background-color: #58CCED; */
	margin-left: 30%;
	margin-top: 5%;
	position: absolute;
	text-align: center;
}

#about_d1 p {
	text-align: center;
	font-size: 20px;
}
</style>
<title>Insert title here</title>
</head>
<body id="body_aboutus">
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
		<li class="nav-item"><a href="ContactUs.jsp">Contact Us</a></li>
		<li class="nav-item"><a href="Logout.jsp">Logout</a></li>

	</ul>

	<div id="about_d1">
		<h3>
			Whatever you want,no need to look around you, just
			look here
		</h3>
		<p>
			City Guide is an essential whenever we are visiting a particular
			city.<br> It gives us the valuable information about the city
			and saves the time.This is a platform for the city guide and can
			search every place in the city without taking the help of any
			personal guide. You can search a city for its prominent places of the
			city user, and can get social and political information of the city,
			city culture, security ,entertainment, Business , Hotels, Jobs etc.,
		</p>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>