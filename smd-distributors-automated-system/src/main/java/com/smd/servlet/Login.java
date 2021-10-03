package com.smd.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Customer;
import com.smd.model.Employee;
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
						request.getSession().setAttribute("Email",customerData[i].getEmail());
						request.getSession().setAttribute("Hname",customerData[i].getHardwareName());
						request.getSession().setAttribute("Customer",customerData[i]);
						request.getSession().setAttribute("Logged","User");
						response.sendRedirect("./index.jsp");//redirect to login page
					}
					else {
						RequestDispatcher r=request.getRequestDispatcher("./ErrorDeactivatedAccount.jsp"); 
						r.forward(request, response);
					}
					
					break;
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		//checking employee details 
		try {
			for(int i=0;i<employeeData.length;i++) {
				if((employeeData[i].getEmail().equals(request.getParameter("email")))&&(employeeData[i].getPassword().equals(pwd))) {
					Found=true;
					//checking employee type and setting session
					if(employeeData[i].getEmp_Type().equals("proManager")) {
						request.getSession().setAttribute("Logged","Product");
						response.sendRedirect("admin/ProductM/all.jsp");
					}
					else if(employeeData[i].getEmp_Type().equals("delManager")) {
						request.getSession().setAttribute("Logged","delManager");
						response.sendRedirect("admin/DeliveryManage/deliveryHome.jsp");
					}
					else if(employeeData[i].getEmp_Type().equals("stokManager")) {
						request.getSession().setAttribute("Logged","Stock");
						response.sendRedirect("admin/StockManagement/SupplierPage.jsp");
					}
					else if(employeeData[i].getEmp_Type().equals("cpayManager")) {
						request.getSession().setAttribute("Logged","cpayManager");
						request.getSession().setAttribute("empID",employeeData[i].getEmp_ID());
						response.sendRedirect("admin/CreditSalesManagement/CreditPayment.jsp");
					}
					else if(employeeData[i].getEmp_Type().equals("empManager")) {
						request.getSession().setAttribute("Logged","empManager");
						response.sendRedirect("admin/EmployeeManagement/addEmp.jsp");
					}
					else if(employeeData[i].getEmp_Type().equals("oderManager")) {
						request.getSession().setAttribute("Logged","oderManager");
						response.sendRedirect("admin/OrderManagement/OrderAdminHome.jsp");
					}
					else if(employeeData[i].getEmp_Type().equals("reqManager")) {
						request.getSession().setAttribute("Logged","reqManager");
						response.sendRedirect("admin/RequestManagement/viewFeedback.jsp");
					}
					else if(employeeData[i].getEmp_Type().equals("cusManager")) {
						request.getSession().setAttribute("Logged","cusManager");
						response.sendRedirect("admin/CustomerManagement/CustomerDetails.jsp");
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
