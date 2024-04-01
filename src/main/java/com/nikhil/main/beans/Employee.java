package com.nikhil.main.beans;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

@Entity
public class Employee {
	@Id
	@NotNull
	private int empId;
	
	@Size(min = 3, max = 50, message = "name not valid")
	private String empName;
	
	@Email (message = "email not valid")
	@Pattern(regexp = "\\b[A-Za-z0-9._%+-]+@gmail\\.com\\b", message = "email not valid")
	private String empEmail;
	
	@Size(min = 3, max = 50, message = "password not valid")
	private String empPassword;
	
	@Size(min = 3, max = 50, message = "job title not valid")
	private String empJobTitle;
	
	@Size(min = 3, max = 50, message = "salary not valid")
	private String empSalary;
	
	private String empProfileImagePath;
	
	private String empCountry;
	
	private String empAddress;
	
	private String empLinkedIn;
	
	private String empFacebook;
	
	private String empInstagram;
	
	private String empTwitter;

	public String getEmpProfileImagePath() {
		return empProfileImagePath;
	}
	public void setEmpProfileImagePath(String empProfileImagePath) {
		this.empProfileImagePath = empProfileImagePath;
	}
	public String getEmpCountry() {
		return empCountry;
	}
	public void setEmpCountry(String empCountry) {
		this.empCountry = empCountry;
	}
	public String getEmpAddress() {
		return empAddress;
	}
	public void setEmpAddress(String empAddress) {
		this.empAddress = empAddress;
	}
	public String getEmpLinkedIn() {
		return empLinkedIn;
	}
	public void setEmpLinkedIn(String empLinkedIn) {
		this.empLinkedIn = empLinkedIn;
	}
	public String getEmpFacebook() {
		return empFacebook;
	}
	public void setEmpFacebook(String empFacebook) {
		this.empFacebook = empFacebook;
	}
	public String getEmpInstagram() {
		return empInstagram;
	}
	public void setEmpInstagram(String empInstagram) {
		this.empInstagram = empInstagram;
	}
	public String getEmpTwitter() {
		return empTwitter;
	}
	public void setEmpTwitter(String empTwitter) {
		this.empTwitter = empTwitter;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpEmail() {
		return empEmail;
	}
	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}
	public String getEmpPassword() {
		return empPassword;
	}
	public void setEmpPassword(String empPassword) {
		this.empPassword = empPassword;
	}
	public String getEmpJobTitle() {
		return empJobTitle;
	}
	public void setEmpJobTitle(String empJobTitle) {
		this.empJobTitle = empJobTitle;
	}
	public String getEmpSalary() {
		return empSalary;
	}
	public void setEmpSalary(String empSalary) {
		this.empSalary = empSalary;
	}
}
