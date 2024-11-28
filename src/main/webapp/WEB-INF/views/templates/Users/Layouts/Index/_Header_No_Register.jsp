<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->

    <!-- Author Meta -->
    <meta name="author" content="CodePixar">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>Easy-Shop</title>

    <style>

        .cart-icon::before {
            content: '\1F6D2'; /* Mã Unicode cho biểu tượng giỏ hàng */
            font-size: 24px;
            display: inline-block;
        }

    </style>
    <!--
        CSS
        ============================================= -->
    <link rel="stylesheet" href="../../../../../../resources/css/linearicons.css">
    <link rel="stylesheet" href="../../../../../../resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../../../../../resources/css/themify-icons.css">
    <link rel="stylesheet" href="../../../../../../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../../../../../../resources/css/owl.carousel.css">
    <link rel="stylesheet" href="../../../../../../resources/css/nice-select.css">
    <link rel="stylesheet" href="../../../../../../resources/css/nouislider.min.css">
    <link rel="stylesheet" href="../../../../../../resources/css/ion.rangeSlider.css" />
    <link rel="stylesheet" href="../../../../../../resources/css/ion.rangeSlider.skinFlat.css" />
    <link rel="stylesheet" href="../../../../../../resources/css/magnific-popup.css">
    <link rel="stylesheet" href="../../../../../../resources/css/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">


</head>

<body>

<!-- Start Header Area -->
<header class="header_area sticky-header">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light main_box">
            <div class="container">
                <%--                <div class="iamge">--%>
                <%--                    <h3>Bee Shoes</h3>--%>
                <%--                </div>--%>
                <a href="/TrangChu/listGiayTheThao">
                    <div class="row">
                        <div class="col-4">
                            <img src="../../../../../../resources/img/banner/banner-img.webp" alt="" style="float:left;width: 80px; border: 1px solid white; border-radius: 1000px 1500px 700px;">
                        </div>
                        <div class="col-7">
                            <h4 style="margin-top: 20px;box-shadow: #10707f;margin-left: 10px">Easy-Shop</h4>
                        </div>
                    </div>
                </a>

                <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent" style="margin-right: 40px">
                        <ul class="nav navbar-nav menu_nav mx-auto" style="display: flex; justify-content: center;">
                            <li class="nav-item active">
                                <a class="nav-link" href="/TrangChu/listGiayTheThao">Home</a>
                            </li>
                            <li class="nav-item submenu dropdown">
                                <a href="/TrangChu/listGiayTheThao/Details" class="nav-link dropdown-toggle" data-toggle=""
                                   role="button" aria-haspopup="true" aria-expanded="true">Shop</a>
                            </li>
                        </ul>
                    </div>



                    <ul class="nav navbar-nav menu_nav ml-auto">
                        <div class="row" style="margin-top: 10px">
                            <div class="col-12">
                                <a href="/GiayTheThao/NguoiDung/ViewGioHang">
                                    <span style="margin-left: 10px;margin-right: 40px;padding-top: 40px" class="cart-icon"></span>
                                </a>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 0px">
                            <div class="col-8" style="margin-left: 0px;margin-right: 65px">
                                <li class="nav-item submenu dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                       aria-expanded="false">
                                        <i class="fas fa-user fa-2x" style="color: black;"></i>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item"><a class="nav-link" href="/TrangChu/ThongTinCaNhan" style="color: black;font-weight: bold">
                                            <%--                                        Thông tin cá nhân--%>
                                            Xin Chào : <span style="color: red">
                                            ${khachHangLog.tenKhachHang}
                                        </span>
                                        </a></li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="/KhachHang/thongTinHoaDonAll/${maKH}" style="color: black;font-weight: bold">
                                                Đơn hàng
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="/KhachHang/ViDienTu/ViewViDienTu/${maKH}" style="color: black;font-weight: bold">
                                                Ví tiền
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </div>
                        </div>
                    </ul>
                    <div class="row">
                        <div class="col-12">
                            <a href="/KhachHang/dangXuat">
                                <p style="margin-top: 15px;color: black;font-size: 15px;font-weight: bold">Đăng xuất</p>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </nav>
    </div>
</header>