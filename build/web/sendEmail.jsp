<%-- 
    Document   : sendEmail
    Created on : Jun 22, 2023, 7:42:19 AM
    Author     : minhhieu
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
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
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Oswald:wght@600&display=swap"
            rel="stylesheet"
            />

        <link rel="stylesheet" href="styles/sendEmail2.jsp.css" />
        <style>
            .note{
                background-color: rgba(255, 102, 102, 0.5);
                color: #4c5057;
                margin: 15px 0 5px 0;
                text-align: center;
                width: 100%;
                padding: 20px;
                border-radius: 5px;
            }
            .input-detail input{
                margin: 20px 0 20px 0;
            }
        </style>
    </head>
    <body>
        <div class="super_container">
            <div class="container-fluid">
                <div class="header-reset">
                    <h1>HOT<span>FOOD</span></h1>
                </div>
            </div>
            <div class="container content-reset">
                <div class="row justify-content-center align-items-center ">
                    <h2>Password Reset</h2>
                </div>
                <div class="row justify-content-center align-items-center mt-4">
                    <h6>
                        Enter your email address used for registration. We will send you an
                        email to reset your password
                    </h6>



                </div>
                <div class="input-detail">
                    <form action="ForgotPassMail">
                        <div class="row">
                            <span>Your email address </span>
                            <br />
                            <input type="text" name="to" placeholder="Input your email address" />

                        </div>
                        <div class="button-send text-center">
                            <button type="submit" class="btn button-detail mb-1">Send</button>
                        </div>
                    </form>
                    <div class="container w-100 d-flex justify-content-center mb-4">
                        <c:choose>
                            <c:when test="${note == null}">
                            </c:when>
                            <c:otherwise>
                                <span class="note" name="note">${note}</span>
                            </c:otherwise>
                        </c:choose>    
                    </div>
                    <div class="check-out text-center mt-3">
                        <span>If you need help, check out <a href="#">Hotfood Support</a></span>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>

