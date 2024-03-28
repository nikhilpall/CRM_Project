package com.nikhil.main.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nikhil.main.beans.Admin;
import com.nikhil.main.beans.Course;
import com.nikhil.main.beans.Employee;
import com.nikhil.main.services.AdminServices;
import com.nikhil.main.services.CourseServices;
import com.nikhil.main.services.EmployeeService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class MainController {
	@Autowired
	private EmployeeService empService;

	@Autowired
	private CourseServices courseServices;
	
	@Autowired
	private AdminServices adminServices;

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
	public String adminLoginFrom(@RequestParam("email") String email, @RequestParam("password") String password,
			Model model, HttpSession session) {
		Admin admin = adminServices.getAdminDetails();
		if (email.equals(admin.getEmail()) && password.equals(admin.getPassword())) {
			List<Employee> emp_list = empService.getAllEmployeeService();
			model.addAttribute("m_emp_list", emp_list);
			session.setAttribute("s_admin_obj", admin);
			return "admin-dashboard";
		} else {
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
		if (bindingResult.hasErrors()) {
			return "admin-emp-added-falied";
		}
		boolean status = empService.addEmployoeeService(employee);
		if (status) {
			return "admin-emp-added-success";
		}
		return "admin-emp-added-falied";
	}

	@GetMapping("/deleteEmployee")
	public String deleteEmployeeById(@RequestParam("id") int id) {
		String page = "";
		boolean status = empService.deleteEmployeeService(id);
		if (status) {
			return "redirect:/adminDashboard";
		} else {
			page = "admin-emp-delete-failed";
		}
		return page;
	}

	@GetMapping("/addCourses")
	public String openAddCoursePage(Model model) {
		model.addAttribute("course", new Course());
		return "add-course";
	}

	@PostMapping("/addCourseForm")
	public String addCourseForm(@RequestParam("image") MultipartFile file,
			@Valid @ModelAttribute("course") Course course, BindingResult bindingResult,
			RedirectAttributes redirectAttributes) {
		if (bindingResult.hasErrors()) {
			return "add-course-failed";
		}

		if (file.isEmpty()) {
			return "add-course-failed-image";
		}

		String extension = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."))
				.toLowerCase();
		if (!extension.equals(".jpg") && !extension.equals(".jpeg") && !extension.equals(".png")) {
			return "add-course-failed-image";
		}

		try {
			String imageStoredFolder = "uploads";
			String uploadDirectory = System.getProperty("user.dir") + "/src/main/resources/static/" + imageStoredFolder;
			Path path = Paths.get(uploadDirectory);
			if (!Files.exists(path)) {
				Files.createDirectories(path);
			}
			String filePath = uploadDirectory + "/" + file.getOriginalFilename();
			file.transferTo(new File(filePath));

			// set file path
			course.setCourseImagePath(imageStoredFolder + "/" + file.getOriginalFilename());

			// store file path and other courses details in database
			boolean status = courseServices.addCoursesServices(course);
			if (status) {
				redirectAttributes.addFlashAttribute("successMessage", "Course added successfully!");
				return "redirect:/addCourseSuccessPage"; // Redirect to success page
			}
			return "add-course-failed";
		} catch (Exception e) {
			e.printStackTrace();
			return "add-course-failed";
		}
	}
	
	@GetMapping("/addCourseSuccessPage")
	public String showSuccessPage() {
	    return "add-course-success"; // Return the name of your success page template
	}


	@GetMapping("/viewCourses")
	public String openViewCoursesPage(Model model) {
		List<Course> list = courseServices.showAllCoursesService();
		model.addAttribute("m_course_list", list);
		return "company-view-courses";
	}
	
	@GetMapping("/editCourse")
	public String openEditCoursePage(@RequestParam("id") int id, Model model) {
		Course course = courseServices.getCourseDetailsService(id);
		model.addAttribute("m_course_details", course);
		model.addAttribute("course", new Course());
		return "company-edit-course";
	}
	
	@PostMapping("/editCourseForm")
	public String editCourseForm(@RequestParam("image") MultipartFile file, @RequestParam("imagePath") String imagePath, @RequestParam("id") int id,
			@Valid @ModelAttribute("course") Course course, BindingResult bindingResult,
			Model model) {
		
		String imageStoredFolder = "uploads";
		String uploadDirectory = System.getProperty("user.dir") + "/src/main/resources/static/" + imageStoredFolder;
		String courseImagePath = "";
		Course c = courseServices.getCourseDetailsService(id);
		
		if (bindingResult.hasErrors()) {
			model.addAttribute("m_course_details", c);
			return "company-update-course-failed";
		}
		
		if(!file.isEmpty()) {
			String extension = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")).toLowerCase();
			if (!extension.equals(".jpg") && !extension.equals(".jpeg") && !extension.equals(".png")) {
				model.addAttribute("m_course_details", c);
				return "company-update-course-failed-image";
			}
		}
		else {
			courseImagePath = imagePath;
		}

		try {
			if(!file.isEmpty()) {
				Path path = Paths.get(uploadDirectory);
				if (!Files.exists(path)) {
					Files.createDirectories(path);
				}
				String filePath = uploadDirectory + "/" + file.getOriginalFilename();
				file.transferTo(new File(filePath));
				
				courseImagePath = imageStoredFolder + "/" + file.getOriginalFilename();
			}
			
			// set file path
			course.setCourseImagePath(courseImagePath);
			
			// set id 
			course.setId(id);

			// store file path and other courses details in database
			boolean status = courseServices.addCoursesServices(course);
			if (status) {
				return "redirect:/courseUpdateSuccess";
			}
			return "redirect:/courseUpdateFailed";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/courseUpdateFailed";
		}
	}
	
	@GetMapping("/courseUpdateSuccess")
	public String courseUpdaeSuccessPopUp() {
		return "company-course-updated-success";
	}
	
	@GetMapping("/courseUpdateFailed")
	public String courseUpdaeFailedPopUp() {
		return "company-course-updated-failed";
	}
	
	@GetMapping("/deleteCourse")
	public String deleteCourseBtn(@RequestParam("id") int id) {
		courseServices.deleteCourseService(id);
		return "redirect:/viewCourses";
	}
	
	@GetMapping("/adminProfile")
	public String openAdminProfilePage(Model model, HttpSession session) {
		Admin admin = adminServices.getAdminDetails();
		model.addAttribute("m_profile_url", admin.getImagePath());
		session.setAttribute("s_admin_obj", admin);
		return "admin-profile";
	}
	
}
