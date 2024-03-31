package com.nikhil.main.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nikhil.main.beans.CustomerRegister;

@Repository
public interface CustomerRegisterDao extends JpaRepository<CustomerRegister, Integer> {
	
	CustomerRegister findByEmailAndPassword(String email, String password);
}
