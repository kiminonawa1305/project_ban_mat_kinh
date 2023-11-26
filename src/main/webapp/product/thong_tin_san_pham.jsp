<%@ page import="model.bean.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../bootstrap-5.3.2-dist/css/bootstrap-grid.css">
    <link rel="stylesheet" href="../bootstrap-5.3.2-dist/css/bootstrap.min.css">
    <script src="../bootstrap-5.3.2-dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../fontawesome-free-6.4.2-web/css/all.css">
    <link rel="stylesheet" href="../css/menu_footer.css">
    <link rel="stylesheet" href="../css/thong_tin_san_pham.css">
    <link rel="icon" type="image/x-icon" href="../logo_icon.png">

    <script src="../jquery/jquery-3.7.1.slim.min.js"></script>
    <script src="../jquery/jquery-3.7.1.min.js"></script>

    <title>Thông tin sản phẩm</title>
</head>
<body>
<header id="menu">
    <nav class="navbar navbar-expand-lg pb-0">
        <div class="container-xxl m-md-auto mt-2">
            <div class="row">
                <div class="logo col-lg-2 col-md-2 col-sm-2 border-0 px-lg-0 px-md-5">
                    <a href="../index.jsp" class="navbar-brand me-5">
                        <img src="../logo.png" alt="logo.png">
                        KIMI
                    </a>
                </div>
                <div class="search col-lg-5 col-md-6 col-sm-6 border-0 px-lg-0 px-md-5">
                    <form class="d-flex input-group">
                        <input class="form-control border-0 ps-3" type="text" name="search" id="search"
                               placeholder="Nhập tên sản phẩm!">
                        <span class="input-group-text  border-0"><a class="nav-link" href="#"><i
                                class="fa-solid fa-magnifying-glass"></i></a></span>
                    </form>
                </div>
                <div class="login col-lg-2 col-md-1 col-sm-1 border-0 px-lg-0">
                    <a href="../dang_nhap.jsp">
                        <button type="button" class="btn d-flex float-lg-end  me-xl-4 me-lg-2">
                            <span class="d-lg-inline d-md-none d-sm-none">Đăng nhập</span>
                            <span class="d-lg-none d-md-line material-symbols-outlined ms-1">login</span>
                        </button>
                    </a>
                </div>
                <div class="sign-up col-lg-1 col-md-1 col-sm-1 border-0 px-lg-0">
                    <a href="../dang_ky.jsp">
                        <button type="button" class="btn d-flex float-lg-none">
                            <span class="d-lg-inline d-md-none  d-sm-none">Đăng ký</span>
                            <span class="d-lg-none d-md-line material-symbols-outlined ms-1">logout</span>
                        </button>
                    </a>
                </div>
                <div class="cart col-lg-2 col-md-1 col-sm-1 border-0 px-lg-0">
                    <a href="../gio_hang.jsp">
                        <button type="button" class="btn d-flex float-lg-none">
                            <span class="d-lg-inline d-md-none  d-sm-none">Giỏ hàng</span>
                            <span class="icon d-flex">
                                <span class="material-symbols-outlined">
                                    shopping_cart
                                </span>
                                <span id="amount-product" class="amount-product">0</span>
                            </span>
                        </button>
                    </a>
                </div>
                <div class="menu-product col-lg-12 col-md-1 col-sm-1">
                    <!--Icon 3 dấu gạch mang hiển thị menu-->
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                            data-bs-target="#offcanvasNavbar"
                            aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <!--Các mục trong menu-->
                    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
                         aria-labelledby="offcanvasNavbarLabel">
                        <div class="offcanvas-body">
                            <ul class="navbar-nav m-auto">
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="kinh_mat/kinh_mat.jsp" class="nav-link dropdown-toggle px-4 rounded"
                                       type="button">
                                        <span>Kính mát</span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="kinh_mat/kinh_mat_nam.jsp">Kính mát
                                            nam</a></li>
                                        <li><a class="dropdown-item" href="kinh_mat/kinh_mat_nu.jsp">Kính mát
                                            nữ</a></li>
                                        <li><a class="dropdown-item" href="kinh_mat/kinh_mat_ngay_va_dem.jsp">Kính
                                            đi ngày và đêm</a></li>
                                        <li><a class="dropdown-item" href="kinh_mat/kinh_doi_mau.jsp">Kính đổi
                                            màu</a></li>
                                        <li><a class="dropdown-item"
                                               href="kinh_mat/kinh_loc_anh_sang_xanh.jsp">Kính lọc ánh sáng
                                            xanh</a></li>
                                        <li><a class="dropdown-item"
                                               href="kinh_mat/kinh_mat_clip_on_hai_lop.jsp">Kính Mắt Clip on 2
                                            Lớp</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="mat_kinh_tre_em/mat_kinh_tre_em.jsp"
                                       class="nav-link dropdown-toggle px-4 rounded" type="button">
                                        Mắt kính trẻ em
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item"
                                               href="mat_kinh_tre_em/gong_kinh_tre_em.jsp">Gọng Kính Trẻ Em</a>
                                        </li>
                                        <li><a class="dropdown-item"
                                               href="mat_kinh_tre_em/kinh_mat_tre_em.jsp">Kính Mát Trẻ Em</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="gong_kinh/gong_kinh.jsp"
                                       class="nav-link dropdown-toggle px-4 rounded active"
                                       type="button">
                                        Gọng kính
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="gong_kinh/gong_kinh_nua_khung.jsp">Gọng
                                            kính nữa khung</a></li>
                                        <li><a class="dropdown-item" href="gong_kinh/gong_kinh_khoan.jsp">Gọng
                                            kính khoan</a></li>
                                        <li><a class="dropdown-item" href="gong_kinh/gong_kinh_tron.jsp">Gọng
                                            kính tròn</a></li>
                                        <li><a class="dropdown-item" href="gong_kinh/gong_kinh_titan.jsp">Gọng
                                            kính titan</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="trong_kinh/trong_kinh.jsp"
                                       class="nav-link dropdown-toggle px-4 rounded"
                                       type="button">
                                        Tròng kính
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item"
                                               href="trong_kinh/trong_kinh_chong_anh_sang_xanh.jsp">Tròng kính
                                            chống ánh sáng xanh</a></li>
                                        <li><a class="dropdown-item" href="trong_kinh/trong_kinh_doi_mau.jsp">Tròng
                                            kính đổi màu</a></li>
                                        <li><a class="dropdown-item" href="trong_kinh/trong_kinh_mau.jsp">Tròng
                                            kính màu</a></li>
                                        <li><a class="dropdown-item"
                                               href="trong_kinh/trong_kinh_cho_gong_khoan.jsp">Tròng kính cho
                                            gọng khoan</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="../khuyen_mai.jsp" class="nav-link px-4 rounded">Khuyến mãi</a>
                                </li>
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="../lien_he.jsp" class="nav-link px-4 rounded">Liên hệ</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>

<main id="main" class="mt-5 pb-5">
    <!--Phần đặt mua-->
    <section class="productWrap">
        <div class="container d-flex">
            <!--Phần hiển thị hình ảnh tự động chuyển-->
            <div id="carouselExampleAutoplaying" class="carousel" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <button type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide-to="0"
                                    class="active" aria-current="true" aria-label="Slide 1">
                                <img src="../images/product/kinh_mat/anhsangxanh2_zinmy-blue-sun-1.60.png"
                                     class="d-block w-100" alt="demo.png">
                            </button>
                        </li>
                        <li class="list-group-item">
                            <button type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide-to="1"
                                    aria-label="Slide 2">
                                <img src="../images/product/kinh_mat/anhsangxanh1_zinmy-blue-protect-1.58.png"
                                     class="d-block w-100" alt="demo.png">
                            </button>
                        </li>
                    </ul>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="../images/product/kinh_mat/anhsangxanh2_zinmy-blue-sun-1.60.png"
                             class="d-block w-100" alt="demo.png">
                    </div>
                    <div class="carousel-item">
                        <img src="../images/product/kinh_mat/anhsangxanh1_zinmy-blue-protect-1.58.png"
                             class="d-block w-100" alt="demo.png">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
                        data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

            <!--Phần hiển thị thông tin và button thao tác-->
            <div class="productWrapDetail ms-5 w-100">
                <div class="productWrapDetailTitle">
                    <h1 class="productTitle">Kính Mát Cao Cấp Palm Angels Peri001 Hàng Xuất Dư</h1>
                </div>

                <!--Phần đánh giá-->
                <div class="sold_qty d-flex align-items-center mt-3 mb-1">
                    <div class="prod-review-loop d-flex">
                        <div class="onirvapp--shape-container me-1">
                            <ul class="list-group list-group-horizontal">
                                <!--Các li có class checked là sao hoàn thiện-->
                                <li class="checked">
                                    <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                </li>
                                <li class="checked">
                                    <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                </li>
                                <li class="checked">
                                    <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                </li>
                                <li>
                                    <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                </li>
                                <li>
                                    <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                </li>
                            </ul>
                        </div>

                        <span class="onireviewapp-loopitem-title">(0 đánh giá)</span>
                    </div>

                    <span class="h-line mx-2"></span>

                    <div class="sold_qty_num">
                        <p class="m-0">
                            Đã bán: <span>0</span>
                        </p>
                    </div>
                </div>

                <!--Phàn thông tin-->
                <div class="productInfoMain row row-cols-2 pb-3 mb-3">
                    <div class="checkProduct productAvailable col">
                        <strong>Tình trạng: </strong>Còn hàng
                    </div>
                    <div class="productSku col"><span><strong>Mã sản phẩm:</strong> </span>paperi0011007c1</div>
                    <div class="productVendor col">
                        <strong>Thương hiệu: </strong>Palm Angels
                    </div>
                    <div class="productType col">
                        <strong>Dòng sản phẩm: </strong>Khác
                    </div>
                </div>

                <!--Phần giá-->
                <div class="productPrice pb-3 mb-3">
                    <div class="productPriceBox">
                        <span class="productPriceMain">2,980,000</span>
                    </div>
                </div>

                <!--Phần lựa chọn option-->
                <div class="product-swatch mb-5">
                    <div class="product-sw-line">
                        <div class="dflex-new">
                            <div class="product-sw-title">
                                Màu sắc
                            </div>
                        </div>
                        <!--Phần button select-->
                        <ul class="product-sw-select">
                            <li class="product-sw-select-item">
                                <button type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide-to="0"
                                        aria-label="Slide 0">
                                    <img src="../images/product/kinh_mat/anhsangxanh2_zinmy-blue-sun-1.60.png"
                                         alt="demo.png">
                                    <span>Mẫu 1</span>
                                </button>
                            </li>
                            <li class="product-sw-select-item">
                                <button type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide-to="1"
                                        aria-label="Slide 1">
                                    <img src="../images/product/kinh_mat/anhsangxanh1_zinmy-blue-protect-1.58.png"
                                         alt="demo.png">
                                    <span>Mẫu 2</span>
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>

                <!--Phần số lượng và đặt mua-->
                <div class="productActionMain">
                    <div class="groupAdd d-flex align-items-center mb-2">
                        <div class="input-group itemQuantity">
                            <button class="input-group-text qtyBtn minusQuan" data-type="minus">-</button>
                            <input type="number" class="input-group-text form-control quantitySelector" id="quantity"
                                   aria-label="Username" value="1">
                            <button class="input-group-text qtyBtn plusQuan" data-type="plus">+</button>
                        </div>
                        <div class="productAction">
                            <button type="button" class="hoverOpacity" id="addToCart">Thêm vào giỏ hàng</button>
                            <button type="button" class="hoverOpacity " id="buyNow">Mua ngay</button>
                        </div>
                    </div>

                    <div class="hotline-product text-center">
                        <span>Gọi đặt mua hàng<a href="0855354919">&nbsp;<strong>0855.354.919</strong></a>&nbsp;( 9:00 - 20:00 )</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--Phần thêm mô tả thông tin-->
    <section class="productTabsContent mt-5">
        <div class="container">
            <!--phần nút chuyển tab. Muốn làm thêm thì tự viết nha-->
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#tabOne" role="tab"
                       aria-controls="home" aria-selected="true">Thông tin</a>
                </li>
            </ul>

            <!--phần khung hiển thị nội dung-->
            <div class="tab-content mt-3" id="tabContent">
                <!--Phần nội dung-->
                <div class="tab-pane fade show more-info_pro active" id="tabOne" role="tabpanel"
                     aria-labelledby="home-tab">
                    <div style="height: 500px;" class="active overflow-hidden">
                        <strong>THÔNG TIN SẢN PHẨM:</strong>
                        <p>Thương hiệu: Palm Angels</p>
                        <p>Chất liệu tròng: PC</p>
                        <p>Chất liệu khung: Acetate</p>
                        <p>Size: 51-19-145mm</p>
                        <p>Phụ kiện: Full box</p>
                        <p>Bảo hành 12 tháng.</p>
                        <p>&nbsp;</p>
                        <p><strong>Hàng xuất dư </strong>là hàng chính hãng, đến từ các thương hiệu lớn nhưng có một số
                            chi tiết bị lỗi nhỏ. Hàng xuất dư hay còn được gọi là hàng hiệu xuất khẩu.&nbsp;</p>
                        <p>Giá cả của các sản phẩm mặt <strong>hàng xuất dư</strong> thường sẽ thấp hơn nhiều so với
                            hàng chính hãng. Tuy nhiên, bạn có thể hoàn toàn yên tâm về kiểu dáng cũng như <strong>chất
                                lượng </strong>có nó, <strong>hàng xuất dư </strong>ngang ngửa với hàng tiêu chuẩn.</p>
                        <p>Do vậy, nhiều người tiêu dùng với mức thu nhập trung bình khá cũng dễ dàng sở hữu cho mình
                            một mặt hàng thương hiệu.&nbsp;</p>
                        <p>&nbsp;</p>
                        <!--Ảnh demo nên lấy trực tiếp trên mạng-->
                        <!--Lúc làm ae phải tải ành về máy-->
                        <!--Lưu ý cực mạnh cho ae-->
                        <p style="text-align: center"><img
                                src="../images/product/mat-kinh-tre-em/gong-kinh-tre-em/Gong-Kinh-Can-Tre-Em-TR90-JC052/gong-kinh-can-tre-em-hato-052-s01_master.png">
                        </p>
                        <p style="text-align: center"><img
                                src="../images/product/mat-kinh-tre-em/gong-kinh-tre-em/Gong-Kinh-Can-Tre-Em-TR90-JC052/gong-kinh-can-tre-em-hato-052-s03_master.png">
                        </p>
                        <p style="text-align: center"><img
                                src="../images/product/mat-kinh-tre-em/gong-kinh-tre-em/Gong-Kinh-Can-Tre-Em-TR90-JC052/gong-kinh-can-tre-em-hato-052-s04_master.png">
                        </p>
                        <p style="text-align: center"><img
                                src="../images/product/mat-kinh-tre-em/gong-kinh-tre-em/Gong-Kinh-Can-Tre-Em-TR90-JC052/gong-kinh-can-tre-em-hato-052-s05_master.png">
                        </p>
                        <p style="text-align: center"><img
                                src="../images/product/mat-kinh-tre-em/gong-kinh-tre-em/Gong-Kinh-Can-Tre-Em-TR90-JC052/gong-kinh-can-tre-em-hato-052-s06_master.png">
                        </p>
                        <p style="text-align: center">
                            <img
                                    src="../images/product/mat-kinh-tre-em/gong-kinh-tre-em/Gong-Kinh-Can-Tre-Em-TR90-JC052/gong-kinh-can-tre-em-hato-052-s07_master.png">
                        </p>
                    </div>

                    <a href="javascript:void(0);" class="readmore open">
                        <div class="readmore_content d-flex align-items-center justify-content-center mx-auto">
                            <span>Xem thêm</span>
                            <span class="material-symbols-outlined">expand_more</span>
                        </div>
                    </a>
                    <a href="#tabContent" class="readless close d-none">
                        <div class="readless_content d-flex align-items-center justify-content-center mx-auto">
                            <span>Rút gọn</span>
                            <span class="material-symbols-outlined">expand_less</span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!--Phần review-->
    <section class="pro__preview mt-5">
        <div class="container">
            <!--Title-->
            <div class="section-title-all">
                <h3>Đánh giá, nhận xét khách hàng</h3>
            </div>

            <!--Phần hiển thị nội dung-->
            <div class="onireviewapp-container">
                <div id="onireviewapp" data-customer-email="" data-customer-name="" data-pid="1017229646">
                    <div id="onirvapp-detail-body">
                        <div class="onirvapp-detail-tabs row">
                            <div class="onirvapp-tab col-10 mt-2">
                                <span>Danh sách đánh giá</span>
                                <span id="numberOfReview"> (0)</span>
                            </div>
                        </div>
                        <div class="onirvapp-detail-content mt-3">
                            <div id="onirvapp-review-list" class="onirvapp-comments-list active">
                                <div class="d-none onirvapp-review-empty text-center">
                                    <span class="onirvapp-comments-empty-text">Chưa có đánh giá nào</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--Phần sản phẩm khác-->
    <section class="other-product mt-5">
        <div class="container collection-wrap-product-list">
            <div class="other-product-title mb-3 pb-2">
                <h3>Sản phẩm liên quan</h3>
            </div>

            <div class="row  row-cols-xl-4 row-cols-lg-3 row-cols-md-2 row-cols-sm-1  d-flex justify-content-center">
                <!--Ô hiển thị-->
                <div class="pro-loop col rounded-3">
                    <!--Phạm vi hiển thị trong ô-->
                    <div class="pro-loop-wrap position-relative">
                        <!--Phần hình ảnh-->
                        <div class="pro-loop-image position-relative">

                            <!--Hiển thị hêt hàng-->
                            <div class="pro-loop-sd z-2 position-absolute">
                                <span>Hết hàng</span>
                            </div>

                            <!--Hiển thị quà tặng-->
                            <div class="gift product_gift_label d-none z-1" data-id="1012829436">
                                <img class="lazyload" src="../images/qua_tang.jpg" alt="icon quà tặng">
                            </div>

                            <!--Hiển thị hình ảnh-->
                            <a href="..//products/kinh-mat-gap-tron-oem-2015" class="pro-loop-image-item d-block">
                                <!--Ảnh khi chưa horver vào phần "Ô hiển thị"-->
                                <picture class="img-hidden-when-hover">
                                    <img class="lazyloaded  rounded-3"
                                         src="../images/product/kinh_mat/anhsangxanh2_zinmy-blue-sun-1.60.png"
                                         alt=" Kính Mát Gập Tròn OEM 2015 ">
                                </picture>
                                <!--Ảnh khi horver vào phẩn "Ô hiển thị"-->
                                <picture class="img-show-when-hover">
                                    <img class="lazyloaded  rounded-3"
                                         src="../images/product/kinh_mat/anhsangxanh1_zinmy-blue-protect-1.58.png"
                                         alt=" Kính Mát Gập Tròn OEM 2015 ">
                                </picture>
                            </a>
                        </div>

                        <!--hiển thị sản phẩm đang là sản phẩm hot-->
                        <div class="pro-loop-sold position-absolute">
                            <label>
                                <img src="../images/hot.jpg" alt="pro-loop-sold">
                            </label>
                        </div>

                        <!--Hiển thị tên thương hiệu-->
                        <div class="pro-loop-brand text-center">
                            <span class="pro-loop-vendor d-block">Tên thương hiệu</span>
                        </div>

                        <!--Hiển thị tên sản phẩm-->
                        <h3 class="pro-loop-name text-center">
                            <a href="..//products/kinh-mat-gap-tron-oem-2015" title="Tên sản phẩm">Tên sản phẩm</a>
                        </h3>


                        <!--hiển thị giá-->
                        <div class="pro-loop-price text-center mt-0">
                            <p class="fw-bold d-inline me-3">200,000 <span> ₫</span></p>
                            <del>250,000 <span> ₫</span></del>
                        </div>

                        <!--Hiển thị đánh giá và số lượng bán-->
                        <div class="sold_qty text-center">
                            <!--Phần đánh giá sao-->
                            <div class="prod-review-loop   d-inline-block">
                                <!--Danh sách ngôi sao-->
                                <div class="onirvapp--shape-container d-inline-block">
                                    <ul class="list-group list-group-horizontal">
                                        <!--Các li có class checked là sao hoàn thiện-->
                                        <li class="checked">
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li class="checked">
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li class="checked">
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li>
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li>
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                    </ul>
                                </div>

                                <!--số lượng đánh giá-->
                                <span class="onireviewapp-loopitem-title">(0 đánh giá)</span>
                            </div>

                            <!--Đường cắt ngang-->
                            <span class="h-line d-inline-block"></span>

                            <!--Phần hiển thị số lượng đã bán-->
                            <div class="sold_qty_num  d-inline-block">
                                <p class="m-0">
                                    Đã bán: <span>12</span>
                                </p>
                            </div>
                        </div>

                        <!--2 nút thao tác-->
                        <div class="pro-loop-bottom">
                            <button type="button" class="f-button setAddCartLoop" data-type="add-cart" data-id="">
                                Thêm vào giỏ hàng
                            </button>
                            <button type="button" class="f-button setBuyNow" data-type="buy-now" data-id="">Mua
                                ngay
                            </button>
                        </div>
                    </div>
                </div>
                <!--End 1 ô sản phẩm-->

                <!--Ô hiển thị-->
                <div class="pro-loop col rounded-3">
                    <!--Phạm vi hiển thị trong ô-->
                    <div class="pro-loop-wrap position-relative">
                        <!--Phần hình ảnh-->
                        <div class="pro-loop-image position-relative">

                            <!--Hiển thị hêt hàng-->
                            <div class="pro-loop-sd z-2 position-absolute">
                                <span>Hết hàng</span>
                            </div>

                            <!--Hiển thị quà tặng-->
                            <div class="gift product_gift_label d-none z-1" data-id="1012829436">
                                <img class="lazyload" src="../images/qua_tang.jpg" alt="icon quà tặng">
                            </div>

                            <!--Hiển thị hình ảnh-->
                            <a href="..//products/kinh-mat-gap-tron-oem-2015" class="pro-loop-image-item d-block">
                                <!--Ảnh khi chưa horver vào phần "Ô hiển thị"-->
                                <picture class="img-hidden-when-hover">
                                    <img class="lazyloaded  rounded-3"
                                         src="../images/product/kinh_mat/anhsangxanh2_zinmy-blue-sun-1.60.png"
                                         alt=" Kính Mát Gập Tròn OEM 2015 ">
                                </picture>
                                <!--Ảnh khi horver vào phẩn "Ô hiển thị"-->
                                <picture class="img-show-when-hover">
                                    <img class="lazyloaded  rounded-3"
                                         src="../images/product/kinh_mat/anhsangxanh1_zinmy-blue-protect-1.58.png"
                                         alt=" Kính Mát Gập Tròn OEM 2015 ">
                                </picture>
                            </a>
                        </div>

                        <!--hiển thị sản phẩm đang là sản phẩm hot-->
                        <div class="pro-loop-sold position-absolute">
                            <label>
                                <img src="../images/hot.jpg" alt="pro-loop-sold">
                            </label>
                        </div>

                        <!--Hiển thị tên thương hiệu-->
                        <div class="pro-loop-brand text-center">
                            <span class="pro-loop-vendor d-block">Tên thương hiệu</span>
                        </div>

                        <!--Hiển thị tên sản phẩm-->
                        <h3 class="pro-loop-name text-center">
                            <a href="..//products/kinh-mat-gap-tron-oem-2015" title="Tên sản phẩm">Tên sản phẩm</a>
                        </h3>


                        <!--hiển thị giá-->
                        <div class="pro-loop-price text-center mt-0">
                            <p class="fw-bold d-inline me-3">200,000 <span> ₫</span></p>
                            <del>250,000 <span> ₫</span></del>
                        </div>

                        <!--Hiển thị đánh giá và số lượng bán-->
                        <div class="sold_qty text-center">
                            <!--Phần đánh giá sao-->
                            <div class="prod-review-loop   d-inline-block">
                                <!--Danh sách ngôi sao-->
                                <div class="onirvapp--shape-container d-inline-block">
                                    <ul class="list-group list-group-horizontal">
                                        <!--Các li có class checked là sao hoàn thiện-->
                                        <li class="checked">
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li class="checked">
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li class="checked">
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li>
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li>
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                    </ul>
                                </div>

                                <!--số lượng đánh giá-->
                                <span class="onireviewapp-loopitem-title">(0 đánh giá)</span>
                            </div>

                            <!--Đường cắt ngang-->
                            <span class="h-line d-inline-block"></span>

                            <!--Phần hiển thị số lượng đã bán-->
                            <div class="sold_qty_num  d-inline-block">
                                <p class="m-0">
                                    Đã bán: <span>12</span>
                                </p>
                            </div>
                        </div>

                        <!--2 nút thao tác-->
                        <div class="pro-loop-bottom">
                            <button type="button" class="f-button setAddCartLoop" data-type="add-cart" data-id="">
                                Thêm vào giỏ hàng
                            </button>
                            <button type="button" class="f-button setBuyNow" data-type="buy-now" data-id="">Mua
                                ngay
                            </button>
                        </div>
                    </div>
                </div>
                <!--End 1 ô sản phẩm-->

                <!--Ô hiển thị-->
                <div class="pro-loop col rounded-3">
                    <!--Phạm vi hiển thị trong ô-->
                    <div class="pro-loop-wrap position-relative">
                        <!--Phần hình ảnh-->
                        <div class="pro-loop-image position-relative">

                            <!--Hiển thị hêt hàng-->
                            <div class="pro-loop-sd z-2 position-absolute">
                                <span>Hết hàng</span>
                            </div>

                            <!--Hiển thị quà tặng-->
                            <div class="gift product_gift_label d-none z-1" data-id="1012829436">
                                <img class="lazyload" src="../images/qua_tang.jpg" alt="icon quà tặng">
                            </div>

                            <!--Hiển thị hình ảnh-->
                            <a href="..//products/kinh-mat-gap-tron-oem-2015" class="pro-loop-image-item d-block">
                                <!--Ảnh khi chưa horver vào phần "Ô hiển thị"-->
                                <picture class="img-hidden-when-hover">
                                    <img class="lazyloaded  rounded-3"
                                         src="../images/product/kinh_mat/anhsangxanh2_zinmy-blue-sun-1.60.png"
                                         alt=" Kính Mát Gập Tròn OEM 2015 ">
                                </picture>
                                <!--Ảnh khi horver vào phẩn "Ô hiển thị"-->
                                <picture class="img-show-when-hover">
                                    <img class="lazyloaded  rounded-3"
                                         src="../images/product/kinh_mat/anhsangxanh1_zinmy-blue-protect-1.58.png"
                                         alt=" Kính Mát Gập Tròn OEM 2015 ">
                                </picture>
                            </a>
                        </div>

                        <!--hiển thị sản phẩm đang là sản phẩm hot-->
                        <div class="pro-loop-sold position-absolute">
                            <label>
                                <img src="../images/hot.jpg" alt="pro-loop-sold">
                            </label>
                        </div>

                        <!--Hiển thị tên thương hiệu-->
                        <div class="pro-loop-brand text-center">
                            <span class="pro-loop-vendor d-block">Tên thương hiệu</span>
                        </div>

                        <!--Hiển thị tên sản phẩm-->
                        <h3 class="pro-loop-name text-center">
                            <a href="..//products/kinh-mat-gap-tron-oem-2015" title="Tên sản phẩm">Tên sản phẩm</a>
                        </h3>


                        <!--hiển thị giá-->
                        <div class="pro-loop-price text-center mt-0">
                            <p class="fw-bold d-inline me-3">200,000 <span> ₫</span></p>
                            <del>250,000 <span> ₫</span></del>
                        </div>

                        <!--Hiển thị đánh giá và số lượng bán-->
                        <div class="sold_qty text-center">
                            <!--Phần đánh giá sao-->
                            <div class="prod-review-loop   d-inline-block">
                                <!--Danh sách ngôi sao-->
                                <div class="onirvapp--shape-container d-inline-block">
                                    <ul class="list-group list-group-horizontal">
                                        <!--Các li có class checked là sao hoàn thiện-->
                                        <li class="checked">
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li class="checked">
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li class="checked">
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li>
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li>
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                    </ul>
                                </div>

                                <!--số lượng đánh giá-->
                                <span class="onireviewapp-loopitem-title">(0 đánh giá)</span>
                            </div>

                            <!--Đường cắt ngang-->
                            <span class="h-line d-inline-block"></span>

                            <!--Phần hiển thị số lượng đã bán-->
                            <div class="sold_qty_num  d-inline-block">
                                <p class="m-0">
                                    Đã bán: <span>12</span>
                                </p>
                            </div>
                        </div>

                        <!--2 nút thao tác-->
                        <div class="pro-loop-bottom">
                            <button type="button" class="f-button setAddCartLoop" data-type="add-cart" data-id="">
                                Thêm vào giỏ hàng
                            </button>
                            <button type="button" class="f-button setBuyNow" data-type="buy-now" data-id="">Mua
                                ngay
                            </button>
                        </div>
                    </div>
                </div>
                <!--End 1 ô sản phẩm-->

                <!--Ô hiển thị-->
                <div class="pro-loop col rounded-3">
                    <!--Phạm vi hiển thị trong ô-->
                    <div class="pro-loop-wrap position-relative">
                        <!--Phần hình ảnh-->
                        <div class="pro-loop-image position-relative">

                            <!--Hiển thị hêt hàng-->
                            <div class="pro-loop-sd z-2 position-absolute">
                                <span>Hết hàng</span>
                            </div>

                            <!--Hiển thị quà tặng-->
                            <div class="gift product_gift_label d-none z-1" data-id="1012829436">
                                <img class="lazyload" src="../images/qua_tang.jpg" alt="icon quà tặng">
                            </div>

                            <!--Hiển thị hình ảnh-->
                            <a href="..//products/kinh-mat-gap-tron-oem-2015" class="pro-loop-image-item d-block">
                                <!--Ảnh khi chưa horver vào phần "Ô hiển thị"-->
                                <picture class="img-hidden-when-hover">
                                    <img class="lazyloaded  rounded-3"
                                         src="../images/product/kinh_mat/anhsangxanh2_zinmy-blue-sun-1.60.png"
                                         alt=" Kính Mát Gập Tròn OEM 2015 ">
                                </picture>
                                <!--Ảnh khi horver vào phẩn "Ô hiển thị"-->
                                <picture class="img-show-when-hover">
                                    <img class="lazyloaded  rounded-3"
                                         src="../images/product/kinh_mat/anhsangxanh1_zinmy-blue-protect-1.58.png"
                                         alt=" Kính Mát Gập Tròn OEM 2015 ">
                                </picture>
                            </a>
                        </div>

                        <!--hiển thị sản phẩm đang là sản phẩm hot-->
                        <div class="pro-loop-sold position-absolute">
                            <label>
                                <img src="../images/hot.jpg" alt="pro-loop-sold">
                            </label>
                        </div>

                        <!--Hiển thị tên thương hiệu-->
                        <div class="pro-loop-brand text-center">
                            <span class="pro-loop-vendor d-block">Tên thương hiệu</span>
                        </div>

                        <!--Hiển thị tên sản phẩm-->
                        <h3 class="pro-loop-name text-center">
                            <a href="..//products/kinh-mat-gap-tron-oem-2015" title="Tên sản phẩm">Tên sản phẩm</a>
                        </h3>


                        <!--hiển thị giá-->
                        <div class="pro-loop-price text-center mt-0">
                            <p class="fw-bold d-inline me-3">200,000 <span> ₫</span></p>
                            <del>250,000 <span> ₫</span></del>
                        </div>

                        <!--Hiển thị đánh giá và số lượng bán-->
                        <div class="sold_qty text-center">
                            <!--Phần đánh giá sao-->
                            <div class="prod-review-loop   d-inline-block">
                                <!--Danh sách ngôi sao-->
                                <div class="onirvapp--shape-container d-inline-block">
                                    <ul class="list-group list-group-horizontal">
                                        <!--Các li có class checked là sao hoàn thiện-->
                                        <li class="checked">
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li class="checked">
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li class="checked">
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li>
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                        <li>
                                            <i class="fa-regular fa-star" style="color: #fdd836;"></i>
                                        </li>
                                    </ul>
                                </div>

                                <!--số lượng đánh giá-->
                                <span class="onireviewapp-loopitem-title">(0 đánh giá)</span>
                            </div>

                            <!--Đường cắt ngang-->
                            <span class="h-line d-inline-block"></span>

                            <!--Phần hiển thị số lượng đã bán-->
                            <div class="sold_qty_num  d-inline-block">
                                <p class="m-0">
                                    Đã bán: <span>12</span>
                                </p>
                            </div>
                        </div>

                        <!--2 nút thao tác-->
                        <div class="pro-loop-bottom">
                            <button type="button" class="f-button setAddCartLoop" data-type="add-cart" data-id="">
                                Thêm vào giỏ hàng
                            </button>
                            <button type="button" class="f-button setBuyNow" data-type="buy-now" data-id="">Mua
                                ngay
                            </button>
                        </div>
                    </div>
                </div>
                <!--End 1 ô sản phẩm-->
            </div>
        </div>
    </section>
</main>

<footer id="footer" class="footer">
    <div class="container ">
        <div class="footer-top row">
            <div class="footer-top-item col">
                <h5>Mắt Kính KIMI
                </h5>
                <div class="footer-content footer-contact">
                    <div class="ft_map">

                    </div>
                    <ul>
                        <li class="contact-1"><i class="fa-solid fa-map-location-dot px-1"></i><span class="px-1">Khu phố 6, Phường Linh Trung, Quận Thủ Đức, TP. Hồ Chí Minh</span>
                        </li>
                        <li class="contact-2"><i class="fa-solid fa-phone px-1"></i><b><span
                                class="px-1">0855354919</span></b> ( 9:00 - 21:00 )
                        </li>
                        <li class="contact-3"><i class="fa-solid fa-business-time px-1"></i><span class="px-1">9:00 - 20:00 ( Kể cả T7 và CN )</span>
                        </li>
                        <li class="contact-4"><i class="fa-solid fa-envelope px-1"></i><span class="px-1">matkinhkimi@gmail.com</span>
                        </li>
                        <li class="contact-5"><a href="https://www.facebook.com/profile.php?id=100045667640701"><i
                                class="fa-brands fa-facebook-f px-1"></i><span
                                class="px-1 hover"><b>KIMI</b> </span></a></li>
                        <li class="contact-6"><p>Kiểm tra thị lực miễn phí &amp; cắt kính lấy liền.</p></li>
                        <li class="contact-7"><p>Hỗ trợ trả góp lãi suất 0% thẻ tín dụng.</p></li>
                    </ul>
                </div>
            </div>

            <div class="footer-top-item col">
                <h5>HỖ TRỢ KHÁCH HÀNG
                </h5>
                <div class="footer-content footer-contact">
                    <div class="ft_map">

                    </div>
                    <ul>
                        <li><a class="hover" href="../../policy_pages/huong_dan_mua_hang_online.jsp">Hướng dẫn mua hàng
                            online</a></li>
                        <li><a class="hover" href="../../policy_pages/chinh_sach_doi_tra_va_hoan_tien.jsp">Chính sách
                            thanh toán, giao nhận</a></li>
                        <li><a class="hover" href="../../policy_pages/chinh_sach_bao_mat.jsp">Chính sách bảo mật</a>
                        </li>
                        <li><a class="hover" href="../../policy_pages/chinh_sach_bao_hanh.jsp">Chính sách bảo hành</a>
                        </li>
                        <li><a class="hover" href="../../policy_pages/chinh_sach_doi_tra_va_hoan_tien.jsp">Chính sách
                            đổi trả và hoàn tiền</a></li>
                        <li><a class="hover" href="../../policy_pages/kiem_tra_don_hang.jsp">Kiểm tra đơn hàng</a></li>
                    </ul>
                </div>

            </div>
        </div>
        <div class="row footer-bot text-center border-3">
            <div class="logo col-lg-3 col-md-2 col-sm-2 border-0 px-lg-0 px-md-5">
                <a href="../index.jsp">
                    <img src="../logo.png" alt="logo.png">
                    <span>KIMI</span>
                </a>
            </div>
            <div class="col"><span>© 2023 - Tất cả các quyền thuộc về KIMI</span></div>
        </div>
    </div>

</footer>

<script src="../javascript/menu_footer.js"></script>
<script src="../javascript/thong_tin_san_pham.js"></script>

<script>
    var listImg = [
        `../images/product/trong-kinh/trong-kinh-mau/Trong-Kinh-Mat-Trang-Guong-Phan-Cuc-Optimax/optimax-201_016d79edc75b4c35bfb80e48db80ba6c_master.png`,
        `../images/product/trong-kinh/trong-kinh-mau/Trong-Kinh-Mat-Trang-Guong-Phan-Cuc-Optimax/optimax-201_016d79edc75b4c35bfb80e48db80ba6c_master.png`,
        `../images/product/trong-kinh/trong-kinh-mau/Trong-Kinh-Mat-Trang-Guong-Phan-Cuc-Optimax/optimax-201_016d79edc75b4c35bfb80e48db80ba6c_master.png`,
        `../images/product/trong-kinh/trong-kinh-mau/Trong-Kinh-Mat-Trang-Guong-Phan-Cuc-Optimax/optimax-201_016d79edc75b4c35bfb80e48db80ba6c_master.png`,
        `../images/product/trong-kinh/trong-kinh-mau/Trong-Kinh-Mat-Trang-Guong-Phan-Cuc-Optimax/optimax-201_016d79edc75b4c35bfb80e48db80ba6c_master.png`,
    ]

    var review = new Review("../logo.png", 'Nguyễn Đình Lam', 5, 'Sản phẩm thật là tuyệt vời. Quá đỉnh, shop thật tuyệt vời. Tôi sẽ quay trở lại', listImg, '13/05/2003');

    const listReview = [review, review, review, review, review, review];

    displayListReview(listReview);
</script>
<script type="text/javascript">
    <%User user = (User) session.getAttribute("user");
    if(user != null){%>
    const user = new User();
    user.setId(<%=user.getId()%>);
    user.setAvatar("../images/avatar/<%=user.getAvatar()%>");
    user.setFullName("<%=user.getFullName()%>");
    displayMenuAccount(user);
    <%} else{%>
    hidenMenuAccount();
    <%}%>
</script>
</body>
</html>