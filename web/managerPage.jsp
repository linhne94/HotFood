<%-- 
    Document   : managerPage
    Created on : Jun 19, 2023, 9:27:06 PM
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

    <link rel="stylesheet" href="styles/managerPage.css " />
    <style></style>
  </head>
  <body>
    <div class="super_container">
      <!-- Header -->

      <header class="header trans_300">
        <!-- Top Navigation -->

        <!-- Main Navigation -->

        <!--  -->
        <div class="main_nav_container">
          <div class="container">
            <div class="row">
              <div class="col-3">
                <div class="logo_container">
                  <a href="home">hot<span>food</span></a>
                </div>
              </div>
              <div
                class="col-6 d-flex justify-content-center align-items-center"
              >
                <ul class="navbar_menu">
                  <li><a href="#" class="manager-center">manager order</a></li>
                </ul>
              </div>
              <div
                class="col-3 d-flex justify-content-end align-items-center profile-button"
              >
                <a href="#"
                   ><i class="fa fa-user" aria-hidden="true"></i>Hello, ${sessionScope.user.aFullname}</a
                >
                <nav class="navbar">
                  <div class="hamburger_container">
                    <i class="fa fa-bars" aria-hidden="true"></i>
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </header>

      <div class="hamburger_menu">
        <div class="hamburger_close">
          <i class="fa fa-times" aria-hidden="true"></i>
        </div>
        <div class="hamburger_menu_content text-right">
          <ul class="menu_top_nav">
            <li class="menu_item has-children">
              <a href="#">
                My Account
                <i class="fa fa-angle-down"></i>
              </a>
              <ul class="menu_selection">
                <li>
                  <a href="#"
                    ><i class="fa fa-sign-in" aria-hidden="true"></i>Sign In</a
                  >
                </li>
                <li>
                  <a href="#"
                    ><i class="fa fa-user-plus" aria-hidden="true"></i
                    >Register</a
                  >
                </li>
              </ul>
            </li>
            <li class="menu_item">
              <a href="#">manager order</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="super_container">
        <div
          class="container manager-order"
          style=" margin-top: 200px"
        >
          <ul class="nav nav-tabs justify-content-center total-nav">
            <li class="nav-item col-12 col-sm-6 col-md-3 own-item">
              <a
                class="nav-link text-center link-item ${tag==0?"active":""}"
                href="managerPage?stt=0"
                >Confirming</a
              >
            </li>
            <li class="nav-item col-12 col-sm-6 col-md-3 own-item">
              <a
                class="nav-link text-center link-item ${tag==1?"active":""}"
                href="managerPage?stt=1"
                >Confirming delivery</a
              >
            </li>
            <li class="nav-item col-12 col-sm-6 col-md-3 own-item">
              <a
                class="nav-link text-center link-item ${tag==3?"active":""}"
                href="managerPage?stt=3"
                >History</a
              >
            </li>
          </ul>
          <div class="tab-content mt-5 around-content">
              <!--forEach-->
              <c:forEach var="o" items="${sessionScope.listOrder}">
            <div class="tab-pane fade show active" id="confirming">
              <section>
                <div class="row d-flex justify-content-center align-content-center order-confirm" id="${o.getOrderID()}">
                  <div class="col-md-2 infor-user d-flex align-content-center justify-content-center overflow-hidden"
                  >
                    <img
                      class="img-fluid rounded-0"
                      src="images/istockphoto-1223671392-612x612.jpg"
                      alt=""
                    />
                  </div>
                  <div class="col-md-3 infor-user d-flex align-content-center">
                    <span>${o.user.aFullname}</span>
                  </div>
                  <div class="col-md-2 infor-user d-flex align-content-center">
                    <span>${o.user.aPhone}</span>
                  </div>
                  <div class="col-md-3 infor-user d-flex align-content-center">
                    <span>${o.user.aAddress}</span>
                  </div>
                  <div class="col-md-2 infor-user d-flex align-content-center">
                    <span>${o.totalPrice}</span>
                  </div>
                </div>
              </section>

              <!-- modal  -->
              <div
                class="modal fade"
                id="modal${o.getOrderID()}"
                tabindex="-1"
                role="dialog"
                aria-labelledby="myModalLabel"
                aria-hidden="true"
              >
                <div class="modal-dialog modal-lg mt-5" role="document">
                  <div class="modal-content ">
                    <!-- header  -->
                    <div class="modal-header">
                      <span class="modal-title header-user" id="myModalLabel"
                        >${o.user.aFullname}'s Orders</span
                      >
                      <button
                        type="button"
                        class="close"
                        data-dismiss="modal"
                        aria-label="Close"
                      >
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>

                    <!-- body -->
                    
                    <div class="modal-body">
                      <!-- Thêm nội dung thông tin người dùng vào đây -->
                       
                      <div class="container total-product ">
                          <c:forEach var="p" items="${o.items}">
                            <div class="row own-product h-50 ">
                              <div class="col-md-3 product-infor pb-2">
                               <img class="img-fluid rounded-0" src="${p.items.pImg}" alt="">
                              </div>
                              <div class="col-md-4 product-infor">
                               <span>${p.items.pName}</span>
                              </div>
                              <div class="col-md-2 product-infor">
                               <span>${p.quantity}</span>
                              </div>
                              <div class="col-md-3 product-infor">
                               ${p.items.pPrice*p.quantity}d
                              </div>
                             </div>
                           </c:forEach>
<!--                         <div class="row own-product h-50">
                           <div class="col-md-3 product-infor pb-2">
                            <img class="img-fluid rounded-0" src="images/product_7.png" alt="">
                           </div>
                           <div class="col-md-4 product-infor">
                            <span>Hamburger</span>
                           </div>
                           <div class="col-md-2 product-infor">
                            <span>2</span>
                           </div>
                           <div class="col-md-3 product-infor">
                            250.000d
                           </div>
                          </div>-->
                      </div>
                      <div class="container product-price">
                        <div class="row d-flex justify-content-between discount-code">
                          <div class="col-5  ml-3">
                            <h5>DISCOUNT: </h5> 
                          </div>
                          <div class="col-4 mr-5 pr-2 d-flex align-content-center justify-content-end">
                            <h5>0d</h5>
                          </div>
                        </div>
                        <div class="row mt-4 d-flex justify-content-between discount-code">
                          <div class="col-5  ml-3">
                            <h5>TOTAL PRICE: </h5> 
                          </div>
                          <div class="col-4 mr-5 pr-2 d-flex align-content-center justify-content-end">
                            <h5>${o.totalPrice}d</h5>
                          </div>
                        </div>
                      </div>
                      
                     </div>
                    <div class="container footer-modal ">
                      <div class="row justify-content-center align-content-center">
                          <c:if test="${tag == 0 || tag ==null}">
                              <div class="col-3">
                                <button type="button" class="btn acp-btn"><a href="managerPage?oID=${o.getOrderID()}&status=1&mID=${sessionScope.user.aId}">Accept</a></button>
                            </div>
                            <div class="col-3">
                                <button type="button" class="btn cancel-btn"><a href="managerPage?oID=${o.getOrderID()}&status=-1&mID=${sessionScope.user.aId}">Reject</a></button>
                            </div>
                          </c:if>
                          <c:if test="${tag == 1}">
                              <div class="col-3">
                                <button type="button" class="btn acp-btn"><a href="managerPage?oID=${o.getOrderID()}&status=2&">Completed</a></button>
                            </div>
                          </c:if>
                        
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </c:forEach>
              <!--end /forEach-->

<!--            <div class="tab-pane fade" id="order-history">
              <section>
                <div class="container mt-3">Hello</div>
              </section>
            </div>
          </div>
        </div>-->
        <!-- content -->

        <!-- Footer -->

      </div>
    </div>
        <jsp:include page="footer.jsp"></jsp:include>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="styles/bootstrap4/popper.js"></script>
    <script src="styles/bootstrap4/bootstrap.min.js"></script>
    <script src="plugins/Isotope/isotope.pkgd.min.js"></script>
    <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
    <script src="plugins/easing/easing.js"></script>
    <script src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="js/categories_custom.js"></script>
    <c:forEach var="od" items="${sessionScope.listOrder}">
        <script>
            // Khi phần tử có ID "1" được nhấp vào, hiển thị modal
            $('#${od.getOrderID()}').click(function() {
              $('#modal${od.getOrderID()}').modal('show');
            });
        </script>
    </c:forEach>
  </body>
</html>

