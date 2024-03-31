package com.nikhil.main.services;

import com.nikhil.main.beans.CustomerRegister;

public interface CustomerRegisterService {
	
	public boolean saveCustomerDetailsService(CustomerRegister customerRegister);
	
	public CustomerRegister getCustomerDetailsService(String email, String password);
	
	public CustomerRegister getCustomerDetailsById(int id);
}
