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
import com.nikhil.main.beans.Complaint;
import com.nikhil.main.beans.Course;
import com.nikhil.main.beans.CustomerRegister;
import com.nikhil.main.beans.Employee;
import com.nikhil.main.services.AdminServices;
import com.nikhil.main.services.ComplaintServices;
import com.nikhil.main.services.CourseServices;
import com.nikhil.main.services.CustomerRegisterService;
import com.nikhil.main.services.EmployeeService;
import jakarta.servlet.http.HttpServletResponse;
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

	@Autowired
	private CustomerRegisterService customerRegisterService;

	@Autowired
	private ComplaintServices complaintServices;

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
			session.setAttribute("s_admin_obj", admin);
			return "redirect:/adminDashboard";
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
	public String addEmpForm(@Valid @ModelAttribute("employee") Employee employee, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			model.addAttribute("m_add_emp_status_failed", "failed");
			return "admin-add-employee";
		}
		boolean status = empService.addEmployoeeService(employee);
		if (status) {
			model.addAttribute("m_add_emp_status", "success");
			return "redirect:/addEmployee?m_add_emp_status=success";
		}
		model.addAttribute("m_add_emp_status_failed", "failed");
		return "admin-add-employee";
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
		return "view-courses";
	}

	@GetMapping("/editCourse")
	public String openEditCoursePage(@RequestParam("id") int id, Model model) {
		Course course = courseServices.getCourseDetailsService(id);
		model.addAttribute("m_course_details", course);
		model.addAttribute("course", new Course());
		return "company-edit-course";
	}

	@PostMapping("/editCourseForm")
	public String editCourseForm(@RequestParam("image") MultipartFile file, @RequestParam("imagePath") String imagePath,
			@RequestParam("id") int id, @Valid @ModelAttribute("course") Course course, BindingResult bindingResult,
			Model model) {

		String imageStoredFolder = "uploads";
		String uploadDirectory = System.getProperty("user.dir") + "/src/main/resources/static/" + imageStoredFolder;
		String courseImagePath = "";
		Course c = courseServices.getCourseDetailsService(id);

		if (bindingResult.hasErrors()) {
			model.addAttribute("m_course_details", c);
			return "company-update-course-failed";
		}

		if (!file.isEmpty()) {
			String extension = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."))
					.toLowerCase();
			if (!extension.equals(".jpg") && !extension.equals(".jpeg") && !extension.equals(".png")) {
				model.addAttribute("m_course_details", c);
				return "company-update-course-failed-image";
			}
		} else {
			courseImagePath = imagePath;
		}

		try {
			if (!file.isEmpty()) {
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
		Object adminObj = session.getAttribute("s_admin_obj");
		if (adminObj != null && adminObj instanceof Admin) {
			Admin admin = adminServices.getAdminDetails();
			session.setAttribute("s_admin_obj", admin);
		}
		return "admin-profile";
	}

	@GetMapping("/editAdminPage")
	public String openEditAdminPage(Model model) {
		model.addAttribute("admin", new Admin());
		return "admin-edit-profile";
	}

	@PostMapping("/editAdminProfileForm")
	public String editAdminProfileForm(@Valid @ModelAttribute("admin") Admin admin, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "admin-edit-profil-failed";
		}

		Admin adminObjFromDatabase = adminServices.getAdminDetails();

		admin.setId(adminObjFromDatabase.getId());
		admin.setImagePath(adminObjFromDatabase.getImagePath());

		adminServices.updateAdmin(admin);

		return "redirect:/adminProfile";
	}

	@GetMapping("/logout")
	public void logoutButton(HttpSession session, HttpServletResponse res) throws Exception {
		session.invalidate();
		res.sendRedirect("/");
	}

	@GetMapping("/aboutUs")
	public String openAboutUsPage() {
		return "about-us";
	}

	@GetMapping("/contactUs")
	public String openContactUsPage() {
		return "contact-us";
	}

	@GetMapping("/customerLogin")
	public String openCustomerLoginPage() {
		return "customer-login";
	}

	@GetMapping("/customerRegister")
	public String openCustomerRegisterPage(Model model) {
		model.addAttribute("customerRegister", new CustomerRegister());
		return "customer-register";
	}

	@PostMapping("/customerRegisterForm")
	public String customerRegisterForm(@Valid @ModelAttribute("customerRegister") CustomerRegister customerRegister,
			BindingResult bindingResult, HttpSession session) {
		if (bindingResult.hasErrors()) {
			return "customer-register";
		}

		boolean status = customerRegisterService.saveCustomerDetailsService(customerRegister);

		if (status) {
			session.setAttribute("s_customer_obj", customerRegister);
			return "redirect:/viewCourses";
		}

		return "customer-register";
	}

	@GetMapping("/customerProfile")
	public String openCustomerProfilePage() {
		return "customer-profile";
	}

	@GetMapping("/editCustomerProfile")
	public String editCustomerProfilePage() {
		return "customer-edit-profile";
	}

	@PostMapping("/customerEditProfileForm")
	public String customerEditProfileForm(@ModelAttribute CustomerRegister customerRegister, HttpSession session) {
		CustomerRegister obj = (CustomerRegister) session.getAttribute("s_customer_obj");
		customerRegister.setId(obj.getId());
		customerRegister.setImagePath(obj.getImagePath());
		boolean status = customerRegisterService.saveCustomerDetailsService(customerRegister);
		if (status) {
			session.setAttribute("s_customer_obj", customerRegister);
			return "update-customer-success";
		}
		return "update-customer-failed";
	}

	@PostMapping("/customerLoginForm")
	public String customerLoginForm(@RequestParam("email") String email, @RequestParam("password") String pssword,
			HttpSession session) {
		CustomerRegister customerObj = customerRegisterService.getCustomerDetailsService(email, pssword);

		if (customerObj != null) {
			session.setAttribute("s_customer_obj", customerObj);
			return "redirect:/viewCourses";
		}

		return "redirect:/customerLogin?login=fail";
	}

	@GetMapping("/customerComplaint")
	public String openCustomerComplaintPage(Model model) {
		model.addAttribute("complaint", new Complaint());
		return "customer-register-complaint-page";
	}

	@PostMapping("/customerComplaintRegisterForm")
	public String customerComplaintRegisterForm(@Valid @ModelAttribute("complaint") Complaint complaint,
			BindingResult bindingResult, @RequestParam("file") MultipartFile file) {
		if (bindingResult.hasErrors()) {
			return "customer-register-complaint-page";
		}

		try {
			if (file != null && !file.isEmpty()) {
				String complaintFileUploadedFolder = "customerComplaintsUploads";
				String currentDirectory = System.getProperty("user.dir") + "/src/main/resources/static/"
						+ complaintFileUploadedFolder;

				Path path = Paths.get(currentDirectory);

				if (!Files.exists(path)) {
					Files.createDirectories(path);
				}

				String uploadFileName = currentDirectory + "/" + file.getOriginalFilename();

				file.transferTo(new File(uploadFileName));

				String databaseFilePath = complaintFileUploadedFolder + "/" + file.getOriginalFilename();

				complaint.setAttachmentPath(databaseFilePath);
			}
			complaint.setComplaintStatus("Open");
			complaint.setCurrentComplaintTimestamp();
			complaint.setComplaintSource("Website");

			boolean status = complaintServices.saveComplaintService(complaint);
			if (status) {
				return "redirect:/customerAllComplaint";
			}
			return "customer-register-complaint-page";
		} catch (Exception e) {
			e.printStackTrace();
			return "customer-register-complaint-page";
		}
	}

	@GetMapping("/customerAllComplaint")
	public String customerAllComplaintPage(HttpSession session, Model model) {
		CustomerRegister customerRegister = (CustomerRegister) session.getAttribute("s_customer_obj");

		if (customerRegister != null) {
			int customerId = customerRegister.getId();

			List<Complaint> complaint_list = complaintServices.getAllComplaintsByCustomerId(customerId);

			model.addAttribute("m_complaint_list", complaint_list);
		}

		return "customer-my-complaints-page";
	}
	
	@GetMapping("/employeeLogin")
	public String employeeLoginPage() {
		return "employee-login";
	}
	
	@PostMapping("/employeeLoginForm")
	public String employeeLoginForm(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session) {
		Employee emp = empService.getEmployeeByEmailAndPassword(email, password);
		if(emp != null) {
			session.setAttribute("s_employee_obj", emp);
			return "";
		}
		return "redirect:/employeeLogin?login=fail";
	}
	
	@GetMapping("/empDashboard")
	public String empDashboardPage() {
		return "employee-dashboard-page";
	}

}









