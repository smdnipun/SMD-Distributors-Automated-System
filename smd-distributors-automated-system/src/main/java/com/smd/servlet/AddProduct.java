package com.smd.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.sql.SQLException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.smd.util.DBConnection;

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
		DBConnection con=new DBConnection(); 
		String command = "insert into product(Product_Weight,Added_Date,Name,Unit_Price) VALUES('"+request.getParameter("pweight")+"','2030-10-01','"+request.getParameter("pname")+"','"+request.getParameter("pprice")+"')";
//		response.getWriter().append(command);
		try {
			int rows=con.getConnection().createStatement().executeUpdate(command);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
//		Staff[] data=dbc.getStaffdetails();
//		request.getSession().setAttribute("data", data);
//		response.sendRedirect("index.jsp");
		
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

//Part part = request.getPart("image");
//String filename=part.getSubmittedFileName();
//String path=getServletContext().getRealPath(request.getContextPath()+"/img/"+filename);
//String path=request.getRealPath("/"+ "img"+ File.separator+ filename);
//Set<String> path=getServletContext().getResourcePaths("/img");
//
//response.getWriter().append(path.toString());

//InputStream is = part.getInputStream();
//boolean uploaded=uploadFile(is,path.toString());
//
//if(uploaded) {
//	response.getWriter().append(path.toString());
//}else {
//	response.getWriter().append("dd");
//}
