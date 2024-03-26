package com.nikhil.main.services;

import java.util.List;

import com.nikhil.main.beans.Employee;

public interface EmployeeService {
	
	public boolean addEmployoeeService(Employee emp);
	
	public List<Employee> getAllEmployeeService();
	
	public boolean deleteEmployeeService(int id);
}
