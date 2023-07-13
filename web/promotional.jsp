<%-- 
    Document   : promotinal
    Created on : Jun 29, 2023, 9:44:53 AM
    Author     : minhhieu
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:include page="header.jsp" />
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

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Nunito:wght@700&family=Oswald&display=swap"
        rel="stylesheet"
        />

    <<link rel="stylesheet" href="styles/promotional.css"/>
    <body>

        <div class="super_container">

            <div class="container" style=" min-height: 600px; margin-top: 150px">
                <div class="row header-content">
                    <div class="col-md-12">
                        <h1>promo<span style="color: #fe4c50">tional</span></h1>
                    </div>
                </div>
                <c:forEach var="o" items="${requestScope.combo}">
                <div class="row center-content">
                    <div class="container">
                        <div class="row combo-list d-flex align-content-center" id="${o.getComboID()}">
                            <div
                                class="col-md-4 d-flex align-items-center justify-content-center m-2"
                                >
                                <img
                                    class="img-fluid rounded-0"
                                    src="images/slider_1.jpg"
                                    alt=""
                                    style="max-height: 150px; margin: 30px"
                                    />
                            </div>
                            <div class="col-md-7 ml-4 m-2">
                                <div class="row title-combo p-3">
                                    <h3 data-toggle="modal">${o.comboName}</h3>
                                </div>
                                <div class="row detail-combo p-3">
                                    <span>
                                        ${o.comboDetail}
<!--                                        Chương trình ưu đãi mua 1 tặng 1 tất cả các ngày trong tuần.
                                        Áp dụng cho đơn hàng đặt trên Website: thepizzacompany.vn và
                                        Hotline 19006066. Giao hàng tận nơi với hóa đơn từ 100.000đ
                                        trở lên và trong phạm vi bán kính 4km.-->
                                    </span>
                                </div>
                                <div class="row add-cart p-3 mt-3 justify-content-center">
                                    <button class="btn w-100">
                                        <a href="home">Add to cart</a>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Modal -->
                <div
                    class="modal fade "
                    id="modal${o.getComboID()}"
                    tabindex="-1"
                    role="dialog"
                    aria-labelledby="myModalLabel"
                    aria-hidden="true"
                    >
                    <div class="modal-dialog modal-lg mt-5" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="modal-title" id="myModalLabel">${o.comboName}</h3>
                                <button
                                    type="button"
                                    class="close m-2"
                                    data-dismiss="modal"
                                    aria-label="Close"

                                    >
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div
                                    class="row d-flex justify-content-between infor-promotinal"
                                    >
                                    <div class="col-md-6 left-infor">
                                        <!-- product -->
                                        <c:forEach var="p" items="${o.item}">
                                        <div
                                            class="row d-flex justify-content-center align-items-center m-3 product-list"
                                            >
                                            <div
                                                class="col-md-3 m-1 d-flex justify-content-center align-items-center"
                                                >
                                                <img
                                                    class="img-fluid rounded-0"
                                                    src="images/istockphoto-1223671392-612x612.jpg"
                                                    alt=""
                                                    />
                                            </div>
                                            <div class="col-md-8 m-1">
                                                <span>${p.prd.pName}</span>
                                            </div>
                                        </div>
                                        </c:forEach>
<!--                                        <div
                                            class="row d-flex justify-content-center align-items-center m-3 product-list"
                                            >
                                            <div
                                                class="col-md-3 m-1 d-flex justify-content-center align-items-center"
                                                >
                                                <img
                                                    class="img-fluid rounded-0"
                                                    src="images/istockphoto-1223671392-612x612.jpg"
                                                    alt=""
                                                    />
                                            </div>
                                            <div class="col-md-8 m-1">
                                                <span>02 Thit ga chien</span>
                                            </div>
                                        </div>-->

                                        <!-- Price -->
                                        <div class="row d-flex justify-content-center align-items-center total-price">
                                            <div class="col-6">
                                                <span>Price: </span>
                                            </div>
                                            <div class="col-6 text-right">
                                                <span>${o.comboPrice}</span>
                                            </div>
                                        </div>
                                        <div class="row d-flex justify-content-center align-items-center ml-4 mr-4 ">
                                            <button class="btn w-100"><a href="home">Add to cart</a></button>
                                        </div>

                                    </div>
                                    <div
                                        class="col-md-6 d-flex justify-content-center align-items-center right-infor"
                                        >
                                        <img
                                            class="img-fluid rounded-0"
                                            src="images/slider_1.jpg"
                                            alt=""
                                            style="max-height: 300px; margin: 20px"
                                            />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
                
            </div>
            <!--FOOTER VS BENEFIT-->

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
            <c:forEach var="od" items="${requestScope.combo}">
        <script>
            // Khi phần tử có ID "1" được nhấp vào, hiển thị modal
            $("#${od.getComboID()}").click(function () {
                $("#modal${od.getComboID()}").modal("show");
            });
        </script>
        </c:forEach>
    </body>
</html>
