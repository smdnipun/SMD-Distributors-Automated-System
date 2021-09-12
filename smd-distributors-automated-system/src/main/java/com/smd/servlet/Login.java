package com.smd.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Customer;
import com.smd.model.Employee;
import com.smd.util.DBConnection;
import com.smd.util.Services;
import com.smd.service.CusDetailsServiceImpl;
import com.smd.service.EmployeeDBUtill;
import com.smd.service.ICustomerDetails;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//getting customer details
		ICustomerDetails cus = new CusDetailsServiceImpl();
		Customer[] customerData=cus.getCustomerDetails();
		//getting employee details
		EmployeeDBUtill emp = new EmployeeDBUtill();
		Employee[] employeeData=emp.getEmployeeDetails();
		
		//Creating service class object
		Services sv = new Services();
		String pwd = sv.doHashing(request.getParameter("password"));
		
		boolean Found = false;
		
		try {
			for(int i=0;i<customerData.length;i++) {
				if((customerData[i].getEmail().equals(request.getParameter("email")))&&(customerData[i].getPassword().equals(pwd))) {
					Found=true;
					if(customerData[i].getStatus().equals("Active")) {
						//setting the sessions when login
						request.getSession().setAttribute("CustomerID",customerData[i].getCusID());
						request.getSession().setAttribute("Hname",customerData[i].getHardwareName());
						request.getSession().setAttribute("Customer",customerData[i]);
						request.getSession().setAttribute("Logged","User");
						response.sendRedirect("./index.jsp");//redirect to login page
					}
					else {
						RequestDispatcher r=request.getRequestDispatcher("ErrorDeactivatedAccount.jsp"); 
						r.forward(request, response);
					}
					
					break;
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			for(int i=0;i<employeeData.length;i++) {
				if((employeeData[i].getEmail().equals(request.getParameter("email")))&&(employeeData[i].getPassword().equals(pwd))) {
					Found=true;
					if(employeeData[i].getEmp_Type().equals("product")) {
						request.getSession().setAttribute("Logged","Admin");
						response.sendRedirect("admin/ProductM/all.jsp");
					}
					else if(employeeData[i].getEmp_Type().equals("Delivery")) {
						request.getSession().setAttribute("Logged","Delivery");
						response.sendRedirect("admin/DeliveryManage/deliveryHome.jsp");
					}
					else if(employeeData[i].getEmp_Type().equals("Stock")) {
						request.getSession().setAttribute("Logged","Stock");
						response.sendRedirect("admin/StockManagement/SupplierPage.jsp");
					}
					else if(employeeData[i].getEmp_Type().equals("cashCollector")) {
						request.getSession().setAttribute("Logged","Stock");
						response.sendRedirect("admin/CreditSalesManagement/CreditPayment.jsp");
					}
					else if(employeeData[i].getEmp_Type().equals("employee")) {
						request.getSession().setAttribute("Logged","Stock");
						response.sendRedirect("admin/StockManagement/index.jsp");
					}
					else if(employeeData[i].getEmp_Type().equals("order")) {
						request.getSession().setAttribute("Logged","Stock");
						response.sendRedirect("admin/StockManagement/index.jsp");
					}
					else if(employeeData[i].getEmp_Type().equals("Stock")) {
						request.getSession().setAttribute("Logged","Stock");
						response.sendRedirect("admin/StockManagement/index.jsp");
					}
					else if(employeeData[i].getEmp_Type().equals("Stock")) {
						request.getSession().setAttribute("Logged","Stock");
						response.sendRedirect("admin/StockManagement/index.jsp");
					}
					break;
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		 
		if(!Found) {
			RequestDispatcher r=request.getRequestDispatcher("login.jsp");  
			request.setAttribute("login_err","Invalid Login Details");
			r.forward(request, response);
		}
	}

}
