<%@ page import="java.sql.*"%>

<%
try {
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project", "root", "");
	System.out.println("Login Validation");
	
	if (request.getParameter("login") != null) {

		String dbemail, dbpassword;
		String email, password;
		String name = null;
		int user_id;

		email = request.getParameter("username");
		password = request.getParameter("password");
		
		//System.out.println("Username: "+email+" Password: "+password );
		
		
		if(email.equals("Smart_admin") && password.equals("Admin@123")){
			//System.out.println(" To Admin home");
			session.setAttribute("user", "Administrator");
			response.sendRedirect("Admin_home.jsp");
		}else{
			//System.out.println(" To User home");
			PreparedStatement ps = null;
			ps = con.prepareStatement("select * from user_registration where User_email=? AND User_password=?");
		
			ps.setString(1, email);
			ps.setString(2, password);
		
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
		
				dbemail = rs.getString("User_email");
				dbpassword = rs.getString("User_password");
		
				name = rs.getString("User_name");
				user_id = rs.getInt("User_id");
		
				//System.out.print("DB:"+ dbemail+"  "+dbpassword );
				//	System.out.print("Login:"+ email+"  "+password );
				//System.out.println("Nmae: "+name);

				if (email.equals(dbemail) && password.equals(dbpassword)) {
		
					session.setAttribute("user", name);
					session.setAttribute("id", user_id);
					System.out.print("Validation");
					response.sendRedirect("User_home.jsp");
				} else {
					request.setAttribute("errorMsg", "Invalid email or password");
					RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
					rd.forward(request, response);
				}
			}	
			else {
				//System.out.println("rsss....");
				request.setAttribute("errorMsg", "Unregistered credentials");
				RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
				rd.forward(request, response);
			}
		} 
	}
	con.close();

	
	
	}catch (Exception e) {
	out.println(e);
	}
%>