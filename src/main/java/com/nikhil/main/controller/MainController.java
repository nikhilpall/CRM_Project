package com.nikhil.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.DataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nikhil.main.beans.Employee;
import com.nikhil.main.services.EmployeeService;

import jakarta.validation.Valid;

@Controller
public class MainController {
	@Autowired
	EmployeeService empService;
	
	@GetMapping("/")
	public String openIndexPage() {
		return "index";
	}
	
	@GetMapping("/homePage")
	public String openHomePage() {
		return "index";
	}
	
	@GetMapping("/selectLogin")
	public String openSelectLoginPage() {
		return "select-login";
	}
	
	@GetMapping("/adminLogin")
	public String openAdminLoginPage() {
		return "admin-login";
	}
	
	@PostMapping("/adminLoginForm")
	public String adminLoginFrom(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
		if(email.equals("admin@gmail.com") && password.equals("Admin@123")) {
			List<Employee> emp_list = empService.getAllEmployeeService();
			model.addAttribute("m_emp_list", emp_list);
			return "admin-dashboard";
		}
		else {
			return "admin-login-error";
		}
	}
	
	@GetMapping("/adminDashboard")
	public String openAdminDashboard(Model model) {
		List<Employee> emp_list = empService.getAllEmployeeService();
		model.addAttribute("m_emp_list", emp_list);
		return "admin-dashboard";
	}
	
	@GetMapping("/addEmployee")
	public String openEmpRegisterPage(Model model) {
		model.addAttribute("employee", new Employee());
		return "admin-add-employee";
	}
	
	
	@PostMapping("/addEmployeeForm")
	public String addEmpForm(@Valid @ModelAttribute("employee") Employee employee, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			return "admin-emp-added-falied";
		}
		boolean status = empService.addEmployoeeService(employee);
		if(status) {
			return "admin-emp-added-success";
		}
		return "admin-emp-added-falied";
	}
	
	@GetMapping("/deleteEmployee")
	public String deleteEmployeeById(@RequestParam("id") int id, Model model){
		String page = "";
		boolean status = empService.deleteEmployeeService(id);
		if(status) {
			page = "admin-emp-delete-success";
			List<Employee> emp_list = empService.getAllEmployeeService();
			model.addAttribute("m_emp_list", emp_list);
			return "admin-dashboard";
		}
		else {
			page = "admin-emp-delete-failed";
		}
		return page;
	}
}









