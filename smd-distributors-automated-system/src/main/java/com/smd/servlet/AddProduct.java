package com.smd.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/addProduct")
@MultipartConfig
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddProduct() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part part = request.getPart("image");
		String filename=part.getSubmittedFileName();
//		String path=getServletContext().getRealPath(request.getContextPath()+"/img/"+filename);
		String path=request.getRealPath("/WEB-INF/")+ "files"+ File.separator+ filename;
		
//		response.getWriter().append(path.replace("e\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\", ""));
		
		InputStream is = part.getInputStream();
		boolean uploaded=uploadFile(is,path);
		
		if(uploaded) {
			response.getWriter().append(path.replace("e\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\", ""));
		}else {
			response.getWriter().append("dd");
		}
		
	}

	
	public boolean uploadFile(InputStream is,String path) {
		boolean test=false;
		try {
			byte[] byt = new byte[is.available()];
			is.read();
			FileOutputStream fops= new FileOutputStream(new File(path));
			fops.write(byt);
			fops.flush();
			fops.close();
			test=true;
		}catch(Exception e) {
			System.out.print(e);
		}
		
		return test;
	}
}

