<%-- 
    Document   : categories.jsp
    Created on : May 16, 2023, 2:08:39 PM
    Author     : minhhieu
--%>

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
    </head>

    <body>
        <div class="super_container">
            <!-- Header -->

            <jsp:include page="header.jsp"></jsp:include>


                <!--categories-->

                <div class="container product_section_container">
                    <div class="row">
                        <div class="col product_section clearfix">
                            <!-- Breadcrumbs -->

                            <div class="breadcrumbs d-flex flex-row align-items-center">
                                <ul>
                                    <li><a href="home">Home</a></li>
                                    <li class="active">
                                    <c:choose>
                                        <c:when test="${tag == null}">
                                            <a href="#"
                                               ><i class="fa fa-angle-right" aria-hidden="true"></i>All
                                            </a>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="#"
                                               ><i class="fa fa-angle-right" aria-hidden="true"></i>${cateByCId.cName}
                                            </a>
                                        </c:otherwise>
                                    </c:choose>    
                                </li>
                            </ul>
                        </div>

                        <!-- Sidebar -->

                        <div class="sidebar">
                            <div class="sidebar_section">
                                <div class="sidebar_title">
                                    <h5>Product Category</h5>
                                </div>
                                <ul class="sidebar_categories">
                                    <li class="${tag == null? "active": ""}">
                                        <a href="category"> 
                                            ${tag == null?'<span><i class="fa fa-angle-double-right"
                                              aria-hidden="true"> </i>
                                              </span>':""}All
                                        </a>
                                    </li>
                                    <c:forEach items="${cate}" var="c">
                                        <li class="${tag == c.cId?"active": ""}">
                                            <a href="category?cId=${c.cId}">
                                                ${tag == c.cId?'<span><i class="fa fa-angle-double-right"
                                                  aria-hidden="true"> </i>
                                                  </span>':""}
                                                  ${c.cName}</a>
                                            </li>
                                        </c:forEach>



                                    </ul>
                                </div>

                            </div>

                            <!-- Main Content -->

                            <div class="main_content">
                                <!-- Products -->

                                <div class="products_iso">
                                    <div class="row">
                                        <div class="col">
                                            <!-- Product Sorting -->

                                            <div
                                                class="product_sorting_container product_sorting_container_top"
                                                >
                                                <ul class="product_sorting">
                                                    <li>
                                                        <span class="type_sorting_text">Default Sorting</span>
                                                        <i class="fa fa-angle-down"></i>
                                                        <ul class="sorting_type">
                                                            <li
                                                                class="type_sorting_btn"
                                                                data-isotope-option='{ "sortBy": "original-order" }'
                                                                >
                                                                <span>Default Sorting</span>
                                                            </li>
                                                            <li
                                                                class="type_sorting_btn"
                                                                data-isotope-option='{ "sortBy": "price" }'
                                                                >
                                                                <span>lowest to highest</span>
                                                            </li>
                                                            <li
                                                                class="type_sorting_btn"
                                                                data-isotope-option='{ "sortBy": "name" }'
                                                                >
                                                                <span>Product Name</span>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <!-- filter by product -->
                                                    <!-- <li>
                                                      <span>Show</span>
                                                      <span class="num_sorting_text">6</span>
                                                      <i class="fa fa-angle-down"></i>
                                                      <ul class="sorting_num">
                                                        <li class="num_sorting_btn"><span>6</span></li>
                                                        <li class="num_sorting_btn"><span>12</span></li>
                                                        <li class="num_sorting_btn"><span>24</span></li>
                                                      </ul>
                                                    </li> -->
                                                </ul>
                                                <div class="pages d-flex flex-row align-items-center">
                                                    <div class="page_current">
                                                        <span>1</span>
                                                        <ul class="page_selection">
                                                            <li><a href="#">1</a></li>
                                                            <li><a href="#">2</a></li>
                                                            <li><a href="#">3</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="page_total"><span>of</span> 3</div>
                                                    <div id="next_page" class="page_next">
                                                        <a href="#"
                                                           ><i
                                                                class="fa fa-long-arrow-right"
                                                                aria-hidden="true"
                                                                ></i
                                                            ></a>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Product Grid -->

                                            <div class="product-grid">
                                                <!-- Product 1 -->
                                                <c:forEach items="${listProductByCid}" var="p">
                                                    <div class="product-item men">
                                                        <div class="product discount product_filter">
                                                            <div class="product_image">
                                                                <img src="${p.pImg}" alt="" />
                                                            </div>
                                                            <div class="favorite favorite_left"></div>

                                                            <div class="product_info">
                                                                <h6 class="product_name">
                                                                    <a href="detail?pId=${p.pId}"
                                                                       >${p.pName}</a
                                                                    >
                                                                </h6>
                                                                <div class="product_price">
                                                                    ${p.pPrice}
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="red_button add_to_cart_button">
                                                            <a href="#">add to cart</a>
                                                        </div>
                                                    </div>
                                                </c:forEach>

                                            </div>

                                            <!-- Product Sorting -->

                                            <div
                                                class="product_sorting_container product_sorting_container_bottom clearfix"
                                                >
                                                <!-- <ul class="product_sorting">
                                                  <li>
                                                    <span>Show:</span>
                                                    <span class="num_sorting_text">04</span>
                                                    <i class="fa fa-angle-down"></i>
                                                    <ul class="sorting_num">
                                                      <li class="num_sorting_btn"><span>01</span></li>
                                                      <li class="num_sorting_btn"><span>02</span></li>
                                                      <li class="num_sorting_btn"><span>03</span></li>
                                                      <li class="num_sorting_btn"><span>04</span></li>
                                                    </ul>
                                                  </li>
                                                </ul> -->
                                                <!-- <span class="showing_results"
                                                  >Showing 1–3 of 12 results</span
                                                > -->
                                                <div class="pages d-flex flex-row align-items-center">
                                                    <div class="page_current">
                                                        <span>1</span>
                                                        <ul class="page_selection">
                                                            <li><a href="#">1</a></li>
                                                            <li><a href="#">2</a></li>
                                                            <li><a href="#">3</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="page_total"><span>of</span> 3</div>
                                                    <div id="next_page_1" class="page_next">
                                                        <a href="#"
                                                           ><i
                                                                class="fa fa-long-arrow-right"
                                                                aria-hidden="true"
                                                                ></i
                                                            ></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- FOOTER VS BENEFIT -->
                <jsp:include page="footer.jsp"></jsp:include>

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

