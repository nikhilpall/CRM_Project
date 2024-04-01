package com.nikhil.main.services;

import java.util.List;

import com.nikhil.main.beans.Complaint;

public interface ComplaintServices {
	
	public boolean saveComplaintService(Complaint complaint);
	
	public List<Complaint> getAllComplaintsByCustomerId(int customerId);
}
