package com.nikhil.main.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nikhil.main.beans.Employee;
import com.nikhil.main.dao.EmployeeDao;

@Service
public class EmployeeServicesImpl implements EmployeeService {
	
	@Autowired
	private EmployeeDao employeeDao;
	
	@Override
	public boolean addEmployoeeService(Employee emp) {
		try {
			employeeDao.save(emp);
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	@Override
	public List<Employee> getAllEmployeeService() {
		List<Employee> list = employeeDao.findAll();
		return list;
	}
	
	@Override
	public boolean deleteEmployeeService(int id) {
		try {
			employeeDao.deleteById(id);
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
}
