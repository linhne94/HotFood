<%-- 
    Document   : resetPass
    Created on : Jun 22, 2023, 7:46:19 AM
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
                padding: 15px;
                border-radius: 5px;
            }
            .input-detail input{
                margin: 20px 0 20px 0;
            }
            .login{
                margin-top: 30px;
                margin-bottom:  30px;
            }
            .txt_red{
                color: #fe4c50;
                font-style: italic;
                /*font-family: "Oswald", sans-serif;*/
                font-size: 12px;
            }

            .label-detail{
                font-weight: bold;
            }
            .input-detail .row > span{
                font-weight: normal;
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
                <div class="row justify-content-center align-items-center">
                    <h2>Update    Password</h2>
                </div>
                <!-- <div class="row justify-content-center align-items-center mt-4">
                  <h6>
                    Enter your email address used for registration. We will send you an
                    email to reset your password
                  </h6>
                </div> -->
                <form action="changePassSuccess" method="post">
                    <div class="input-detail">
                        <div class="row">
                            <label class="label-detail">Your email: </label>
                            <br />
                            <input type="text" name="email" value="${email}" readonly/>
                        </div>

                        <div class="row">
                            <label class="label-detail">Your new password: </label><span class="txt_red" id="error_pass"></span>
                            <br />
                            <input type="password" id="password" name="newpass" placeholder="Input your new password" onblur="checkPass();"  oninput="checkRepass();" />
                        </div>

                        <div class="row">
                            <label class="label-detail" >Repeat new password: </label> <span class="txt_red" id="error_repass"></span>
                            <br />
                            <input type="password" id="repass" name="repeatpass" placeholder="Input repeat new password" oninput="checkRepass();" />
                        </div>


                        <div class="button-send d-flex justify-content-center align-content-center text-center">
                            <button class="btn button-detail mb-1">Update</button>
                        </div>
                        <c:choose>
                            <c:when test="${note == null}">
                            </c:when>
                            <c:otherwise>
                                <div class="container w-100 d-flex justify-content-center mt-3 mb-3">
                                    <span class="note">${note}</span>
                                </div>
                            </c:otherwise>
                        </c:choose>
                        <div class="check-out text-center mt-3">
                            <span
                                >If you need help, check out <a href="#">Hotfood Support</a></span >
                        </div>

                        <div class="row login">
                            <span
                                ><a href="login"><i class="fa fa-arrow-left" aria-hidden="true"></i> Back to login </a></span >
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <script>
            function checkPass() {
                var pass = document.getElementById("password").value;
                var checkPass = document.getElementById("error_pass");
                var regexPass = /^(?=.*[A-Z])(?=.*[!@#$&*_+=\-?.])(?=.*[0-9]).{8,}$/;

                if (!regexPass.test(pass)) {
                    checkPass.innerHTML = "( Password is not strong! Must have at least 1 uppercase letter, 1 lowercase letter, 1 number and 1 special character )";
                } else {
                    checkPass.innerHTML = "";
                }
            }
            function checkRepass() {
                var pass = document.getElementById("password").value;
                var repass = document.getElementById("repass").value;
                var checkRepass = document.getElementById("error_repass");
                if (pass !== repass) {
                    checkRepass.innerHTML = "( Password is not the same as repassword! )";
                } else {
                    checkRepass.innerHTML = "";
                }
            }
        </script>
    </body>
</html>