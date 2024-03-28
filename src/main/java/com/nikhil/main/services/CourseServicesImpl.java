package com.nikhil.main.services;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nikhil.main.beans.Course;
import com.nikhil.main.dao.CourseDao;

@Service
public class CourseServicesImpl implements CourseServices{
	
	@Autowired
	private CourseDao courseDao;
	
	@Override
	public boolean addCoursesServices(Course course) {
		try {
			courseDao.save(course);
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	@Override
	public List<Course> showAllCoursesService() {
		List<Course> list = courseDao.findAll();
		return list;
	}
	
	@Override
	public Course getCourseDetailsService(int id) {
		return courseDao.findById(id).get();
	}
	
	@Override
	public boolean deleteCourseService(int id) {
		try {
			courseDao.deleteById(id);
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
