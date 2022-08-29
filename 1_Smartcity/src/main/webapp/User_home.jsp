<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="419123984794-l60vi8i65uasburdlphipug25o38nbu6.apps.googleusercontent.com">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
<title>User Home</title>
<style type="text/css">
#user_homepage {
	background-image: url("images/bg_Adminhome.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
	font-family: serif;
	margin: 0;
	padding: 0;
	height: 90%;
}
/*
.user_home {
	position: relative;
	width: 95%;
	margin-left: 20px;
	background-color: #21618c;
}*/
#userhome>nav {
	position: relative;
	width: 100%;
	display: flex;
	max-height: 70px;
	background-color: #21618c;
	box-shadow: -2px -2px 5px white, 2px -2px 5px white;
	width: 100%;
}

#userhome>nav>h4 {
	line-height: 60px;
	font-size: 30px;
	margin-left: 15px;
	padding-bottom: 15px;
	color: white;
	width: 25%;
	text-align: left;
	text-shadow: 2px 2px 5px;
	color: white;
}

#nav_items {
	padding-top: 25px;
}

#nav_items>li>a {
	color: white;
	font-size: 18px;
}

#nav_items>li>a:focus, #nav_items>li>a:hover {
	border-bottom: 2px solid white;
	background-color: #0088ff;
	height: auto;
}

#menu_edu>li>a {
	font-size: 15px;
	color: #21618c;
}

#home_d2 {
	margin-top: 10px;
	margin-left: 15px;
	border: 1px dashed #669966;
	width: 200px;
	position: relative;
	margin-top: 10px;
}

.photo {
	display: block;
	align-self: center;
	margin-left: 25px;
	border-radius: 8px;
	border: 1px solid #ddd;
}

#userinfo {
	display: block;
	margin-left: 25px;
	align-items: baseline;
	font-size: 18px;
	color: #21618c;
}

.modal-header-info {
	color: #fff;
	padding: 9px 15px;
	border-bottom: 1px solid #eee;
	background-color: #21618c;
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
			e_1.style.color = "#21618c";
			document.getElementById('name').focus();
			n = 0;
		} else if (re.test(name)) {
			e_1.textContent = "Valid name";
			e_1.style.color = "#21618c";
			n = 1;
		} else {
			e_1.textContent = "** Not a valid name!";
			e_1.style.color = "#21618c";
			document.getElementById('name').focus();
			n = 0;
		}

		var email = document.getElementById('email').value;
		re = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		let u = 0;

		if (email.length == 0) {
			//alert("Empty..");
			e_2.textContent = "** Email can not be empty!";
			e_2.style.color = "#21618c";
			document.getElementById('email').focus();
			u = 0;
		} else if (re.test(email)) {
			//alert("Email");
			e_2.textContent = "Valid email";
			e_2.style.color = "#21618c";
			u = 1;
		} else {
			//alert("not email");
			e_2.textContent = "** Invalid email";
			e_2.style.color = "#21618c";
			document.getElementById('email').focus();
			u = 0;
		}

		var password = document.getElementById('password').value;
		let p = 0;
		re = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,12}$/;

		if (re.test(password)) {
			e_3.textContent = "Valid password";
			e_3.style.color = "#21618c";
			p = 1;
		}

		else {
			e_3.textContent = "** Password should contain atleast 6 character,1 capital,small letter,number&special character";
			e_3.style.color = "#21618c";
			document.getElementById('password').focus();
			p = 0;
		}

		var place = document.getElementById('city').value;
		let pl = 0;
		var re = /^[a-zA-Z,'.\s-]{1,25}$/;

		if (re.test(place)) {
			e_4.textContent = "Valid palce";
			e_4.style.color = "#21618c";
			pl = 1;
		} else {
			e_4.textContent = "** Not a valid place";
			e_4.style.color = "#21618c";
			document.getElementById('city').focus();
			pl = 0;
		}
		var phonenumber = document.getElementById('phoneNumber').value;
		let ph = 0;

		re = /^[6-9]\d{9}$/;
		if (re.test(phonenumber)) {
			//alert("phone..");
			e_5.textContent = "Valid phone number";
			e_5.style.color = "#21618c";
			ph = 1;
		} else {
			//alert("not phone..");
			e_5.textContent = "** Not a valid phone number!";
			e_5.style.color = "#21618c";
			document.getElementById('phoneNumber').focus();
			ph = 0;
		}
		
		if (n == 1 && u == 1 && p==1 && pl==1 && ph == 1 ) {
			alert("Valid details and successfully updated");
			return true;
		} else {
			alert("Invalid details");
			return false;

		}

	}
</script>
</head>
<body id="user_homepage">

	<div class="user_home_head">
		<jsp:include page="Header.jsp"></jsp:include>
	</div>
	<div class="user_home" id="userhome">
		 <%
			if (session.getAttribute("user") == null || session.getAttribute("user") == "") {
				response.sendRedirect("Login.jsp");
			}
		%> 
		<nav>
			<h4>
				Welcome&nbsp&nbsp<%=session.getAttribute("user")%>

			</h4>

			<div id="home_d1">

				<ul class="nav nav-pills" id="nav_items">
					<li id="menu_item_edu" class="dropdown"><a
						class="dropdown-toggle" data-toggle="dropdown" href="#">Education
					</a>
						<ul class="dropdown-menu" id="menu_edu">
							<li id="edu_sch"><a href="ViewSchool.jsp">School</a></li>
							<li id="edu_coll"><a href="ViewCollege.jsp">College</a></li>
							<li id="edu_lib"><a href="ViewLibrary.jsp">Library</a></li>
							<li id="edu_book"><a href="">Book Store</a></li>
							<li id="edu_tuit"><a href="">Tuition Centre</a></li>
							<li id="edu_hos"><a href="">Hostal</a></li>
							<li id="edu_pg"><a href="">Pay in guest</a></li>
						</ul></li>
					<li id="menu_item_emp"><a href="#">Employment</a></li>
					<li id="menu_item_hel"><a href="#">Health</a></li>
					<li id="menu_item_shop"><a href="#">Shopping</a></li>
					<li id="menu_item_tour"><a href="#">Tourism</a></li>
					<li id="menu_item_tra"><a href="#">Transportation</a></li>
					<li id="menu_item_news"><a href="#">News</a></li>
					<li id="menu_item_comm"><a href="#">Common</a></li>
					<li id="menu_item_logout"><a href="Logout.jsp"
						onclick="signOut()">Logout</a></li>
				</ul>
			</div>
		</nav>
		<div id="home_d2">


			<div class="photo" id="photo">
				<label for="User_photo"><img class="img-"
					src="images/user.png" alt="User photo" width="90" height="90"></label>
			</div>
			<div id="userinfo">
				<label><%=session.getAttribute("user")%></label><br> <label><a
					href="" data-toggle="modal" data-target="#updateModal">Update</a></label>


			</div>
		</div>
	</div>
	<!-- ------------------------------------------ -->
	<div class="modal fade" id="updateModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header modal-header-info">
					<h4 class="modal-title">Update User</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true"> × </span>
					</button>
				</div>
				<div class="modal-body">
					<form action=""
						<%-- "update_User.jsp?user_id=<%=session.getAttribute("id")%>" --%> method="post"
						class="form-horizontal" onsubmit="return enqValidation()">
						<div class="form-group">
							<label class="col-sm-2" for="userName">Name</label>
							<div class="col-sm-10">

								<input type="text" class="form-control" id="name" name="name"
									placeholder="Name"> <span id="e_1"></span>
								<%-- <span class="error"> <%
 						if (request.getAttribute("errorMsg") != null) {

						 	out.println(request.getAttribute("errorMsg"));
						 }
						 %>

								</span> --%>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2" for="userEmail">User Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="email" name="email"
									placeholder="User Email"><span id="e_2"></span><br>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2" for="userPassword">User Password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="password"
									name="password" placeholder="User Password"><span
									id="e_3"></span><br>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2" for="userCity">User City</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="city" name="city"
									placeholder="User City"><span id="e_4"></span><br>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2" for="userPhone">User Phone</label>
							<div class="col-sm-10">
								<input type="tel" class="form-control" id="phoneNumber"
									name="phoneNumber" placeholder="User Phone"><span id="e_5"></span><br>
							</div>
						</div>
						<button type="submit" class="btn btn-primary">Save
							changes</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>




	<script>
		function signOut() {
			var auth2 = gapi.auth2.getAuthInstance();
			auth2.signOut().then(function() {
				console.log('User signed out.');
			});
		}
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
