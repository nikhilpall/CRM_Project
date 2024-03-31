package com.nikhil.main.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nikhil.main.beans.CustomerRegister;
import com.nikhil.main.dao.CustomerRegisterDao;

@Service
public class CustomerRegisterServiceImpl implements CustomerRegisterService{
	
	@Autowired
	private CustomerRegisterDao customerRegisterDao;
	
	@Override
	public boolean saveCustomerDetailsService(CustomerRegister customerRegister) {
		try {
			customerRegisterDao.save(customerRegister);
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
	@Override
	public CustomerRegister getCustomerDetailsService(String email, String password) {
		return customerRegisterDao.findByEmailAndPassword(email, password);
	}
	
	@Override
	public CustomerRegister getCustomerDetailsById(int id) {
		return customerRegisterDao.findById(id).get();
	}
}
