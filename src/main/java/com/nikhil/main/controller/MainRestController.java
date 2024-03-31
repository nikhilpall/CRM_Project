package com.nikhil.main.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.nikhil.main.beans.Admin;
import com.nikhil.main.beans.CustomerRegister;
import com.nikhil.main.services.AdminServices;
import com.nikhil.main.services.CustomerRegisterService;

import jakarta.servlet.http.HttpSession;

@RestController
public class MainRestController {

	@Autowired
	private AdminServices adminServices;

	@Autowired
	private CustomerRegisterService customerRegisterService;

	@PostMapping("/uploadAdminProfile")
	public String uploadAdminProfile(@RequestParam("file") MultipartFile file) {
		String profile_url = "";

		Admin adminDetails = adminServices.getAdminDetails();

		try {
			String profileStoredFolder = "profileImages";
			String uploadDirectory = System.getProperty("user.dir") + "/src/main/resources/static/"
					+ profileStoredFolder;
			Path path = Paths.get(uploadDirectory);
			if (!Files.exists(path)) {
				Files.createDirectories(path);
			}

			String profilePath = uploadDirectory + "/" + file.getOriginalFilename();
			file.transferTo(new File(profilePath));
			profile_url = profileStoredFolder + "/" + file.getOriginalFilename();

			String profileImagePath = profileStoredFolder + "/" + file.getOriginalFilename();
			adminDetails.setImagePath(profileImagePath);

			adminServices.updateAdmin(adminDetails);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return profile_url;
	}

	@PostMapping("/uploadCustomerProfile")
	public String uploadCustomerProfile(@RequestParam("file") MultipartFile file, HttpSession session) {
		String profile_url = "";
		
		CustomerRegister customerRegisterObj = (CustomerRegister) session.getAttribute("s_customer_obj");

		try {
			String profileStoredFolder = "profileImages";
			String uploadDirectory = System.getProperty("user.dir") + "/src/main/resources/static/"
					+ profileStoredFolder;
			Path path = Paths.get(uploadDirectory);
			if (!Files.exists(path)) {
				Files.createDirectories(path);
			}

			String profilePath = uploadDirectory + "/" + file.getOriginalFilename();
			file.transferTo(new File(profilePath));
			profile_url = profileStoredFolder + "/" + file.getOriginalFilename();

			String profileImagePath = profileStoredFolder + "/" + file.getOriginalFilename();
			customerRegisterObj.setImagePath(profileImagePath);
			
			session.setAttribute("s_customer_boj", customerRegisterObj);

			customerRegisterService.saveCustomerDetailsService(customerRegisterObj);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return profile_url;
	}
}
