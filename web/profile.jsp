
<%-- 
Document   : profile
Created on : May 31, 2023, 12:39:06 AM
Author     : minhhieu
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <jsp:include page="header.jsp" />
        <title>Hot Food</title>
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

        <!-- font  -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Oswald:wght@600&display=swap"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="styles/profile.css" />
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
        <div class="super_container">
            <!-- Header -->



            <div
                class="container"
                style="
                max-width: 1200px;
                margin-top: 150px;
                padding: 0 50px;
                max-height: auto;
                "
                >
                <div class="row row-cart justify-content-between">
                    <div class="col-md-4 cart pb-5 pl-1 mb-4 left-profile">
                        <div class="container pt-5 pl-5">
                            <div class="row justify-content-center flex-wrap pt-3 pb-4">
                                <div class="col-md-12 pt-5 pb-4">
                                    <div class="logo_container">
                                        <a href="home"style="font-size: 42px; color: white; line-height: 40px">hot<br /><span>food</span></a >
                                    </div>
                                </div>
                                <div class="col-md-12 pt-4">
                                    <div class="title-wrapper">
                                        <h3
                                            style="
                                            font-family: 'Oswald', sans-serif;
                                            text-transform: uppercase;
                                            font-weight: normal;
                                            line-height: 35px;
                                            color: white;
                                            margin-bottom: 5px;
                                            font-size: 23px;
                                            "
                                            >
                                            Hello,
                                            <br />
                                            ${sessionScope.user.aFullname}
                                        </h3>
                                        <p>
                                            <a href="logout">Logout</a>
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div
                                class="row d-flex flex-wrap justify-content-between mb-3 mt-3 pr-2"
                                >
                                <ul class="nav w-75 col-sm-12">
                                    <li class="nav-item">
                                        <a
                                            class="btn btn-link"
                                            href="purchase"
                                            >Orders Placed</a
                                        >
                                    </li>
                                    <li class="nav-item">
                                        <a
                                            class="btn btn-link"
                                            id="favoriteorder"
                                            data-toggle="tab"
                                            href="#favorite_order"
                                            role="tab"
                                            aria-controls="content1"
                                            aria-selected="false"
                                            onclick="changeColor(event)"
                                            >Favorite Products</a
                                        >
                                    </li>
                                    <li class="nav-item">
                                        <a
                                            class="btn btn-link"
                                            id="accountdetails"
                                            data-toggle="tab"
                                            href="#account_details"
                                            role="tab"
                                            aria-controls="content1"
                                            aria-selected="false"
                                            onclick="changeColor(event)"
                                            >Account Details</a
                                        >
                                    </li>
                                    <li class="nav-item">
                                        <a
                                            class="btn btn-link"
                                            id="setpassword"
                                            data-toggle="tab"
                                            href="#set_password"
                                            role="tab"
                                            aria-controls="content1"
                                            aria-selected="false"
                                            onclick="changeColor(event)"
                                            >Reset Password</a
                                        >
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-7 cart pl-0">
                        <!-- orderplaced -->
                        <div class="tab-content">
                            <!-- Để các thẻ container không xuống hàng-->

                            <!--                            <div
                                                            class="container tab-pane fade"
                                                            id="order_placed"
                                                            role="tabpanel"
                                                            aria-labelledby="orderplaced" >
                                                            <div class="card-body pl-2 pt-2">
                                                                <h3>orders placed</h3>
                                                            </div>
                            
                                                            <section>
                                                                <div class="card-title pt-4">
                                                                <div class="container">
                                                                    <div class="col-12">
                                                                        <div id="accordion" style="margin-bottom: 30px">
                                                                            <div class="card mb-3">
                                                                                <div class="card-header" role="tab"  id="peterhead" data-toggle="collapse" data-target="#peter">
                                                                                    <div class="d-flex justify-content-between align-items-center" >
                                                                                        <div>
                                                                                            <h5 class="mb-0">
                                                                                                <a> Ngay 14 thang 6 NAM 2023 </a>
                                                                                            </h5>
                                                                                        </div>
                            
                                                                                        <div class="d-flex mt-2 pl-5 ml-md-0">
                                                                                            <h5>160.000d</h5>
                                                                                            <i class="fa fa-angle-down ml-3" aria-hidden="true"></i>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                            
                                                                                <div class="collapse container" id="peter" data-parent="#accordion" >
                                                                                    <div class="card-body d-flex justify-content-between align-items-center overflow-hidden pb-3">
                                                                                         <div class="row cart-left d-flex align-items-center overflow-hidden " > 
                                                                                        <div class="col-md-3 ml-0 pl-0">
                                                                                            <img src="images/banner_1.jpg" alt="" class="img-fluid rounded-0 " />
                                                                                        </div>
                                                                                        <div class="col-md-5">
                                                                                            <span>3 san pham ga </span>
                                                                                        </div>
                                                                                        <div class="col-md-3 d-flex justify-content-end">
                                                                                            <span>50000</span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="card-body d-flex justify-content-between align-items-center overflow-hidden pb-3">
                                                                                         <div class="row cart-left d-flex align-items-center overflow-hidden " > 
                                                                                        <div class="col-md-3 ml-0 pl-0">
                                                                                            <img src="images/banner_1.jpg" alt="" class="img-fluid rounded-0 " />
                                                                                        </div>
                                                                                        <div class="col-md-5">
                                                                                            <span>2 san pham hambuger </span>
                                                                                        </div>
                                                                                        <div class="col-md-3 d-flex justify-content-end">
                                                                                            <span>50000</span>
                                                                                        </div>
                                                                                    </div>
                            
                                                                                </div>
                                                                            </div>
                            
                            
                                                                            order 2
                                                                            <div class="card mb-3">
                                                                                <div class="card-header" role="tab"  id="peterhead" data-toggle="collapse" data-target="#2">
                                                                                    <div class="d-flex justify-content-between align-items-center" >
                                                                                        <div>
                                                                                            <h5 class="mb-0">
                                                                                                <a> Ngay 20 thang 5 NAM 2023 </a>
                                                                                            </h5>
                                                                                        </div>
                            
                                                                                        <div class="d-flex mt-2 pl-5 ml-md-0">
                                                                                            <h5>160.000d</h5>
                                                                                            <i class="fa fa-angle-down ml-3" aria-hidden="true"></i>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                            
                                                                                <div class="collapse container" id="2" data-parent="#accordion" >
                                                                                    <div class="card-body d-flex justify-content-between align-items-center overflow-hidden pb-3">
                                                                                         <div class="row cart-left d-flex align-items-center overflow-hidden " > 
                                                                                        <div class="col-md-3 ml-0 pl-0">
                                                                                            <img src="images/banner_1.jpg" alt="" class="img-fluid rounded-0 " />
                                                                                        </div>
                                                                                        <div class="col-md-5">
                                                                                            <span>2 san pham hambuger </span>
                                                                                        </div>
                                                                                        <div class="col-md-3 d-flex justify-content-end">
                                                                                            <span>50000</span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="card-body d-flex justify-content-between align-items-center overflow-hidden pb-3">
                                                                                         <div class="row cart-left d-flex align-items-center overflow-hidden " > 
                                                                                        <div class="col-md-3 ml-0 pl-0">
                                                                                            <img src="images/banner_1.jpg" alt="" class="img-fluid rounded-0 " />
                                                                                        </div>
                                                                                        <div class="col-md-5">
                                                                                            <span>2 san pham hambuger </span>
                                                                                        </div>
                                                                                        <div class="col-md-3 d-flex justify-content-end">
                                                                                            <span>50000</span>
                                                                                        </div>
                                                                                    </div>
                            
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </section>
                                                        </div>-->
                            <!-- favoriteorder -->
                            <div
                                class="container tab-pane fade"
                                id="favorite_order"
                                role="tabpanel"
                                aria-labelledby="favoriteorder"
                                >
                                <div class="card-body pl-2 pt-2">
                                    <h3>Favorite Products</h3>
                                </div>
                                <div class="card-title pt-4">
                                    <div class="container">
                                        <div class="row">
                                            <!-- Product 1 -->
                                            <c:forEach items="${sessionScope.listF}" var="p">       
                                                <div class="col-3">
                                                    <div class="product discount product_filter">
                                                        <div class="product_image">
                                                            <img src="${p.items.pImg}" alt="" />
                                                        </div>

                                                        <div class="favorite favorite_left"></div>
<!--                                                        <div
                                                            class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"
                                                            >
                                                            <span>-$20</span>
                                                        </div>-->
                                                        <div class="product_info">
                                                            <h6 class="product_name">
                                                                <a href="detail?pId=${p.items.pId}"
                                                                   >${p.items.pName}</a
                                                                >
                                                            </h6>
                                                            <div class="product_price">${p.items.pPrice}</div>
                                                        </div>
                                                    </div>
                                                    <div class="red_button add_to_cart_button">
                                                        <a href="#">add to cart</a>
                                                    </div>
                                                </div>
                                        </c:forEach>    
                                        <!-- Product 2 -->

                                        <!--                                            <div class="col-3">
                                                                                        <div class="product product_filter">
                                                                                            <div class="product_image">
                                                                                                <img src="images/product_2.png" alt="" />
                                                                                            </div>
                                                                                            <div class="favorite"></div>
                                                                                            <div
                                                                                                class="product_bubble product_bubble_left product_bubble_green d-flex flex-column align-items-center"
                                                                                                >
                                                                                                <span>new</span>
                                                                                            </div>
                                                                                            <div class="product_info">
                                                                                                <h6 class="product_name">
                                                                                                    <a href="single.html"
                                                                                                       >Samsung CF591 Series Curved 27-Inch FHD
                                                                                                        Monitor</a
                                                                                                    >
                                                                                                </h6>
                                                                                                <div class="product_price">$610.00</div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="red_button add_to_cart_button">
                                                                                            <a href="#">add to cart</a>
                                                                                        </div>
                                                                                    </div>
                                        
                                                                                     Product 3 
                                        
                                                                                    <div class="col-3">
                                                                                        <div class="product product_filter">
                                                                                            <div class="product_image">
                                                                                                <img src="images/product_3.png" alt="" />
                                                                                            </div>
                                                                                            <div class="favorite"></div>
                                                                                            <div class="product_info">
                                                                                                <h6 class="product_name">
                                                                                                    <a href="single.html"
                                                                                                       >Blue Yeti USB Microphone Blackout Edition</a
                                                                                                    >
                                                                                                </h6>
                                                                                                <div class="product_price">$120.00</div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="red_button add_to_cart_button">
                                                                                            <a href="#">add to cart</a>
                                                                                        </div>
                                                                                    </div>
                                        
                                                                                     Product 4 
                                        
                                                                                    <div class="col-3">
                                                                                        <div class="product product_filter">
                                                                                            <div class="product_image">
                                                                                                <img src="images/product_4.png" alt="" />
                                                                                            </div>
                                                                                            <div
                                                                                                class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"
                                                                                                >
                                                                                                <span>sale</span>
                                                                                            </div>
                                                                                            <div class="favorite favorite_left"></div>
                                                                                            <div class="product_info">
                                                                                                <h6 class="product_name">
                                                                                                    <a href="single.html"
                                                                                                       >DYMO LabelWriter 450 Turbo Thermal Label
                                                                                                        Printer</a
                                                                                                    >
                                                                                                </h6>
                                                                                                <div class="product_price">$410.00</div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="red_button add_to_cart_button">
                                                                                            <a href="#">add to cart</a>
                                                                                        </div>
                                                                                    </div>
                                        
                                                                                     Product 5 
                                        
                                                                                    <div class="col-3">
                                                                                        <div class="product product_filter">
                                                                                            <div class="product_image">
                                                                                                <img src="images/product_5.png" alt="" />
                                                                                            </div>
                                                                                            <div class="favorite"></div>
                                                                                            <div class="product_info">
                                                                                                <h6 class="product_name">
                                                                                                    <a href="single.html"
                                                                                                       >Pryma Headphones, Rose Gold & Grey</a
                                                                                                    >
                                                                                                </h6>
                                                                                                <div class="product_price">$180.00</div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="red_button add_to_cart_button">
                                                                                            <a href="#">add to cart</a>
                                                                                        </div>
                                                                                    </div>
                                        
                                                                                     Product 6 
                                        
                                                                                    <div class="col-3">
                                                                                        <div class="product discount product_filter">
                                                                                            <div class="product_image">
                                                                                                <img src="images/product_6.png" alt="" />
                                                                                            </div>
                                                                                            <div class="favorite favorite_left"></div>
                                                                                            <div
                                                                                                class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"
                                                                                                >
                                                                                                <span>-$20</span>
                                                                                            </div>
                                                                                            <div class="product_info">
                                                                                                <h6 class="product_name">
                                                                                                    <a href="#single.html"
                                                                                                       >Fujifilm X100T 16 MP Digital Camera (Silver)</a
                                                                                                    >
                                                                                                </h6>
                                                                                                <div class="product_price">
                                                                                                    $520.00
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="red_button add_to_cart_button">
                                                                                            <a href="#">add to cart</a>
                                                                                        </div>
                                                                                    </div>
                                        
                                                                                     Product 7 
                                        
                                                                                    <div class="col-3">
                                                                                        <div class="product product_filter">
                                                                                            <div class="product_image">
                                                                                                <img src="images/product_7.png" alt="" />
                                                                                            </div>
                                                                                            <div class="favorite"></div>
                                                                                            <div class="product_info">
                                                                                                <h6 class="product_name">
                                                                                                    <a href="single.html"
                                                                                                       >Samsung CF591 Series Curved 27-Inch FHD
                                                                                                        Monitor</a
                                                                                                    >
                                                                                                </h6>
                                                                                                <div class="product_price">$610.00</div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="red_button add_to_cart_button">
                                                                                            <a href="#">add to cart</a>
                                                                                        </div>
                                                                                    </div>
                                        
                                                                                     Product 8 
                                        
                                                                                    <div class="col-3">
                                                                                        <div class="product product_filter">
                                                                                            <div class="product_image">
                                                                                                <img src="images/product_8.png" alt="" />
                                                                                            </div>
                                                                                            <div class="favorite"></div>
                                                                                            <div class="product_info">
                                                                                                <h6 class="product_name">
                                                                                                    <a href="single.html"
                                                                                                       >Blue Yeti USB Microphone Blackout Edition</a
                                                                                                    >
                                                                                                </h6>
                                                                                                <div class="product_price">$120.00</div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="red_button add_to_cart_button">
                                                                                            <a href="#">add to cart</a>
                                                                                        </div>
                                                                                    </div>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- account detail -->
                        <div
                            class="container tab-pane fade show active"
                            id="account_details"
                            role="tabpanel"
                            aria-labelledby="accountdetails"
                            >
                            <div class="card-body pl-2 pt-2">
                                <h3>account details</h3>
                            </div>
                            <div class="card-title pt-4">
                                <form action="UpdateProfile" method="" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <div class="col-12 infor-detail">
                                            <label class="label-detail">Full Name: </label>
                                            <input class="input-detail" type="text" name="fullname"  value="${sessionScope.user.aFullname}" />
                                        </div>
                                        <div class="col-12 infor-detail">
                                            <label class="label-detail">Phone Number:</label>
                                            <input class="input-detail" type="text" name="phone" value="${sessionScope.user.aPhone}" />
                                        </div>
                                        <div class="col-12 infor-detail">
                                            <label class="label-detail">Address:</label>
                                            <input class="input-detail" type="text" name="address" value="${sessionScope.user.aAddress}" />
                                        </div>
                                        <div class="col-12 infor-detail mb-4">
                                            <label class="label-detail">Email:</label>
                                            <input class="input-detail" type="text" name="email" value="${sessionScope.user.aEmail}" />
                                        </div>
                                        <div class="col-12">
                                            <button class="btn btn-primary w-100 button-detail">
                                                Update
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <!-- resetpassword -->
                        <div
                            class="container tab-pane fade"
                            id="set_password"
                            role="tabpanel"
                            aria-labelledby="setpassword"
                            >
                            <div class="card-body pl-2 pt-2">
                                <h3>Reset Password</h3>
                            </div>
                            <div class="card-title pt-4">
                                <form action="ResetPass" method="">
                                    <div class="form-group">
                                        <!--<p style=" color: #848a96 ;padding: 10px 0; margin: 0 100px 40px 100px;  background-color: rgba(255, 102, 102, 0.5); border-radius: 10px; text-align: center">${mess}</p>-->
                                        <c:choose>
                                            <c:when test="${mess == null}">

                                            </c:when>
                                            <c:otherwise>
                                                <p style=" color: #4c5057 ;padding: 10px 0; margin: 0 100px 40px 100px;  background-color: rgba(255, 102, 102, 0.5); border-radius: 10px; text-align: center">${mess}</p>

                                            </c:otherwise>
                                        </c:choose>    
                                        <div class="col-12 infor-detail">
                                            <label class="label-detail">Old Password:</label>
                                            <input class="input-detail" type="password" name="oldpass" required />
                                        </div>
                                        <div class="col-12 infor-detail">
                                            <label class="label-detail">New Password:</label><span class="txt_red" id="error_pass"></span>
                                            <input class="input-detail" type="password" id="password" name="newpass" onblur="checkPass();"  oninput="checkRepass();"/>
                                        </div>
                                        <div class="col-12 infor-detail">
                                            <label class="label-detail" >Repeat New Password:</label > <span class="txt_red" id="error_repass"></span>
                                            <input class="input-detail" type="password" id="repass" name="renewpass" oninput="checkRepass();"/>
                                        </div>

                                        <div class="col-12">
                                            <button class="btn btn-primary w-100 button-detail">
                                                Reset
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
        <!-- Footer -->

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
    </div>


    <script src="js/signup.js"></script>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="styles/bootstrap4/popper.js"></script>
    <script src="styles/bootstrap4/bootstrap.min.js"></script>
    <script src="plugins/Isotope/isotope.pkgd.min.js"></script>
    <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
    <script src="plugins/easing/easing.js"></script>
    <script src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="js/categories_custom.js"></script>
    <script>
                                                function changeColor(event) {
                                                    event.preventDefault();
                                                    var link = event.target;

                                                    var links = document.getElementsByClassName("btn btn-link");
                                                    for (var i = 0; i < links.length; i++) {
                                                        links[i].classList.remove("active-link");
                                                    }

                                                    link.classList.add("active-link");
                                                }

                                                document.addEventListener("DOMContentLoaded", function () {
                                                    var accountDetailsLink = document.getElementById("accountdetails");
                                                    accountDetailsLink.classList.add("active-link");
                                                });

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


