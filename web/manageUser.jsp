
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Admin page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" >
        <link rel="stylesheet" href="styles/myCss.css" />
        <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
        <link rel="stylesheet" href="styles/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="styles/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="styles/assets/css/themify-icons.css">
        <link rel="stylesheet" href="styles/assets/css/metisMenu.css">
        <link rel="stylesheet" href="styles/assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="styles/assets/css/slicknav.min.css">
        <!-- amchart css -->
        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css"
              media="all" />
        <!-- others css -->
        <link rel="stylesheet" href="styles/assets/css/typography.css">
        <link rel="stylesheet" href="styles/assets/css/default-css.css">
        <link rel="stylesheet" href="styles/assets/css/styles.css">
        <link rel="stylesheet" href="styles/assets/css/responsive.css">
        <!-- modernizr css -->
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
        <script defer="" referrerpolicy="origin" src="/cdn-cgi/zaraz/s.js?z=JTdCJTIyZXhlY3V0ZWQlMjIlM0ElNUIlNUQlMkMlMjJ0JTIyJTNBJTIyc3J0ZGFzaCUyMC0lMjBJQ08lMjBEYXNoYm9hcmQlMjIlMkMlMjJ4JTIyJTNBMC40NTAxNzQyNzg2OTAwOTExJTJDJTIydyUyMiUzQTE1MzYlMkMlMjJoJTIyJTNBODY0JTJDJTIyaiUyMiUzQTczOSUyQyUyMmUlMjIlM0ExNDkyJTJDJTIybCUyMiUzQSUyMmh0dHBzJTNBJTJGJTJGY29sb3JsaWIuY29tJTJGcG9seWdvbiUyRnNydGRhc2glMkZpbmRleC5odG1sJTIyJTJDJTIyciUyMiUzQSUyMiUyMiUyQyUyMmslMjIlM0EyNCUyQyUyMm4lMjIlM0ElMjJVVEYtOCUyMiUyQyUyMm8lMjIlM0EtNDIwJTJDJTIycSUyMiUzQSU1QiU3QiUyMm0lMjIlM0ElMjJzZXQlMjIlMkMlMjJhJTIyJTNBJTVCJTIyMCUyMiUyQyUyMlUlMjIlMkMlN0IlMjJzY29wZSUyMiUzQSUyMnBhZ2UlMjIlN0QlNUQlN0QlMkMlN0IlMjJtJTIyJTNBJTIyc2V0JTIyJTJDJTIyYSUyMiUzQSU1QiUyMjElMjIlMkMlMjJBJTIyJTJDJTdCJTIyc2NvcGUlMjIlM0ElMjJwYWdlJTIyJTdEJTVEJTdEJTJDJTdCJTIybSUyMiUzQSUyMnNldCUyMiUyQyUyMmElMjIlM0ElNUIlMjIyJTIyJTJDJTIyLSUyMiUyQyU3QiUyMnNjb3BlJTIyJTNBJTIycGFnZSUyMiU3RCU1RCU3RCUyQyU3QiUyMm0lMjIlM0ElMjJzZXQlMjIlMkMlMjJhJTIyJTNBJTVCJTIyMyUyMiUyQyUyMjIlMjIlMkMlN0IlMjJzY29wZSUyMiUzQSUyMnBhZ2UlMjIlN0QlNUQlN0QlMkMlN0IlMjJtJTIyJTNBJTIyc2V0JTIyJTJDJTIyYSUyMiUzQSU1QiUyMjQlMjIlMkMlMjIzJTIyJTJDJTdCJTIyc2NvcGUlMjIlM0ElMjJwYWdlJTIyJTdEJTVEJTdEJTJDJTdCJTIybSUyMiUzQSUyMnNldCUyMiUyQyUyMmElMjIlM0ElNUIlMjI1JTIyJTJDJTIyNSUyMiUyQyU3QiUyMnNjb3BlJTIyJTNBJTIycGFnZSUyMiU3RCU1RCU3RCUyQyU3QiUyMm0lMjIlM0ElMjJzZXQlMjIlMkMlMjJhJTIyJTNBJTVCJTIyNiUyMiUyQyUyMjglMjIlMkMlN0IlMjJzY29wZSUyMiUzQSUyMnBhZ2UlMjIlN0QlNUQlN0QlMkMlN0IlMjJtJTIyJTNBJTIyc2V0JTIyJTJDJTIyYSUyMiUzQSU1QiUyMjclMjIlMkMlMjIxJTIyJTJDJTdCJTIyc2NvcGUlMjIlM0ElMjJwYWdlJTIyJTdEJTVEJTdEJTJDJTdCJTIybSUyMiUzQSUyMnNldCUyMiUyQyUyMmElMjIlM0ElNUIlMjI4JTIyJTJDJTIyNSUyMiUyQyU3QiUyMnNjb3BlJTIyJTNBJTIycGFnZSUyMiU3RCU1RCU3RCUyQyU3QiUyMm0lMjIlM0ElMjJzZXQlMjIlMkMlMjJhJTIyJTNBJTVCJTIyOSUyMiUyQyUyMjYlMjIlMkMlN0IlMjJzY29wZSUyMiUzQSUyMnBhZ2UlMjIlN0QlNUQlN0QlMkMlN0IlMjJtJTIyJTNBJTIyc2V0JTIyJTJDJTIyYSUyMiUzQSU1QiUyMjEwJTIyJTJDJTIyOCUyMiUyQyU3QiUyMnNjb3BlJTIyJTNBJTIycGFnZSUyMiU3RCU1RCU3RCUyQyU3QiUyMm0lMjIlM0ElMjJzZXQlMjIlMkMlMjJhJTIyJTNBJTVCJTIyMTElMjIlMkMlMjItJTIyJTJDJTdCJTIyc2NvcGUlMjIlM0ElMjJwYWdlJTIyJTdEJTVEJTdEJTJDJTdCJTIybSUyMiUzQSUyMnNldCUyMiUyQyUyMmElMjIlM0ElNUIlMjIxMiUyMiUyQyUyMjElMjIlMkMlN0IlMjJzY29wZSUyMiUzQSUyMnBhZ2UlMjIlN0QlNUQlN0QlMkMlN0IlMjJtJTIyJTNBJTIyc2V0JTIyJTJDJTIyYSUyMiUzQSU1QiUyMjEzJTIyJTJDJTIyMyUyMiUyQyU3QiUyMnNjb3BlJTIyJTNBJTIycGFnZSUyMiU3RCU1RCU3RCU1RCU3RA=="></script>
        <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js" nonce="9884653e-feac-4169-bfe0-db365dd1d36d"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="styles/main_styles.css" />
        <style>
            /*            Ngo�i th? style c�n fix th�m background trong th? user-profile,style trong button add product,style trong 2 icon edit delete*/
            tbody th{
                font-weight: normal !important;
            }
            .dropdown-item a:hover{
                background-color: #fe4c50 !important;
                color: white !important;
                /*                padding-right : 150px;*/
            }
            .dropdown-item a{
                padding-right : 120px !important;
            }
            .dropdown-item{
                padding:0 !important;
                margin :auto;
            }
            tbody th a{
                color :#fe4c50;
            }
            .metismenu li a:hover{
                background-color: #fe4c50;
            }
        </style>
        
    </head>
    <body>
        <div class="page-container" style="height: 100%;width: 100%;margin: 0;display: table;">
            <!-- sidebar menu area start -->
            <div class="sidebar-menu" style="background-color: whitesmoke">
                <div class="sidebar" style="position: absolute; padding: 50px 200px;background-color: whitesmoke;margin: 0px 35px">
                    <div class="logo_container">
                        <a href="home">hot<span>food</span></a>
                    </div>
                </div>
                <div class="main-menu" style="margin-top: 60px">
                    <div class="menu-inner">
                        <nav style="padding-top: 70px">
                            <ul class="metismenu" id="menu">
                                <li><a href="product"><i class="fa fa-cutlery" aria-hidden="true"></i><span>Manage Product</span></a></li>
                                <li><a href="user"><i class="fa fa-user" aria-hidden="true"></i><span>Manage User</span></a></li>
                                <li><a href="ManageDiscount"><i class="fa fa-ticket" aria-hidden="true"></i><span>Manage Discount</span></a></li>
                                <li><a href="chart.jsp"><i class="fa fa-bar-chart" aria-hidden="true"></i><span>Dashboard</span></a></li>
                                <li><a href="dealOfTheWeek.jsp"><i class="fa fa-diamond" aria-hidden="true"></i><span>Deal of the Week</span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="main-content" style="background-color: white">
                <!-- header area start -->
                <div class="header-area">
                    <div class="row align-items-center">
                        <!-- nav and search button -->
                        <div class="col-md-6 col-sm-8 clearfix">
                            <div class="nav-btn pull-left">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            <div class="search-box pull-left">
                                <form action="#">
                                    <input type="text" name="search" placeholder="Search..." required>
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </form>
                            </div>
                        </div>
                        <!-- profile info & task notification -->

                    </div>
                </div>
                <!-- header area end -->
                <!-- page title area start -->
                <div class="page-title-area" style="background-color: #F3F3F3">
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area clearfix">
                                <h4 class="page-title pull-left">Management Page</h4>                              
                                <ul class="breadcrumbs pull-left">
                                    <li><span>Manage User</span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6 clearfix">
                            <div class="user-profile pull-right" style="background: #fe4c50 !important">
                                <img class="avatar user-thumb" src="styles/assets/download.png" alt="avatar">
                                <h4 class="user-name dropdown-toggle" data-toggle="dropdown">Hello, Tai!<i
                                        class="fa fa-angle-down"></i></h4>
                                <div class="dropdown-menu" style="width: fit-content">                                   
                                    <a class="dropdown-item" href="home">Log Out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>      

                <div class="content" style="padding: 20px 30px">
                    <div class="table-wrapper" >
                        <div class="table-title">
                            <div class="row">                                
                                <div class="col-12">
                                    <ul class="metismenu d-flex" id="menu">
                                        <li>
                                            <button type="button" class="btn btn-info btn-md" data-toggle="modal" style="background-color: #fe4c50 !important;" data-target="#addUser">Add new account</button>
                                        </li>                                    
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>

                                    <th>ID</th>
                                    <th>Username</th>
                                    <th>Full name</th>
                                    <th>Phone number</th>                                   
                                    <th>Email</th>
                                    <th>Role</th>
                                    <th>Edit</th>
                                </tr>
                            <tbody>
                                <c:forEach items="${user}" var="p">
                                    <tr>
                                        <c:if test="${p.aRole == 0}">
                                            <th>${p.aId}</th>
                                            <th>${p.aUsername}</th>
                                            <th>${p.aFullname}</th> 
                                            <th>${p.aPhone}</th> 
                                            <th>${p.aEmail}</th>  
                                            <th><p>Customer</p></th>
                                    <th>
                                        <a href="editUser?aid=${p.aId}"><i class="fa fa-pencil-square-o " aria-hidden="true"></i></a>
                                    </th>
                                    <th>
                                        <a href="DeleteUser?aid=${p.aId}"><i class="fa fa-trash-o " aria-hidden="true"></i></a>
                                    </th>
                                </c:if>                                      

                                <c:if test="${p.aRole == 1}">
                                    <th>${p.aId}</th>
                                    <th>${p.aUsername}</th>
                                    <th>${p.aFullname}</th> 
                                    <th>${p.aPhone}</th> 
                                    <th>${p.aEmail}</th>  
                                    <th><p>Manager</p></th>
                                    <th>
                                        <a href="editUser?aid=${p.aId}"><i class="fa fa-pencil-square-o " aria-hidden="true"></i></a>
                                    </th>
                                    <th>
                                        <a href="DeleteUser?aid=${p.aId}"><i class="fa fa-trash-o " aria-hidden="true"></i></a>
                                    </th>
                                </c:if>


                                </tr>    
                            </c:forEach>
                            </tbody>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>



            <footer style="background-color: #f3f3f3;display: table-row;height: 0;">
                <div class="container">
                    <hr
                        _ngcontent-ng-cli-universal-c81=""
                        style="color: #c0c0c0; background-color: #c0c0c0"
                        />
                    <div class="row">
                        <div class="col-lg-3">
                            <div
                                class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center"
                                >
                                <ul class="footer_nav">
                                    <li><a href="#">Blog</a></li>
                                    <li><a href="#">FAQs</a></li>
                                    <li><a href="contact.jsp">Contact us</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-9">
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

        
        <div class="modal fade" id="addUser" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="AddUser" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Add Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>Username</label>
                                    <input name="username" type="text" class="form-control" required>
                                </div>
                                
                                <div class="form-group">
                                    <label>Password</label>
                                    <input name="password" type="text" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label>Full name</label>
                                    <input name="fullname" type="text" class="form-control" required>
                                </div>


                                <div class="form-group">
                                    <label>Phone</label>
                                    <input name="phone" type="text" class="form-control" required>
                                </div>
                                
                                <div class="form-group">
                                    <label>Address</label>
                                    <input name="address" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input name="email" type="text" class="form-control" required>
                                </div>
                               <div class="form-group">
                                    <label>Role</label>
                                    <select name="role" class="form-select" aria-label="Default select example">
                                        <option value="0" ${acc.aRole == 0? "selected": ""}>Customer</option>
                                        <option value="1" ${acc.aRole == 1? "selected": ""}>Manager</option>
                                    </select>    
                                </div>

                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" class="btn btn-success" value="Add">
                            </div>
                        </form>
                    </div>
                </div>
            </div>






        <!-- jquery latest version -->
        <script src="styles/assets/js/vendor/jquery-2.2.4.min.js"></script>
        <!-- bootstrap 4 js -->
        <script src="styles/assets/js/popper.min.js"></script>
        <script src="styles/assets/js/bootstrap.min.js"></script>
        <script src="styles/assets/js/owl.carousel.min.js"></script>
        <script src="styles/assets/js/metisMenu.min.js"></script>
        <script src="styles/assets/js/jquery.slimscroll.min.js"></script>
        <script src="styles/assets/js/jquery.slicknav.min.js"></script>

        <!-- start chart js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
        <!-- start highcharts js -->
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <!-- start zingchart js -->
        <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
        <script>
            zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
            ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
        </script>
        <!-- all line chart activation -->
        <script src="styles/assets/js/line-chart.js"></script>
        <!-- all pie chart -->
        <script src="styles/assets/js/pie-chart.js"></script>
        <!-- others plugins -->
        <script src="styles/assets/js/plugins.js"></script>
        <script src="styles/assets/js/scripts.js"></script>
    </body>


</html>