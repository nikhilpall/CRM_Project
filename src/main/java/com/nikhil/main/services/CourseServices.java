package com.nikhil.main.services;

import java.util.List;

import com.nikhil.main.beans.Course;

public interface CourseServices {
	
	public boolean addCoursesServices(Course course);
	
	public List<Course> showAllCoursesService();
	
	public Course getCourseDetailsService(int id);
	
	public boolean deleteCourseService(int id);
}
