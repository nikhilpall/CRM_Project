<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
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
    
    	<c:set var="admin_obj" value="${s_admin_obj}"></c:set>
    	
    	<c:if test="${not empty admin_obj}">
    		<jsp:include page="admin-profile-header.jsp"></jsp:include>
    	</c:if>
    	
    	<c:if test="${empty admin_obj}">
    		<jsp:include page="header.jsp"></jsp:include>
    	</c:if>

            <main>
                <div class="container" style=" height: 350px;">
                    <div class="col-md-6 display-text-align">
                        <h2 class="fw-bold text-white">Enhance customer relationships and streamline interactions with our CRM solutions.</h2>
                    </div>
                    <div class="col-md-6">

                    </div>
                </div>

                <div class="index-background"></div>

                <div class="container-fluid pt-5 pb-5 questions-div">
                    <div class="container">
                        <div class="row pt-4 pb-4">
                            <div class="col-md-7" style="display: flex; align-items: center;">
                                <div style="height: fit-content;">
                                    <h1 class="fw-bold mb-4">What does CRM do?</h1>
                                    <ul class="points-ul">
                                        <li>Manages customer interactions and data.</li>
                                        <li>Automates sales, marketing, and customer service processes.</li>
                                        <li>Improves customer satisfaction and retention.</li>
                                        <li>Provides insights for better decision-making.</li>
                                        <li>Facilitates personalized communication with customers.</li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <img src="images/crm_image_1.png" width="300" alt="alt"/>
                            </div>
                        </div>
                        <div class="row pt-4 pb-4">
                            <div class="col-md-5">
                                <img src="images/crm_image_2.png" width="350" alt="alt"/>
                            </div>

                            <div class="col-md-7">
                                <h1 class="fw-bold mb-4">Why CRM matters?</h1>
                                <ul class="points-ul">
                                    <li>Enhances efficiency and productivity.</li>
                                    <li>Boosts revenue through better customer engagement.</li>
                                    <li>Builds long-term customer relationships.</li>
                                    <li>Helps businesses stay competitive in the market.</li>
                                    <li>Enables targeted marketing and sales strategies.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </main>

        <jsp:include page="footer.jsp"></jsp:include>


        <%-- Bootstrap js start --%>
        <script src="js/bootstrap.bundle.min.js"></script>
        <%-- Bootstrap js end --%>
    </body>
</html>
