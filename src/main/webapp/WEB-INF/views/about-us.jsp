<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css">
<%-- Bootstrap css start --%>
<link href="css/bootstrap.min.css" rel="stylesheet">
<%-- Bootstrap css end --%>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<!-- About Us Section -->
	<section id="about-us" class="py-5">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<h2>About Our Course Selling CRM Project</h2>
						<p>Welcome to our Course Selling CRM project, dedicated to
							revolutionizing the way courses are created, marketed, and sold.
							At the heart of our endeavor lies a profound commitment to
							empowering educators and learners through a streamlined and
							dynamic platform.</p>
						<p>
							Our primary focus is <span class="highlight">selling
								courses</span>, offering educators a powerful platform to showcase
							their expertise and reach a global audience. Simultaneously,
							learners benefit from a diverse selection of high-quality courses
							tailored to their interests and learning objectives.
						</p>
					</div>
					<div class="col-md-6">
						<!-- Content Div -->
						<div class="content">
							<h3>Goals:</h3>
							<ul>
								<li>Facilitate seamless creation and management of courses
									for educators.</li>
								<li>Enhance discoverability and accessibility of courses
									for learners.</li>
								<li>Optimize sales process and revenue generation for
									course creators.</li>
								<li>Foster a thriving community of educators and learners.</li>
							</ul>
							<h3>Key Features:</h3>
							<ul>
								<li>User-Friendly Course Creation</li>
								<li>Robust Sales Monitoring</li>
								<li>Personalized Customer Management</li>
								<li>Efficient Inquiry Handling</li>
								<li>Dynamic Feedback Collection</li>
							</ul>
							<h3>Benefits for Users:</h3>
							<p>
								<strong>Educators:</strong> Unlock the potential to monetize
								expertise and expand reach to a global audience.
							</p>
							<p>
								<strong>Learners:</strong> Gain access to a rich library of
								courses tailored to individual interests and learning
								objectives.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>


    <%-- Bootstrap js start --%>
    <script src="js/bootstrap.bundle.min.js"></script>
    <%-- Bootstrap js end --%>
</body>
</html>