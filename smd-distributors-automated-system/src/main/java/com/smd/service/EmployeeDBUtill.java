package com.smd.service;
import java.util.List;
import java.util.ArrayList;

import java.sql.ResultSet;
import java.sql.Statement;

import com.smd.model.Employee;
import com.smd.util.DBConnection;

public class EmployeeDBUtill {
	
	private static boolean isSuccess;
	private static Statement stmt=null;
	private static ResultSet rs = null;
	
	DBConnection con = new DBConnection();
	
	
	public static List<Employee> viewEmployee(){
		ArrayList<Employee> emp = new ArrayList<>();
		
		try {
			DBConnection con = new DBConnection();
			stmt = con.getConnection().createStatement();
		    String sql = "select * from employee";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				String nic = rs.getString(7);
				String email = rs.getString(8);
				String address = rs.getString(9);
				double TotalSal = rs.getDouble(10);
				int hoursWorked = rs.getInt(11);
				String empType = rs.getString(12);
						
				Employee e = new Employee(id,fname,lname,phone,username,password,nic,email,address,TotalSal,hoursWorked,empType);
				emp.add(e);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return emp;
	}
	
	
	

	
	
	public static boolean addEmployee(String fname,String lname,String phone,String uname,
			String password,String nic,String email,String add,String option) {
		
		boolean isSuccess = false;
		
		//DB connection
		
		try {
			DBConnection con = new DBConnection();
			stmt = con.getConnection().createStatement();
			String sql = "insert into employee values(0,'"+fname+"','"+lname+"','"+phone+"','"+uname+"','"+password+"','"+nic+"','"+email+"','"+add+"',0,0,'"+option+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
				
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

	
	
	public static boolean updateEmployee(int ID,String fname,String lname,String phone,String uname,
			String password,String nic,String email,String add) {
		
		
		try {
			DBConnection con = new DBConnection();
			stmt = con.getConnection().createStatement();
			String sql = "update employee set First_Name='"+fname+"',Last_Name='"+lname+"',Phone='"+phone+"',Username='"+uname+"',Password='"+password+"',NIC='"+nic+"',Email='"+email+"',Address='"+add+"'"
					     +"where Emp_ID='"+ID+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
				
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
		
		
	}
	
	
	public static boolean deleteEmployee(int ID) {
		

		try {
			DBConnection con = new DBConnection();
			stmt = con.getConnection().createStatement();
			String sql = "delete from employee where Emp_ID='"+ID+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
				
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
	}
	
	
	
	
	public static boolean addAttendEmployee(int ID,String fname,String lname,int worked) {
		
		
		try {
			DBConnection con = new DBConnection();
			stmt = con.getConnection().createStatement();
			String sql = "update employee set First_Name='"+fname+"',Last_Name='"+lname+"',Hours_Worked='"+worked+"'"+"where Emp_ID='"+ID+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
				
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
		
		
	}
	
	
	
	
	
	
	
	
}
