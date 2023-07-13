<%-- 
    Document   : index.jsp
    Created on : May 16, 2023, 2:04:05 PM
    Author     : minhhieu
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.stream.Collectors" %>
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
        <link rel="stylesheet" href="styles/myCss.css" />
        <link rel="stylesheet" href="styles/search.css" />
        <style>
        </style>
    </head>

    <body>
        <jsp:include page="header.jsp" />
        <div class="new_arrivals" style="margin-top: 150px;">
            <div class="container">
                <c:choose>
                    <c:when test="${product_size == '0'}">
                        <h1>No item match your search!</h1>
                    </c:when>    
                    <c:otherwise>
                        <div class="row">
                            <div class="breadcrumbs d-flex flex-row align-items-center">
                                <ul>
                                    <li>
                                        <p>Here are result of your search for: " <%= request.getParameter("txt")%> "</p>                               
                                    </li>

                                </ul>
                            </div>
                        </div>
                        <div class="row"> 


                            <div class="col">
                                <div
                                    class="product-grid"
                                    data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'
                                    >

                                    <c:forEach items="${product}" var="p" >

                                        <div class="product-item hh${p.getCateID()}"> <!-- fix name "men" to CateName -->
                                            <div class="product discount product_filter">
                                                <div class="product_image">
                                                    <img src="${p.pImg}" alt="" /> <!-- img -->
                                                </div>
                                                <div class="favorite favorite_left"></div>

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
                                                <a href="#">add to cart</a>
                                            </div>
                                        </div>
                                    </c:forEach>  
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>



        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="styles/bootstrap4/popper.js"></script>
        <script src="styles/bootstrap4/bootstrap.min.js"></script>
        <script src="plugins/Isotope/isotope.pkgd.min.js"></script>
        <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
        <script src="plugins/easing/easing.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>