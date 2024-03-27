package com.nikhil.main.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nikhil.main.beans.Course;

public interface CourseDao extends JpaRepository<Course, Integer> {
	
}
