package test_smartcity;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

public class GetImage extends HttpServlet{

	protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
		InputStream inputStream = null;
		Part filePart = request.getPart("schoolLogo");
	}
	
	public InputStream getImage(){
		
		
		return null;
		
	}
}
