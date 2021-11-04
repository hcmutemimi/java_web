package Controller;

import java.util.ArrayList;
import java.util.List;

import Model.employeeModel;

public class EmployeeList {
	public static List<employeeModel> listEmployees = new ArrayList<employeeModel>();
	
	public static List<employeeModel> getListEmployees() {
		return listEmployees;
	}
	public static void setListEmployees(List<employeeModel> listEmployees) {
		EmployeeList.listEmployees = listEmployees;
	}
	
	

}
