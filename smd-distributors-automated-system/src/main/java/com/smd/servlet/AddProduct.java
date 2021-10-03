package com.smd.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Product;
import com.smd.service.ProductDB;
import com.smd.util.DBConnection;

@WebServlet("/addProduct")
@MultipartConfig
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddProduct() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		DBConnection con = new DBConnection();
		ProductDB productCon = new ProductDB();
		Product arr[] = productCon.getAllProducts();
		int availability = 1;
		boolean productFound = false;

		for (Product i : arr) {
			if (i.getName().equals(request.getParameter("pname"))) {
				productFound = true;
				break;
			}
		}

		if (!productFound) {
			if (request.getParameter("availablity") == null) {
				availability = 0;
			} else {
				availability = 1;
			}
			String command = "insert into product(Product_Weight,Added_Date,Name,Unit_Price,Availability,image) VALUES('"
					+ request.getParameter("pweight") + "','2030-10-01','" + request.getParameter("pname") + "','"
					+ request.getParameter("pprice") + "','" + availability + "','" + request.getParameter("image")
					+ "')";
			try {

				int rows = con.getConnection().createStatement().executeUpdate(command);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}

			out.println("<script type=\"text/javascript\">");
			out.println("alert('Added Successfully!');");
			out.println("location='admin/ProductM/all.jsp';");
			out.println("</script>");
		}else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Product already exists!');");
			out.println("location='admin/ProductM/add.jsp';");
			out.println("</script>");
		}
	}
}
