package com.smd.service;
import java.util.List;
import java.util.ArrayList;
import java.util.LinkedList;
import java.sql.ResultSet;
import java.sql.Statement;

import com.smd.model.Employee;
import com.smd.model.EmployeeAttendance;
import com.smd.model.EmployeeBasicInfo;
import com.smd.model.EmployeeResignDetails;
import com.smd.model.EmployeeSalary;
import com.smd.util.DBConnection;

public class EmployeeDBUtill {
	
	private static Statement stmt=null; //create statement type object
	private static ResultSet rs = null; //create resultset type object
	
	DBConnection con = new DBConnection();
	
	boolean isSuccess = false;
	
	//getting employee list for login
	public Employee[] getEmployeeDetails() {
		List<Employee> ll = new LinkedList<Employee>();
		Employee[] array = null;
		DBConnection con = new DBConnection();
		
		try {
			stmt = con.getConnection().createStatement();
			rs = stmt.executeQuery("select * from employee");
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
				String empType = rs.getString(10);
						
				Employee e = new Employee(id,fname,lname,phone,username,password,nic,email,address,empType);
				ll.add(e);
			}
			array = ll.toArray(new Employee[ll.size()]);

		} catch (Exception e) {}
		
		return array;
	}
	
	
	
	
	//getting employee details list from database
	
	public static List<Employee> viewEmployee(){
		ArrayList<Employee> emp = new ArrayList<>();
		
		try {
			DBConnection con = new DBConnection();
			stmt = con.getConnection().createStatement();
			//sql query  
		    String sql = "select * from employee";
			ResultSet rs = stmt.executeQuery(sql);
			
			//get employee details and store the details in to employee model class
			
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
				String empType = rs.getString(10);
				
				//create obeject from employee class and pass the database values to the constructor
						
				Employee e = new Employee(id,fname,lname,phone,username,password,nic,email,address,empType);
				emp.add(e);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return emp; //return employee array object
	}
	
	
	

	
	//method for get details of new employee and store in to the database
	
	public static boolean addEmployee(String fname,String lname,String phone,String uname,
			String password,String nic,String email,String add,String option) {
		
		boolean isSuccess = false;
		
		//DB connection
		
		try {
			DBConnection con = new DBConnection();
			stmt = con.getConnection().createStatement(); 
			//sql query  
			String sql = "insert into employee values(0,'"+fname+"','"+lname+"','"+phone+"','"+uname+"','"+password+"','"+nic+"','"+email+"','"+add+"','"+option+"')";
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

	
	
	
	
	//method for update employee details
	
	public static boolean updateEmployee(int ID,String fname,String lname,String phone,String uname,
			String password,String nic,String email,String add) {
		
		boolean isSuccess = false;
		try {
			DBConnection con = new DBConnection();
			stmt = con.getConnection().createStatement();
			//sql query  
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
	
	
	
	
	
	//method for delete employee details
	
	public static boolean deleteEmployee(int ID) {
		
		boolean isSuccess = false;
		try {
			DBConnection con = new DBConnection();
			stmt = con.getConnection().createStatement();
			//sql query  
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
	
	
	
	

	
	//method for add working hours of an employee and update employee salary with ot rate
	
	public static boolean addAttendEmployee(int ID,int worked,String date) {
		
		boolean isSuccess = false;
		
		//DB connection
		
		try {
			DBConnection con = new DBConnection();
			stmt = con.getConnection().createStatement();
			//sql query  
			String sql = "insert into employee_salattend values('"+ID+"','"+worked+"','"+date+"',0)";
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

	
	
	
	
	//getting employee attendance details list from database
	
	public static List<EmployeeAttendance> viewBestAttendance(){
		ArrayList<EmployeeAttendance> eb = new ArrayList<>();
		
		try {
			DBConnection con = new DBConnection();
			stmt = con.getConnection().createStatement();
			//sql query  
		    String sql = "select * from bestattend";
			ResultSet rs = stmt.executeQuery(sql);
			
			//get employee attendance details and store the details in to EmployeeAttendance model class
			
			while(rs.next()) {
				int eid = rs.getInt(1);
				String etype = rs.getString(2);
				String efname = rs.getString(3);
				int hourworked = rs.getInt(4);
				int workhour = rs.getInt(5);
				int othour= rs.getInt(6);
				String empmonth = rs.getString(7);
				
				//create object from EmployeeAttendance model class and pass the database values to the constructor	
				
				EmployeeAttendance d = new EmployeeAttendance(eid,etype,efname,hourworked,workhour,othour,empmonth);
				eb.add(d);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return eb; //return EmployeeAttendance array object
	}
	
	
	
	
	//getting employee salary details list from database
	
	public static List<EmployeeSalary> viewEmployeeSalary(){
		ArrayList<EmployeeSalary> esl = new ArrayList<>();
		try {
			DBConnection con = new DBConnection();
			stmt = con.getConnection().createStatement();
			//sql query  
		    String sql = "select * from monthlysalary";
			ResultSet rs = stmt.executeQuery(sql);
			
			//get employee salary details and store the details in to EmployeeSalary class
			
			while(rs.next()) {
				String emtype = rs.getString(1);
				String efname = rs.getString(2);
				double basicSal = rs.getInt(3);
				double totSal = rs.getInt(4);
				double otI= rs.getInt(5);
				int workHour= rs.getInt(6);
				int hourWork= rs.getInt(7);
				double otRate= rs.getInt(8);
				String month= rs.getString(9);
				
				//create object from EmployeeSalary class and pass the database values to the constructor	
						
				EmployeeSalary el = new EmployeeSalary(emtype,efname,basicSal,totSal,otI,workHour,hourWork,otRate,month);
				esl.add(el);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return esl; //return EmployeeSalary array object
	}
	
	
	
	

	//getting employee basic information details list from database
	
	public static List<EmployeeBasicInfo> viewEmployeeBasicInformation(){
		ArrayList<EmployeeBasicInfo> empinfo = new ArrayList<>();
		
		try {
			DBConnection con = new DBConnection();
			stmt = con.getConnection().createStatement();
			//sql query  
		    String sql = "select * from employee_type ";
			ResultSet rs = stmt.executeQuery(sql);
			
			//get employee details and store the details in to EmployeeBasicInfo model class
			
			while(rs.next()) {
				String empbasictype = rs.getString(1);
				double empbasicSalInfo = rs.getInt(2);
				int empbasichour= rs.getInt(3);
				double empOTRate= rs.getInt(4);
			
				
				//create object from EmployeeBasicInfo model class and pass the database values to the constructor	
						
				EmployeeBasicInfo ebn = new EmployeeBasicInfo(empbasictype,empbasicSalInfo,empbasichour,empOTRate);
				empinfo.add(ebn);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return empinfo; //return EmployeeBasicInfo array object
	}
	
	
	
	
	
	//getting employee resigned details list from database
	
	public static List<EmployeeResignDetails> viewEmployeeResignInformation(){
		ArrayList<EmployeeResignDetails> empresigninfo = new ArrayList<>();
		
		try {
			DBConnection con = new DBConnection();
			stmt = con.getConnection().createStatement();
			//sql query  
		    String sql = "select * from resigned_employees ";
			ResultSet rs = stmt.executeQuery(sql);
			
			//get employee resigned details and store the details in to EmployeeResignDetails model class
			
			while(rs.next()) {
				int empreid = rs.getInt(1);
				String empretype = rs.getString(2);
				String emprefname = rs.getString(3);
				String emprelname= rs.getString(4);
				String emprephone= rs.getString(5);
				String emprenic= rs.getString(6);
				String empreaddress= rs.getString(7);
				String empredate= rs.getString(8);		
			
				//create object from EmployeeResignDetails modelclass and pass the database values to the constructor	
					
				EmployeeResignDetails empsign = new EmployeeResignDetails(empreid,empretype,emprefname,emprelname,emprephone,emprenic,empreaddress,empredate);
				empresigninfo.add(empsign);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return empresigninfo; //return EmployeeResignDetails array object
	}

	
	
	
	
	
}
