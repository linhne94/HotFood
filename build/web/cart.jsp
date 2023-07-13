
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <title>Hot Food</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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

        <link rel="stylesheet" href="styles/cart2.css" />
    </head>
    <style>
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
        .cart-zone a{
            padding: 0 1vh !important;
        }
        /*Sua margin*/
        .cart-zone .row{
            margin: 0 !important;
        }
        .container .row{
            margin: 0 -15px;
        }
        .quantity_selector button{
            background-color: white;
            border: none;
            cursor: pointer;
        }
        .quantity_selector{
            padding-top: 5px !important;
            width: 114px;
        }
        .quantity_value{
            margin: 0 5px;
        }
        .btn-order{
            background-color: #fe4c50;

        }
        .btn-order a{
            color: white;
        }
        .btn-order:hover{
            background-color:  #1e1e27;

        }
        .summary{
            max-height: none;
        }
    </style>
    <body>

        <!--cart 2-->
        <div
            class="container product_section_container"
            style="max-width: 1400px"
            >
            <div class="card" style="max-width: 1200px">
                <div class="row justify-content-between">
                    <div class="col-md-7 cart product-zone">
                        <div class="title">
                            <div class="row">
                                <div class="col">
                                    <div
                                        class="logo_container"
                                        style="
                                        text-transform: uppercase;
                                        font-size: 24px;
                                        color: #1e1e27;
                                        font-weight: 700;
                                        "
                                        >
                                        Shopping<span style="color: #fe4c50">cart</span>
                                    </div>
                                </div>
                                <div class="col align-self-center text-right text-muted">
                                    ${sessionScope.listCart.size()} items
                                </div>
                            </div>
                        </div>
                        <c:forEach items="${sessionScope.listCart}" var="p">
                            <div class="row product-row">
                                <div class="row main align-items-center">
                                    <div class="col-2">
                                        <img
                                            class="img-fluid"
                                            src="${p.items.pImg}"
                                            />
                                    </div>
                                    <div class="col">
                                        <div class="row text-muted">Shirt</div>
                                        <div class="row">${p.items.pName}</div>
                                    </div>
                                    <div class="col">
                                        <div class="quantity_selector p-1">
                                            <button><span class="minus pl-2"><a href="processCart?quantity=${p.quantity-1}&pId=${p.items.pId}&cartId=${p.getCartId()}">
                                                        -</a></span></button>

                                            <span class="quantity_value">${p.quantity}</span>
                                            <button><span class="plus pr-2"><a href="processCart?quantity=${p.quantity+1}&pId=${p.items.pId}&cartId=${p.getCartId()}">
                                                        +</a></span></button>

                                        </div>
                                    </div>
                                    <div class="col">
                                        ${p.items.pPrice * p.quantity}&#8363; 
                                        <span class="close">
                                            <button style="border: none">
                                                <a href="deleteCart?pId=${p.items.pId}&cartId=${p.getCartId()}">
                                                    <i class="fa fa-times" style="font-size: 18px" aria-hidden="true"> </i>
                                                </a>
                                            </button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <div class="back-to-shop">
                            <a href="home"><i class="fa fa-long-arrow-left" aria-hidden="true"></i> <span class="text-muted">Back to shop</span></a
                            >
                        </div>
                    </div>
                    <div class="col-md-4 summary">
                        <div>
                            <h5><b>Summary</b></h5>
                        </div>
                        <hr />
                        <c:forEach items="${sessionScope.listCart}" var="p">
                            <div class="row" style="margin-bottom: 10px">
                                <div class="col pl-3">${p.items.pName}</div>
                                <div class="col text-right">${p.items.pPrice * p.quantity}&#8363;</div>
                            </div>
                        </c:forEach>

                        <form action="discount">
                            <p style="color: black">DISCOUNT CODE</p>
                            <c:if test="${discount != null}">
                                <input name="code" type="text" placeholder="${discount.code}" disabled/>
                            </c:if>
                            <c:if test="${discount == null}">
                                <input name="code" type="text" placeholder="Enter your code"/>
                            </c:if>
                        </form>
                        <div>
                            <p style="color: black">PAYMENTS</p>
                            <label>
                                <input type="radio" name="opPay" value="COD" />
                                COD    				
                            </label>
                            <label>
                                <input type="radio" name="opPay" value="VNPAY" />
                                VNPAY    				
                            </label>
                        </div>
                        <div
                            class="row"
                            style="border-top: 1px solid rgba(0, 0, 0, 0.1); padding: 2vh 0"
                            >
                            <c:if test="${discount != null}">
                                <div class="col">Discount</div>     
                                <div class="col text-right">-${discount.discount}&#8363</div>
                                <div>
                                    <div class="col">TOTAL PRICE</div>                            
                                    <div class="col text-right">${totalMoney2}&#8363</div>
                                </div>
                            </c:if>
                            <c:if test="${discount == null}">
                                <div class="col">TOTAL PRICE</div>                            
                                <div class="col text-right">${totalMoney}&#8363</div>
                            </c:if>
                        </div>
                        <div class="row">
                            <div class="col">
                                <button class="btn btn-order"><a href="checkout">ORDER</a></button>
                                <button class="btn btn-order"><a href="ajax1">ORDER VNPAY</a></button>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->

        <footer class="footer" style="background-color: #f3f3f3">
            <div class="container" style="margin-top: 50px">
                <!-- <div class="row" style="margin-top: 50px">
                  <div style="margin-bottom: 30px; padding-top: 40px">Google Map</div>
                  <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.863921098815!2d108.25836811464994!3d15.968481188943292!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142116949840599%3A0x365b35580f52e8d5!2zxJDhuqFpIGjhu41jIEZQVCAoRlBUIHVuaXZlcnNpdHkp!5e0!3m2!1sen!2s!4v1679321561252!5m2!1sen!2s"
                    width="1100"
                    height="350"
                    style="border: 0; margin-bottom: 50px"
                    allowfullscreen=""
                    loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"
                  ></iframe>
                </div>
                <hr
                  _ngcontent-ng-cli-universal-c81=""
                  style="color: #c0c0c0; background-color: #c0c0c0"
                /> -->
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

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="styles/bootstrap4/popper.js"></script>
    <script src="styles/bootstrap4/bootstrap.min.js"></script>
    <script src="plugins/Isotope/isotope.pkgd.min.js"></script>
    <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
    <script src="plugins/easing/easing.js"></script>
    <script src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="js/categories_custom.js"></script>
    <!--<script src="js/single_custom.js"></script>-->
    <script>
        function initQuantity() {
            $('.quantity_selector').each(function () {
                var plus = $(this).find('.plus');
                var minus = $(this).find('.minus');
                var value = $(this).find('.quantity_value');

                plus.on('click', function () {
                    var x = parseInt(value.text());
                    value.text(x + 1);
                });

                minus.on('click', function () {
                    var x = parseInt(value.text());
                    if (x > 1) {
                        value.text(x - 1);
                    }
                });
            });
        }

        $(document).ready(function () {
            initQuantity();
        });
    </script>
</body>
</html>