<!DOCTYPE html>
<html>
<head>
<!-- Load Bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
	integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous">
	
</script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
	integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
	crossorigin="anonymous">
	
</script>

<link rel="stylesheet" href="Admin_home_styles.css">
<style type="text/css">
.admin_profile_head {
	position: relative;
	width: 700px;
}

.admin_profile {
	position: relative;
	width: 95%;
	margin-left: 20px;
	background-color: #21618c;
	font-family: serif;
}
#adminprofile>nav {
	width: 100%;
	display: flex;
	max-height: 70px;
	box-shadow: -2px -2px 5px white;
}
#adminprofile h3 {
	line-height: 60px;
	font-size: 40px;
	margin: 0;
	margin-left: 15px;
	color: white;
	width: 40%;
	text-align: left;
	text-shadow: 2px 2px 5px;
}

#logoutbar {
	position: relative;
	right: 10px;
	left:50%;
	display: inline-block;
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

#profile_d2 {
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

#profile_d3 {
	position: relative;
	display: block;
	margin-left: 25px;
	align-items: baseline;
	font-size: 15px;
	display: block;
}

.modal-header-info {
	color: #fff;
	padding: 9px 15px;
	border-bottom: 1px solid #eee;
	background-color: #21618c;
}
</style>

</head>
<title>Admin Profile</title>

<body id="body_AdminProfile">

	<div class="admin_profile_head">
		<jsp:include page="Header.jsp"></jsp:include>
	</div>
	<div>
		 <%
		if (session.getAttribute("user") == null || session.getAttribute("user") == "") {
			response.sendRedirect("Login.jsp");
		}
		%> 
	</div>
	<div class="admin_profile" id="adminprofile">
		<nav>
			<h3>
				<strong>Welcome</strong>
			</h3>
			<ul class=" nav nav-pills navbar-right" id="logoutbar">
				<li class="nav-item"><a href="Logout.jsp">Logout</a></li>
			</ul>
		</nav>
	</div>
	<div id="profile_d2">

		<div class="photo" id="photo">
			<label for="User_photo"><img class="img-"
				src="images/user.png" alt="User photo" width="90" height="90"></label>
		</div>
		<div id="profile_d3">
			<label>Name</label><br> <label>Email</label> <br> <label>
				<!-- Button trigger modal --> <a href="" data-toggle="modal"
				data-target="#changeUserModal">Change user name</a>
			</label><br> <label><a href="">Change password</a></label><br> <label><a
				href="">Update</a></label>

		</div>

	</div>


	<!-- Modal -->
	<div class="modal fade" id="changeUserModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header modal-header-info">
					<h4 class="modal-title">Change user name</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true"> × </span>
					</button>
				</div>
				<div class="modal-body">
					<form action="Admin_ChangeUsername.jsp" method="post" role="form"
						class="form-horizontal">
						<div class="col-sm-10">
							<input type="email" class="form-control" id="adminname"
								placeholder="Admin name"><br>
						</div>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Adminusername"
								placeholder="Admin Username"><br>
						</div>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="AdminNewusername"
								placeholder="Admin New Username">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>


