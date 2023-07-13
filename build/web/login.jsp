<%-- 
    Document   : login.jsp
    Created on : May 16, 2023, 2:09:26 PM
    Author     : minhhieu
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />



        <link
            href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
            rel="stylesheet"
            type="text/css"
            />
        <link
            rel="shortcut icon"
            href="images/logo-title4.png"
            type="image/x-icon"
            />
        <link rel="stylesheet" href="styles/login.css" />
        <title>Login Hot Food</title>
        <style>
            #container{
                height: 690px;
            }
            input{
                padding: 12px 15px;
                margin: 15px 0;
                /*width: 300px;  Đặt chiều rộng của trường input */
                height: 35px;
                border-radius: 5px;
                border-: none;
            }
            .social-container {
                margin: 10px 0 10px 0;
            }
        </style>
    </head>
    <body>
        <div class="container" id="container">
            <div class="form-container sign-up-container">
                <form action="login" method="post">
                    <h1 style="margin-bottom: 5px; color: #3b3b4d; padding-top: 20px">Create Account</h1>
                    <div class="social-container mb-0">
                        <!--            <a href="#" class="social"
                                      ><i class="fa fa-facebook" aria-hidden="true"></i
                                    ></a>-->
                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile&redirect_uri=http://localhost:8080/Final_Project_SWE391/GoogleSignInServlet&response_type=code
                           &client_id=47980504396-boe53k1d63t9639n02bdob58ki3fnkjb.apps.googleusercontent.com&approval_prompt=force" class="social">
                            <i class="fa fa-google" aria-hidden="true"></i
                            ></a> 
                    </div>

                    <c:choose>
                        <c:when test="${status1 == null}">
                        </c:when>
                        <c:otherwise>
                            <p style=" font-size: 12px;color: #4c5057 ;padding: 10px 25px; margin: 5px 0;  background-color: rgba(255, 102, 102, 0.5); border-radius: 10px; text-align: center">${status1}${status}</p>
                        </c:otherwise>
                    </c:choose>    
                    <span style="margin:10px 0;">or use your email for registration</span>
                    <input type="hidden" name="opption" value="register"/>
                    <input type="text" value="${fullname}" name="fullname" placeholder="Full-Name" oninput="checkFullname();" />
                    <input type="text" name="username1" placeholder="Username" required/>
                    <input type="password" name="password1" placeholder="New password" required/>
                    <input type="email" name="email" placeholder="Email" required/>
                    <input type="text" value="${address}"name="address" placeholder="Address" required/>
                    <input type="tel" value="${phoneNum}" name="phone" placeholder="Phone number" oninput="checkInput();" id="txt_phone"required/>
                    <span id="error"></span>
                    <button style="margin-top: 5px;">Sign Up</button>
                </form>
            </div>
            <div class="form-container sign-in-container">
                <form action="login" method="post">
                    <h1 style="margin-bottom: 15px; color: #3b3b4d">Sign in</h1>
                    <div class="social-container">
                        <!--            <a href="#" class="social"
                                      ><i class="fa fa-facebook" aria-hidden="true"></i
                                    ></a>-->
                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile&redirect_uri=http://localhost:8080/Final_Project_SWE391/GoogleSignInServlet&response_type=code
                           &client_id=47980504396-boe53k1d63t9639n02bdob58ki3fnkjb.apps.googleusercontent.com&approval_prompt=force" 
                           class="social">
                            <i class="fa fa-google" aria-hidden="true"></i
                            ></a>
                    </div>
                    <span style="margin: 5px 0 20px 0;">or use your account</span>
                    <c:choose>
                        <c:when test="${status == null && mess == null}">
                        </c:when>
                        <c:otherwise>
                            <p style=" font-size: 12px;color: #4c5057 ;padding: 10px 20px; margin: 5px 0;  background-color: rgba(255, 102, 102, 0.5); border-radius: 10px; text-align: center">${status}${mess}</p>
                        </c:otherwise>
                    </c:choose>  
                    <input type="hidden" name="opption" value="login"/>
                    <input type="text" name="username" placeholder="Username or email address" required />
                    <input type="password" name="password" placeholder="Password" required />
                    <a href="sendEmail.jsp" style="margin: 30px 0">Forgot your password?</a>
                    <button>Sign In</button>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1 style="color: #1e1e27">Welcome <span>back</span></h1>
                        <p>
                            Quickly log in, to avoid hunger
                        </p>
                        <button class="ghost" id="signIn">Sign In</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1><a href="home">hot<span>food</span></a></h1>
                        <p>Enter your personal information and start ordering our food</p>
                        <button class="ghost" id="signUp">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>
        <script>

        </script>
        <script src="js/login.js"></script>
    </body>
</html>
