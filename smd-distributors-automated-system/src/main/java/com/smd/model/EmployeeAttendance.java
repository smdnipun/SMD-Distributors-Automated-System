package com.smd.model;

public class EmployeeAttendance {

		private int Emp_ID;
		private String Employee_Type ;
		private String First_Name;
		private int Hours_worked;
		private int Work_Hours;
		private int OT_Hours ;
		private String Month ;
		
		//get employee attendance details from EmployeeDBUtil class list array method 
				
		public EmployeeAttendance(int emp_ID, String employee_Type, String first_Name, int hours_worked, int work_Hours,
				int oT_Hours,String month) {
	
			
			Emp_ID = emp_ID;
			Employee_Type = employee_Type;
			First_Name = first_Name;
			Hours_worked = hours_worked;
			Work_Hours = work_Hours;
			OT_Hours = oT_Hours;
			Month = month ;
		}


		//getters
		
		public int getEmp_ID() {
			return Emp_ID;
		}


		public String getEmployee_Type() {
			return Employee_Type;
		}


		public String getFirst_Name() {
			return First_Name;
		}


		public int getHours_worked() {
			return Hours_worked;
		}


		public int getWork_Hours() {
			return Work_Hours;
		}


		public int getOT_Hours() {
			return OT_Hours;
		}
	
		public String getMonth() {
			return Month;
		}

	
}
