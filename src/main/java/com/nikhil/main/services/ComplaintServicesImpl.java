package com.nikhil.main.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nikhil.main.beans.Complaint;
import com.nikhil.main.dao.ComplaintDao;

@Service
public class ComplaintServicesImpl implements ComplaintServices {
	
	@Autowired
	private ComplaintDao complaintDao;
	
	@Override
	public boolean saveComplaintService(Complaint complaint) {
		try {
			complaintDao.save(complaint);
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
	@Override
	public List<Complaint> getAllComplaintsByCustomerId(int customerId) {
		return complaintDao.findByCustomerId(customerId);
	}
	
	@Override
	public List<Complaint> getAllComplaints() {
		return complaintDao.findAll();
	}
}
