package com.nikhil.main.beans;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Size;

@Entity
public class Course {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String courseImagePath;
	
	@Size(min = 5, max = 100)
	private String courseTitle;
	
	@Size(min = 2, max = 3, message = "Course Lessons should be between 10 - 999")
	private String courseLessons;
	
	@Size(min = 3, max = 5, message = "Price should be between 100 - 99999")
	private String courseActualPrice;
	
	@Size(min = 3, max = 5, message = "Price should be between 100 - 99999")
	private String courseDiscountPrice;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCourseImagePath() {
		return courseImagePath;
	}

	public void setCourseImagePath(String courseImagePath) {
		this.courseImagePath = courseImagePath;
	}

	public String getCourseTitle() {
		return courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public String getCourseLessons() {
		return courseLessons;
	}

	public void setCourseLessons(String courseLessons) {
		this.courseLessons = courseLessons;
	}

	public String getCourseActualPrice() {
		return courseActualPrice;
	}

	public void setCourseActualPrice(String courseActualPrice) {
		this.courseActualPrice = courseActualPrice;
	}

	public String getCourseDiscountPrice() {
		return courseDiscountPrice;
	}

	public void setCourseDiscountPrice(String courseDiscountPrice) {
		this.courseDiscountPrice = courseDiscountPrice;
	}
}
