package com.nikhil.main.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nikhil.main.beans.Admin;

public interface AdminDao extends JpaRepository<Admin, Integer> {

}
