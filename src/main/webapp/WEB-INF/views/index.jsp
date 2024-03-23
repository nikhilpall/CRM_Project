<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../../resources/css/style.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
</head>
<body>
    
    <jsp:include page="header.jsp"></jsp:include>
    
    <main>
        <div class="container-fluid" style="background-image: url('../../resources/images/index_crm_banner.jpeg'); background-size: cover; background-position: center;">
            <div class="row align-items-center" style="background-color: rgba(0, 0, 0, 0.5); height: 500px;">
                <div class="col-md-6 text-center text-white">
                    <h2 class="font-weight-bold">Enhance customer relationships and streamline interactions with our CRM solutions.</h2>
                </div>
                <div class="col-md-6"></div>
            </div>
        </div>

        <div class="container pt-5 pb-5">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="font-weight-bold mb-4">What does CRM do?</h1>
                    <ul class="points-font-size">
                        <li>Manages customer interactions and data.</li>
                        <li>Automates sales, marketing, and customer service processes.</li>
                        <li>Improves customer satisfaction and retention.</li>
                        <li>Provides insights for better decision-making.</li>
                        <li>Facilitates personalized communication with customers.</li>
                    </ul>
                </div>

                <div class="col-md-6">
                    <h1 class="font-weight-bold mb-4">Why CRM matters?</h1>
                    <ul class="points-font-size">
                        <li>Enhances efficiency and productivity.</li>
                        <li>Boosts revenue through better customer engagement.</li>
                        <li>Builds long-term customer relationships.</li>
                        <li>Helps businesses stay competitive in the market.</li>
                        <li>Enables targeted marketing and sales strategies.</li>
                    </ul>
                </div>
            </div>
        </div>
    </main>
    
    <jsp:include page="footer.jsp"></jsp:include>
    
    
    <!-- Bootstrap JS -->
    <script src="../../resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
