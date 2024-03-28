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
import com.nikhil.main.services.AdminServices;

@RestController
public class MainRestController {
	
	@Autowired
	private AdminServices adminServices;
	
	@PostMapping("/uploadAdminProfile")
	public String uploadAdminProfile(@RequestParam("file") MultipartFile file) {
		String profile_url = "";
		
		Admin adminDetails = adminServices.getAdminDetails();
		
		try {
			String profileStoredFolder = "profileImages";
			String uploadDirectory = System.getProperty("user.dir") + "/src/main/resources/static/" + profileStoredFolder;
			Path path = Paths.get(uploadDirectory);
			if(!Files.exists(path)) {
				Files.createDirectories(path);
			}
			
			String profilePath = uploadDirectory + "/" + file.getOriginalFilename();
			file.transferTo(new File(profilePath));
			profile_url = profileStoredFolder + "/" + file.getOriginalFilename();
			
			String profileImagePath = profileStoredFolder + "/" + file.getOriginalFilename();
			adminDetails.setImagePath(profileImagePath);
			
			adminServices.updateAdminProfileUrl(adminDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return profile_url;
	}
}
