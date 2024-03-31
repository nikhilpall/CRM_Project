package com.nikhil.main.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nikhil.main.beans.Admin;
import com.nikhil.main.dao.AdminDao;

@Service
public class AdminServiceImpl implements AdminServices {
	
	@Autowired
	private AdminDao adminDao;
	
	@Override
	public void updateAdmin(Admin admin) {
		adminDao.save(admin);
	}
	
	@Override
	public Admin getAdminDetails() {
		return adminDao.findById(1).get();
	}
}
