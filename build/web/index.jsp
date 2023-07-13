
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : index.jsp
    Created on : May 16, 2023, 2:04:05 PM
    Author     : minhhieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
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
        <link rel="stylesheet" type="text/css" href="styles/main_styles.css" />
        <link rel="stylesheet" type="text/css" href="styles/responsive.css" />
        <link rel="stylesheet" href="styles/myCss.css" />
        <style>

        </style>
    </head>

    <body>
        <div class="super_container">
            <!-- Header  -->

            <jsp:include page="header.jsp" />

            <!-- Slider -->

            <div class="main_slider" style="background-image: url(images/logo2.jpg)">
                <div class="container fill_height">
                    <div class="row align-items-center fill_height">
                        <div class="col">
                            <div class="main_slider_content">
                                
                                <c:if test="${empty sessionScope.user}">
                                    <h6>Welcome to Hot Food</h6>
                                </c:if>

                                <c:if test="${not empty sessionScope.user}">
                                    <h6>Welcome back ${sessionScope.user.aFullname}</h6>
                                </c:if>

                                <h1>low cost - high quality</h1>
                                <div class="red_button shop_now_button">
                                    <a href="#">shop now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Banner -->

            <div class="banner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div
                                class="banner_item align-items-center"
                                style="background-image: url(images/banner_chicken.jpg)"
                                >
                                <div class="banner_category">
                                    <a href="category?cId=2">fried chicken</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div
                                class="banner_item align-items-center"
                                style="background-image: url(images/banner_pizza.jpg)"
                                >
                                <div class="banner_category">
                                    <a href="category?cId=4">pizza</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div
                                class="banner_item align-items-center"
                                style="background-image: url(images/banner_hamburger4.jpg)"
                                >
                                <div class="banner_category">
                                    <a href="category?cId=3">hamburger</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Menu -->
            <div class="new_arrivals">
                <div class="container">
                    <div class="row">
                        <div class="col text-center">
                            <div class="section_title new_arrivals_title">
                                <h2>Menu</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col text-center">
                            <div class="new_arrivals_sorting">
                                <ul
                                    class="arrivals_grid_sorting clearfix button-group filters-button-group"
                                    >
                                    <li
                                        class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center active is-checked"
                                        data-filter="*"
                                        >
                                        all <!-- catename -->
                                    </li>
                                    <c:forEach items="${cate}" var="c" >
                                        <li
                                            class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center"
                                            data-filter=".hh${c.cId}"> <!-- Women change to CateName là lum. -->
                                            ${c.cName}
                                        </li>
                                    </c:forEach>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div
                                class="product-grid"
                                data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'
                                >
                                <!-- Product 1 -->
                                <c:forEach items="${product}" var="p" >
                                    <div class="product-item hh${p.getCateID()}"> <!-- fix name "men" to CateName -->
                                        <div class="product discount product_filter">
                                            <div class="product_image">
                                                <img src="${p.pImg}" alt="" /> <!-- img -->
                                            </div>
                                            <a href="AddFavourite?pid=${p.getpId()}">
                                                <div class="favorite favorite_left"></div>
                                            </a>
                                            <!--                                            <div
                                                                                            class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"
                                                                                            >
                                                                                            <span>-$20</span>   
                                                                                        </div>--> <!-- Giam gia -->
                                            <div class="product_info">
                                                <h6 class="product_name">
                                                    <a href="detail?pId=${p.pId}"
                                                       >${p.pName}</a 
                                                    > <!-- Pname -->
                                                </h6>
                                                <div class="product_price">
                                                    ${p.pPrice} VNÐ 
                                                    <!--                                                    <span>$590.00</span>-->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="red_button add_to_cart_button">
                                            <c:if test="${not empty sessionScope.user}">
                                                <a href="AddtoCart?pid=${p.pId}">add to cart</a>
                                            </c:if>
                                            <c:if test="${empty sessionScope.user}">
                                                <a href="login">add to cart</a>
                                            </c:if>
                                        </div>
                                    </div>
                                </c:forEach>    


                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Deal of the week -->

            <div class="deal_ofthe_week">
                <div class="container" style="margin-left: 0; max-width: 92%">
                    <div class="row align-items-center">
                        <div class="col-lg-6" style="padding-left: 0">
                            <div class="deal_ofthe_week_img">
                                <img src="images/deal_week2.jpg" alt="" />
                            </div>
                        </div>
                        <div class="col-lg-6 text-right deal_ofthe_week_col">
                            <div
                                class="deal_ofthe_week_content d-flex flex-column align-items-center float-right"
                                >
                                <div class="section_title">
                                    <h2>Deal Of The Week</h2>
                                </div>
                                <ul class="timer">
                                    <li
                                        class="d-inline-flex flex-column justify-content-center align-items-center"
                                        >
                                        <div id="day" class="timer_num">03</div>
                                        <div class="timer_unit">Day</div>
                                    </li>
                                    <li
                                        class="d-inline-flex flex-column justify-content-center align-items-center"
                                        >
                                        <div id="hour" class="timer_num">15</div>
                                        <div class="timer_unit">Hours</div>
                                    </li>
                                    <li
                                        class="d-inline-flex flex-column justify-content-center align-items-center"
                                        >
                                        <div id="minute" class="timer_num">45</div>
                                        <div class="timer_unit">Mins</div>
                                    </li>
                                    <li
                                        class="d-inline-flex flex-column justify-content-center align-items-center"
                                        >
                                        <div id="second" class="timer_num">23</div>
                                        <div class="timer_unit">Sec</div>
                                    </li>
                                </ul>
                                <div class="red_button deal_ofthe_week_button">
                                    <a href="#">shop now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Best Sellers -->

            <div class="best_sellers">
                <div class="container">
                    <div class="row">
                        <div class="col text-center">
                            <div class="section_title new_arrivals_title">
                                <h2>Best Sellers</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="product_slider_container">
                                <div class="owl-carousel owl-theme product_slider">
                                    <!-- Slide 1 -->


                                    <div class="owl-item product_slider_item">
                                        <div class="product-item">
                                            <div class="product discount">
                                                <div class="product_image">
                                                    <img src="images/1_fried_chicken.jpg" alt="" />
                                                </div>
                                                <div class="favorite favorite_left"></div>
                                                <div
                                                    class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"
                                                    >
                                                    <span>-$20</span>
                                                </div>
                                                <div class="product_info">
                                                    <h6 class="product_name">
                                                        <a href="single.jsp"
                                                           >Fried chicken</a
                                                        >
                                                    </h6>
                                                    <div class="product_price">
                                                        $520.00<span>$590.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Slide 2 -->

                                    <div class="owl-item product_slider_item">
                                        <div class="product-item women">
                                            <div class="product">
                                                <div class="product_image">
                                                    <img src="images/1_spicy_chicken.png" alt="" />
                                                </div>
                                                <div class="favorite"></div>
                                                <div
                                                    class="product_bubble product_bubble_left product_bubble_green d-flex flex-column align-items-center"
                                                    >
                                                    <span>new</span>
                                                </div>
                                                <div class="product_info">
                                                    <h6 class="product_name">
                                                        <a href="single.jsp"
                                                           >Spicy chicken</a
                                                        >
                                                    </h6>
                                                    <div class="product_price">$610.00</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Slide 3 -->

                                    <div class="owl-item product_slider_item">
                                        <div class="product-item women">
                                            <div class="product">
                                                <div class="product_image">
                                                    <img src="images/bacon_pizza.png" alt="" />
                                                </div>
                                                <div class="favorite"></div>
                                                <div class="product_info">
                                                    <h6 class="product_name">
                                                        <a href="single.jsp"
                                                           >Bacon Pizza</a
                                                        >
                                                    </h6>
                                                    <div class="product_price">$120.00</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Slide 4 -->

                                    <div class="owl-item product_slider_item">
                                        <div class="product-item accessories">
                                            <div class="product">
                                                <div class="product_image">
                                                    <img src="images/fish_burger.jpg" alt="" />
                                                </div>
                                                <div
                                                    class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"
                                                    >
                                                    <span>sale</span>
                                                </div>
                                                <div class="favorite favorite_left"></div>
                                                <div class="product_info">
                                                    <h6 class="product_name">
                                                        <a href="single.jsp"
                                                           >Fish Burger </a
                                                        >
                                                    </h6>
                                                    <div class="product_price">$410.00</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Slide 5 -->

                                    <div class="owl-item product_slider_item">
                                        <div class="product-item women men">
                                            <div class="product">
                                                <div class="product_image">
                                                    <img src="images/chicken_burger.jpg" alt="" />
                                                </div>
                                                <div class="favorite"></div>
                                                <div class="product_info">
                                                    <h6 class="product_name">
                                                        <a href="single.jsp"
                                                           >Chicken Burger </a
                                                        >
                                                    </h6>
                                                    <div class="product_price">$180.00</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Slide 6 -->

                                    <div class="owl-item product_slider_item">
                                        <div class="product-item accessories">
                                            <div class="product discount">
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
                                                        <a href="single.jsp"
                                                           >Fujifilm X100T 16 MP Digital Camera (Silver)</a
                                                        >
                                                    </h6>
                                                    <div class="product_price">
                                                        $520.00<span>$590.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Slide 7 -->

                                    <div class="owl-item product_slider_item">
                                        <div class="product-item women">
                                            <div class="product">
                                                <div class="product_image">
                                                    <img src="images/product_7.png" alt="" />
                                                </div>
                                                <div class="favorite"></div>
                                                <div class="product_info">
                                                    <h6 class="product_name">
                                                        <a href="single.jsp"
                                                           >Samsung CF591 Series Curved 27-Inch FHD
                                                            Monitor</a
                                                        >
                                                    </h6>
                                                    <div class="product_price">$610.00</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Slide 8 -->

                                    <div class="owl-item product_slider_item">
                                        <div class="product-item accessories">
                                            <div class="product">
                                                <div class="product_image">
                                                    <img src="images/product_8.png" alt="" />
                                                </div>
                                                <div class="favorite"></div>
                                                <div class="product_info">
                                                    <h6 class="product_name">
                                                        <a href="single.jsp"
                                                           >Blue Yeti USB Microphone Blackout Edition</a
                                                        >
                                                    </h6>
                                                    <div class="product_price">$120.00</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Slide 9 -->

                                    <div class="owl-item product_slider_item">
                                        <div class="product-item men">
                                            <div class="product">
                                                <div class="product_image">
                                                    <img src="images/product_9.png" alt="" />
                                                </div>
                                                <div
                                                    class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"
                                                    >
                                                    <span>sale</span>
                                                </div>
                                                <div class="favorite favorite_left"></div>
                                                <div class="product_info">
                                                    <h6 class="product_name">
                                                        <a href="single.jsp"
                                                           >DYMO LabelWriter 450 Turbo Thermal Label
                                                            Printer</a
                                                        >
                                                    </h6>
                                                    <div class="product_price">$410.00</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Slide 10 -->

                                    <div class="owl-item product_slider_item">
                                        <div class="product-item men">
                                            <div class="product">
                                                <div class="product_image">
                                                    <img src="images/product_10.png" alt="" />
                                                </div>
                                                <div class="favorite"></div>
                                                <div class="product_info">
                                                    <h6 class="product_name">
                                                        <a href="single.jsp"
                                                           >Pryma Headphones, Rose Gold & Grey</a
                                                        >
                                                    </h6>
                                                    <div class="product_price">$180.00</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
     <!-- Sua Best seller -->
                                <!-- Slider Navigation -->

                                <div
                                    class="product_slider_nav_left product_slider_nav d-flex align-items-center justify-content-center flex-column"
                                    >
                                    <i class="fa fa-chevron-left" aria-hidden="true"></i>
                                </div>
                                <div
                                    class="product_slider_nav_right product_slider_nav d-flex align-items-center justify-content-center flex-column"
                                    >
                                    <i class="fa fa-chevron-right" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--FOOTER VS BENEFIT-->

            <jsp:include page="footer.jsp"></jsp:include>

            <!--Javascript-->

        </div>

        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="styles/bootstrap4/popper.js"></script>
        <script src="styles/bootstrap4/bootstrap.min.js"></script>
        <script src="plugins/Isotope/isotope.pkgd.min.js"></script>
        <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
        <script src="plugins/easing/easing.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>

