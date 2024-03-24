package com.nikhil.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("/")
	public String openIndexPage() {
		return "index";
	}
	
	@GetMapping("/homePage")
	public String openHomePage() {
		return "index";
	}
	
	@GetMapping("/loginPage")
	public String openLoignPage() {
		return "login";
	}
	
	@GetMapping("/addEmployee")
	public String openEmpRegisterPage() {
		return "add-employee";
	}
	
	
}
