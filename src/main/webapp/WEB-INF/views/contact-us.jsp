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

	<!-- Contact Us Section -->
	<section id="contact-us" class="py-5">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h2>Contact Us</h2>
					<p>Feel free to reach out to us for any inquiries, feedback, or
						assistance. We are here to help you!</p>
					<p>
						Address: Plot no 111, New Delhi, India<br> Private Company<br>
						Nipun Nagar, Wardha, Maharashtra, 330021<br> India
					</p>
					<p>
						Email: info@yourcompany.com<br> Phone: +91-123-456-7890
					</p>
				</div>
				<div class="col-md-6">
					<!-- Embedded Map -->
					<div class="map-container">
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3501.543816932556!2d77.20901001483446!3d28.613939182419307!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cfd5b347eb62d%3A0xe1ea0e373e7f5f56!2sConnaught%20Place%2C%20New%20Delhi%2C%20Delhi%20110001%2C%20India!5e0!3m2!1sen!2sus!4v1648880715702!5m2!1sen!2sus"
							width="600" height="450" style="border: 0;" allowfullscreen=""
							loading="lazy"></iframe>
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