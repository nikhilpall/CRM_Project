package com.nikhil.main.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nikhil.main.beans.Employee;

@Repository
public interface EmployeeDao extends JpaRepository<Employee, Integer> {
	
	Employee findEmployeeByEmpEmailAndEmpPassword(String email, String password);
}
