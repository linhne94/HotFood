<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Hot Food</title>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="description" content="Hot Food Template" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <jsp:include page="header.jsp" />
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

        <link rel="stylesheet" href="styles/signup.css" />
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
            .txt_red{
                color: #fe4c50;
                font-style: italic;
                /*font-family: "Oswald", sans-serif;*/
                font-size: 12px;
            }
        </style>
    </head>

    <body>
        <div class="super_container mt-5">
            <div
                class="container"
                style="max-width: auto; padding: 0 50px; max-height: auto; margin: auto"
                >
                <div class="row justify-content-between">
                    <div
                        class="col-md-5 cart pt-4 pr-4 pb-4  d-flex justify-content-center align-items-center left-signup"
                        >
                        <div class="row flex-wrap">
                            <div class="col-md-12">
                                <div class="container">
                                    <div class="col d-flex justify-content-center">
                                        <h1 style="color: #cccccc">Welcome <span>back</span></h1>
                                    </div>
                                    <p>Quickly log in to avoid hunger</p>
                                    <div class="login-btn">
                                        <button class="btn" onclick="window.location.href='login2.jsp'">Login</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                            class="row d-flex flex-wrap justify-content-between mb-3 mt-3 pr-2"
                            ></div>
                    </div>

                    <div class="col-md-6 cart pl-0 right-signup">
                        <!-- account detail -->
                        <div
                            class="container tab-pane fade show active"
                            id="account_details"
                            role="tabpanel"
                            aria-labelledby="accountdetails"
                            >
                            <div class="card-body mt-4 pl-2 pt-2">
                                <h3>CREATE YOUR ACCOUNT</h3>
                            </div>


                            <div class="card-title pt-2">
                                <form action="signup" method="post">
                                    <div class="form-group">
                                        <c:choose>
                                            <c:when test="${status1 == null}">
                                            </c:when>
                                            <c:otherwise>
                                                <p style=" font-size: 12px;color: #4c5057 ;padding: 10px 25px; margin: 5px 0;  background-color: rgba(255, 102, 102, 0.5); border-radius: 10px; text-align: center">${status1}${status}</p>
                                            </c:otherwise>
                                        </c:choose>   
                                        <div class="col-12 infor-detail">
                                            <label class="label-detail" for="username">Full Name:</label > <span class="txt_red" id="error_name"></span>
                                            <input class="input-detail" type="text" value="${fullname}" id="fullname" name="fullname" required onblur="checkName();" />
                                        </div>
                                        <div class="col-12 infor-detail">
                                            <label class="label-detail" for="username" >User name:</label  >
                                            <input class="input-detail" type="text" id="username" name="username1" required />
                                        </div>
                                        <div class="col-12 infor-detail">
                                            <label class="label-detail" for="username" >Password:</label ><span class="txt_red" id="error_pass"></span>
                                            <input class="input-detail" type="password" id="password" name="password1"required onblur="checkPass();"/>
                                        </div>
                                        <div class="col-12 infor-detail ">
                                            <label class="label-detail" for="username">Email:</label> <span class="txt_red" id="error_email"></span>
                                            <input class="input-detail" type="email" id="email" name="email"  required/>
                                        </div>
                                        <div class="col-12 infor-detail">
                                            <label class="label-detail" for="username">Phone Number:</label> <span class="txt_red" id="error_phone"></span>
                                            <input class="input-detail" 
                                                   onkeydown="return event.key >= '0' && event.key <= '9' || event.key === 'Backspace' || event.key === 'Delete' || event.key === 'ArrowLeft' || event.key === 'ArrowRight' || event.key === 'Tab'" 
                                                   type="tel" id="phone"  value="${phoneNum}" name="phone" required onblur="checkPhone();" />
                                        </div>
                                        <div class="col-12 infor-detail mb-4">
                                            <label class="label-detail" for="username" >Address:</label>
                                            <input class="input-detail" type="text" id="address"  value="${address}"name="address"required />
                                        </div>

                                        <div class="col-12">
                                            <button class="btn btn-primary w-100 button-detail">
                                                Sign Up
                                            </button>
                                        </div>
                                        <div class="col-12 continue pt-4">
                                            <h5>Or continue with</h5>
                                        </div>
                                        <div class="col-12 social-container d-flex justify-content-center">
                                            <button class="btn btn-primary w-100 button-google">
                                                <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile&redirect_uri=http://localhost:8080/Final_Project_SWE391/GoogleSignInServlet&response_type=code
                                                   &client_id=47980504396-boe53k1d63t9639n02bdob58ki3fnkjb.apps.googleusercontent.com&approval_prompt=force">Sign up with Google<i style="font-size: 30px; " class="fa fa-google ml-3" aria-hidden="true"></i
                                                    ></a>
                                            </button>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
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
    </body>
    <script src="js/signup.js"></script>
</html>

