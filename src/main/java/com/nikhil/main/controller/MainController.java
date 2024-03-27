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

import com.nikhil.main.beans.Course;
import com.nikhil.main.beans.Employee;
import com.nikhil.main.services.CourseServices;
import com.nikhil.main.services.EmployeeService;

import jakarta.validation.Valid;

@Controller
public class MainController {
	@Autowired
	private EmployeeService empService;

	@Autowired
	private CourseServices courseServices;

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
			Model model) {
		if (email.equals("admin@gmail.com") && password.equals("Admin@123")) {
			List<Employee> emp_list = empService.getAllEmployeeService();
			model.addAttribute("m_emp_list", emp_list);
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
	public String deleteEmployeeById(@RequestParam("id") int id, Model model) {
		String page = "";
		boolean status = empService.deleteEmployeeService(id);
		if (status) {
			page = "admin-emp-delete-success";
			List<Employee> emp_list = empService.getAllEmployeeService();
			model.addAttribute("m_emp_list", emp_list);
			return "admin-dashboard";
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


	@GetMapping("viewCourses")
	public String openViewCoursesPage(Model model) {
		List<Course> list = courseServices.showAllCoursesService();
		model.addAttribute("m_course_list", list);
		return "company-view-courses";
	}
	
	@GetMapping("/editCourse")
	public String openEditCoursePage(@RequestParam("id") int id, Model model) {
		Course course = courseServices.getCourseDetailsService(id);
		model.addAttribute("m_course_details", course);
		return "company-edit-course";
	}
}
