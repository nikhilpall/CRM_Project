package com.nikhil.main.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nikhil.main.beans.Employee;

public interface EmployeeDao extends JpaRepository<Employee, Integer> {

}
