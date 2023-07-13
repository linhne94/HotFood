<%-- 
    Document   : orderSuccess
    Created on : Jun 29, 2023, 10:24:18 PM
    Author     : minhhieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link
        rel="shortcut icon"
        href="images/logo-title4.png"
        type="image/x-icon"
        />
    <link
        rel="stylesheet"
        type="text/css"
        href="styles/bootstrap4/bootstrap.min.css"
        />
    <link
        href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
        rel="stylesheet"
        type="text/css"
        />
    <link
        rel="stylesheet"
        type="text/css"
        href="plugins/OwlCarousel2-2.2.1/owl.carousel.css"
        />
    <link
        rel="stylesheet"
        type="text/css"
        href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css"
        />
    <link
        rel="stylesheet"
        type="text/css"
        href="plugins/OwlCarousel2-2.2.1/animate.css"
        />
    <link
        rel="stylesheet"
        type="text/css"
        href="plugins/jquery-ui-1.12.1.custom/jquery-ui.css"
        />
    <link
        rel="stylesheet"
        type="text/css"
        href="styles/categories_styles.css"
        />
    <link
        rel="stylesheet"
        type="text/css"
        href="styles/categories_responsive.css"
        />
    <!-- font  -->

    <!-- font  -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Oswald:wght@600&display=swap"
        rel="stylesheet"
        />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap"
        rel="stylesheet"
        />

    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"
        />

    <link rel="stylesheet" href="styles/orderSuccess.css" />
</head>
<body>
    <div class="super_container">
        <div class="container-fluid">
            <div class="header-reset">
                <h1>HOT<span>FOOD</span></h1>
            </div>
        </div>
        <div class="container">
            <div class="row thank-user">
                <div class="col-md-12 mb-5">
                    <i class="fa fa-clock-o" aria-hidden="true"></i>
                    <h1>Thank you for your order</h1>
                </div>
                <div class="col-md-12">
                    <h4>code order: #${bill.getOrderID()}</h4>
                    <span
                        >you can check your order at your profile
                        <i class="fa fa-long-arrow-right ml-1 mr-1" aria-hidden="true"></i> order
                        placed</span
                    >
                </div>
            </div>
            <div class="row content-order">
                <div class="col-md-12 price-order ">
                    <h5>Please prepare the corresponding amount</h5>
                    <h3>${bill.totalPrice}đ</h3>
                </div>
                <div
                    class="col-md-12 d-flex justify-content-center align-items-center mb-3"
                    >
                    <div class="row time-order">
                        <h5>
                            <i class="fa-solid fa-truck-fast"></i>
                            Orders are being delivered from 14:30 on June 29, 2023
                        </h5>
                    </div>

                </div>
                <div class="row type">
                    <span>
                        At Hotfood, we take pride in our commitment to fast delivery and
                        keeping your food hot, just as our name suggests. We
                        look forward to serving you again in the future. Your continued
                        support means a lot to us, and we will strive to provide an even
                        better experience next time.
                    </span>
                </div>
                <div
                    class="row mt-1 d-flex justify-content-center align-items-center ordersuccess-btn"
                    >
                    <div class="col-12 pb-3 col-md-6 pb-md-0 ">
                        <button class="btn"><a href="home">Home</a></button>
                    </div>
                    <div class="col-md-6">
                        <button class="btn">
                            <a href="purchase">Order placed</a>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="styles/bootstrap4/popper.js"></script>
    <script src="styles/bootstrap4/bootstrap.min.js"></script>
    <script src="plugins/Isotope/isotope.pkgd.min.js"></script>
    <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
    <script src="plugins/easing/easing.js"></script>
    <script src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="js/categories_custom.js"></script>
</body>
</html>

