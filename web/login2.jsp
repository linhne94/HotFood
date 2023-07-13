<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Hot Food</title>
        <jsp:include page="header.jsp" />
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="description" content="Hot Food Template" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!-- Tạo logo ở title -->
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
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

        <!-- font  -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Oswald:wght@600&display=swap"
            rel="stylesheet"
            />

        <link rel="stylesheet" href="styles/login2.css" />
        <style>
            .active-link {
                color: #ff769c !important;
            }
            #accountdetails.active-link {
                color: #ff769c !important;
            }
            .logo_container a {
                font-size: 27px;
                color: #1e1e27;
                font-weight: 700;
                text-transform: uppercase;
            }

            .navbar_menu li a {
                display: block;
                color: #1e1e27;
                font-size: 16px;
                font-weight: 500;
                text-transform: uppercase;
                padding: 20px;
            }
        </style>
    </head>

    <body>
        <div class="super_container mt-5" >
            <div
                class="container"
                style="max-width: auto; padding: 0 70px; max-height: auto; margin: auto"
                >
                <div class="row justify-content-between">
                    <div class="col-md-6 cart pl-0 left-login">
                        <!-- account detail -->
                        <div
                            class="container tab-pane fade show active"
                            id="account_details"
                            role="tabpanel"
                            aria-labelledby="accountdetails"
                            >
                            <div class="card-body mt-4 pl-2 pt-2">
                                <h3>login</h3>
                            </div>

                            <div class="card-title pt-2">
                                <form action="login" method="post">
                                    <div class="form-group">
                                        <div class="col-12 infor-detail">
                                            <label class="label-detail" for="username">User name:</label>
                                            <input
                                                class="input-detail"
                                                type="text"
                                                id="username"
                                                name="username"
                                                required

                                                />
                                        </div>
                                        <div class="col-12 infor-detail pb-4">
                                            <label class="label-detail" for="username">
                                                Password:
                                            </label>
                                            <input
                                                class="input-detail"
                                                type="password"
                                                id="password"
                                                name="password"
                                                required
                                                />
                                        </div>
                                        <div class="container d-flex justify-content-center align-content-center mb-3 mt-3">
                                            <a href="sendEmail.jsp" style="text-align: center; color: #282828; margin-bottom: 10px
                                               ">Forgot your password?</a>
                                        </div>

                                        <c:choose>
                                            <c:when test="${mess == null}">
                                            </c:when>
                                            <c:otherwise>
                                                <p style=" font-size: 12px;color: #4c5057 ;padding: 15px 20px; margin-bottom: 30px;  background-color: rgba(255, 102, 102, 0.5); border-radius: 10px; text-align: center">${mess}</p>
                                            </c:otherwise>
                                        </c:choose>  
                                        <div class="col-12">
                                            <button class="btn btn-primary w-100 button-detail">
                                                Login
                                            </button>
                                        </div>
                                        <div class="col-12 continue pt-5">
                                            <h5>Or continue with</h5>
                                        </div>
                                        <div
                                            class="col-12 social-container d-flex justify-content-center"
                                            >
                                            <button class="btn btn-primary w-100 button-google mt-3" >
                                                <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile&redirect_uri=http://localhost:8080/Final_Project_SWE391/GoogleSignInServlet&response_type=code
                                                   &client_id=47980504396-boe53k1d63t9639n02bdob58ki3fnkjb.apps.googleusercontent.com&approval_prompt=force" class="social">Sign up with Google
                                                    <i
                                                        style="font-size: 30px"
                                                        class="fa fa-google ml-3"
                                                        aria-hidden="true"></i>
                                                </a>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div
                        class="col-md-5 cart pt-4 pr-4 pb-4 d-flex justify-content-center align-items-center right-login"
                        >
                        <div class="row flex-wrap">
                            <div class="col-md-12">
                                <div class="container">
                                    <div class="col d-flex justify-content-center">
                                        <h1 style="color: #cccccc">Hot <span>food</span></h1>
                                    </div>
                                    <p>
                                        Enter your personal information and start ordering our food
                                    </p>
                                    <div class="login-btn">
                                        <button class="btn" onclick="window.location.href = 'signup.jsp'">
                                            Sign Up
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                            class="row d-flex flex-wrap justify-content-between mb-3 mt-3 pr-2"
                            ></div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer" style="background-color: #f3f3f3">
            <div class="container" style="margin-top: 50px">
                <div class="row">
                    <div class="col-lg-6">
                        <div
                            class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center"
                            >
                            <ul class="footer_nav">
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">FAQs</a></li>
                                <li><a href="contact.html">Contact us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div
                            class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center"
                            >
                            <ul>
                                <li>
                                    <a href="#"
                                       ><i class="fa fa-facebook" aria-hidden="true"></i
                                        ></a>
                                </li>
                                <li>
                                    <a href="#"
                                       ><i class="fa fa-twitter" aria-hidden="true"></i
                                        ></a>
                                </li>
                                <li>
                                    <a href="#"
                                       ><i class="fa fa-instagram" aria-hidden="true"></i
                                        ></a>
                                </li>
                                <li>
                                    <a href="#"
                                       ><i class="fa fa-skype" aria-hidden="true"></i
                                        ></a>
                                </li>
                                <li>
                                    <a href="#"
                                       ><i class="fa fa-pinterest" aria-hidden="true"></i
                                        ></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
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
