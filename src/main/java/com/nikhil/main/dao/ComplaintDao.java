package com.nikhil.main.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nikhil.main.beans.Complaint;
import java.util.List;


@Repository
public interface ComplaintDao extends JpaRepository<Complaint, Integer> {
	
	List<Complaint> findByCustomerId(Integer customerId);
}
