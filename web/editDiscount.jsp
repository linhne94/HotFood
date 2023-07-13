<%-- 
    Document   : editProduct
    Created on : Jun 7, 2023, 10:35:12 AM
    Author     : taing
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
        <style>
            body{
                background: #f5f5f5;

            }
            .rounded{
                border-radius: 1rem
            }
            .nav-pills .nav-link{
                color: #555
            }
            .nav-pills .nav-link.active{
                color: white
            }
            input[type="radio"]{
                margin-right: 5px;
                padding: 0 20px;
            }
            .bold{
                font-weight:bold
            }
            .row{
                padding: 0 20px;
                margin: 0 20px;
            }
            .form-group{
                padding: 0 20px;
            }
        </style>
    </head>
    <body>

        <div class="row mb-4">
            <div class="col-lg-8 mx-auto text-center">
                <h1 class="display-6" style="padding-top: 30px">Edit Product</h1>
                <a href="product"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button></a>
            </div>
        </div> <!-- End -->
        <div class="row">
            <div class="col-lg-6 mx-auto">
                <div class="card ">
                    <form action="SaveEditDiscount" method="post">
                        <div class="tab-content">
                            <!-- credit card info-->
                            <div id="credit-card" class="tab-pane fade show active pt-3">
                                <div class="form-group">
                                    <label>Code</label>
                                    <input value="${dis.code}" name="code" type="text" class="form-control" readonly required>
                                </div>

                                <div class="form-group">
                                    <label>Discount</label>
                                    <input value="${dis.discount}" name="discount" type="text" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label>Start Date (Year-Month-Day)</label>
                                    <input value="${dis.startDate}" name="startDate" type="text" class="form-control" required>
                                </div>


                                <div class="form-group">
                                    <label>End Date (Year-Month-Day)</label>
                                    <input value="${dis.endDate}" name="endDate" type="text" class="form-control" required>
                                </div>
                                

                                <div class="card-footer">
                                    <input type="submit" class="btn btn-success" value="Edit">
                                </div>
                            </div> <!-- End -->
                        </div>
                    </form>
                </div>
            </div>
        </div>


    </body>
</html>
