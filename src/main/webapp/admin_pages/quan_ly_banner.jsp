<%@ page import="model.bean.User" %>
<%@ page import="java.util.List" %>
<%@ page import="model.bean.BannerImage" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../bootstrap-5.3.2-dist/css/bootstrap-grid.css">
    <link rel="stylesheet" href="../bootstrap-5.3.2-dist/css/bootstrap.min.css">
    <script src="../bootstrap-5.3.2-dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../fontawesome-free-6.4.2-web/css/all.css">
    <link rel="stylesheet" href="../css/menu_footer.css">
    <link rel="stylesheet" href="../css/admin_pages.css">
    <link rel="stylesheet" href="../css/danh_sach_slider.css">
    <link rel="icon" href="../images/logo/logo_icon.png">

    <script src="../jquery/jquery-3.7.1.slim.min.js"></script>
    <script src="../jquery/jquery-3.7.1.min.js"></script>

    <title>Quản lý banner</title>
</head>
<body>
<header id="menu">
    <nav class="navbar navbar-expand-lg pb-0">
        <div class="container-xxl m-md-auto mt-2">
            <div class="row">
                <div class="logo col-lg-2 col-md-2 col-sm-2 border-0 px-lg-0 px-md-5">
                    <a href="quan_ly_tai_khoan.jsp" class="navbar-brand me-5">
                        <img src="../images/logo/logo.png" alt="logo.png">
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
                <div class="menu-product col-lg-12 col-md-1 col-sm-1">
                    <!--Icon 3 dấu gạch mang hiển thị menu-->
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                            data-bs-target="#offcanvasNavbarAdmin"
                            aria-controls="offcanvasNavbarAdmin" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <!--Các mục trong menu-->
                    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbarAdmin"
                         aria-labelledby="offcanvasNavbarAdminLabel">
                        <div class="offcanvas-body">
                            <ul class="navbar-nav m-auto">
                                <li class="nav-item dropdown pe-lg-5 pe-md-0 ">
                                    <a href="quan_ly_tai_khoan.jsp" class="nav-link px-4 rounded">Quản lý
                                        tài khoản</a>
                                </li>
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="quan_ly_san_pham.jsp" class="nav-link px-4 rounded">Quản lý sản
                                        phẩm</a>
                                </li>
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="quan_ly_hoa_don.jsp" class="nav-link px-4 rounded">Quản lý hóa đơn</a>
                                </li>
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="quan_ly_banner.jsp" class="nav-link px-4 rounded active">Quản lý banner</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>

<div id="main" class="mt-5 pb-5">
    <div class="container">
        <div class="frame-boder row p-3 my-5">
            <div class="title"><span>Danh sách hình ảnh trong thanh trượt</span></div>
            <div class="col-10">
                <div class="edit-img row row-cols-2">
                    <%
                        BannerImage loginBanner = (BannerImage) request.getAttribute("bannerLoginImages");
                        BannerImage signupBanner = (BannerImage) request.getAttribute("bannerSignupImages");
                        BannerImage prBanner = (BannerImage) request.getAttribute("bannerPRImages");
                        BannerImage logoBanner = (BannerImage) request.getAttribute("bannerLogoImages");
                            List<BannerImage>   urls = (List<BannerImage>) request.getAttribute("bannerImages");
                            for(BannerImage ri : urls){
                    %>
                    <div class="p-3">
                        <div class="item-img col">
                            <img class="img-fluid " src="../<%=ri.getUrlImage()%>" alt="">
                            <div class="check-box-img">
                                <input class="form-check-input" type="checkbox" id="check-img-01">
                            </div>
                        </div>
                    </div>
                    <% }%>
                </div>
            </div>
            <div class="col-2 p-4">
                <div class="btn-edit-img row row-cols-1 ">
                    <button class="remove-img col" type="button"><span><i class="fa-solid fa-trash"></i></span><span
                            class="px-2">Xóa</span></button>
                    <button class="select-all-img col" type="button"><span><i
                            class="fa-solid fa-check-double"></i></span><span class="px-2">Chọn tất cả</span></button>
                    <label class="add-img col" for="slide-added"><i class="fa-solid fa-arrow-up-from-bracket px-2"></i>Thêm ảnh</label>
                    <form class="upload-img " action="upload-file-on-banner-management" method="post" enctype="multipart/form-data">
                        <input id="slide-added" class="form-check-input imageInput " type="file" value="" name="slide-added"
                               accept="image/*" data-preview="slide-added" hidden>
                    </form>
                </div>
            </div>
        </div>
        <%--        quan ly banner--%>
        <div class="frame-boder frame-banner row p-3">
            <div class="title"><span>Danh sách hình ảnh hiện thị</span></div>
            <div class="row">
                <div class="edit-img row row-cols-2">
                    <div class="p-3">
                        <div class="item-img col">
                            <img class=" img-fluid" id="login-img" src="../<%=loginBanner.getUrlImage()%>" alt="">
                            <div class="text-banner"><span>Đăng nhập</span></div>
                            <form class="upload-img" action="upload-file-on-banner-management" method="post" enctype="multipart/form-data">
                                <input class="form-check-input imageInput" type="file" value="" name="banner-login"
                                       id="banner-login" accept="image/*" data-preview="login-img" style="height: 100px; width: 100%" hidden>
                                <label for="banner-login"><i class="fa-solid fa-arrow-up-from-bracket"></i></label>
                            </form>
                        </div>
                    </div>

                    <div class="p-3">
                        <div class="item-img col">
                            <img class=" img-fluid z-0 " id="signup-img" src="../<%=signupBanner.getUrlImage()%>" alt="">
                            <div class="text-banner"><span>Đăng ký</span></div>
                            <form class="upload-img" action="upload-file-on-banner-management" method="post" enctype="multipart/form-data">
                                <input class="form-check-input imageInput " type="file" value="" name="banner-signup"
                                       id="banner-signup" accept="image/*" data-preview="signup-img" hidden>
                                <label for="banner-signup"><i class="fa-solid fa-arrow-up-from-bracket"></i></label>
                            </form>
                        </div>
                    </div>
                    <div class="p-3">
                        <div class="item-img col">
                            <img class=" img-fluid z-0 " id="pr-img" src="../<%=prBanner.getUrlImage()%>" alt="">
                            <div class="text-banner"><span>Quảng cáo</span></div>
                            <form class="upload-img" action="upload-file-on-banner-management" method="post" enctype="multipart/form-data">
                                <input class="form-check-input imageInput " type="file" value="" name="banner-pr" id="banner-pr"
                                       accept="image/*" data-preview="pr-img" hidden>
                                <label for="banner-pr"><i class="fa-solid fa-arrow-up-from-bracket"></i></label>
                            </form>
                        </div>
                    </div>
                    <div class="p-3">
                        <div class="item-img col">
                            <img class=" img-fluid z-0" id="logo-img" src="../<%=logoBanner.getUrlImage()%>" alt="">
                            <div class="text-banner"><span>Logo</span></div>
                            <form class="upload-img" action="upload-file-on-banner-management" method="post" enctype="multipart/form-data">
                                <input class="form-check-input imageInput " type="file" value="" name="banner-logo"
                                       id="banner-logo" accept="image/*" data-preview="logo-img" hidden>
                                <label for="banner-logo"><i class="fa-solid fa-arrow-up-from-bracket"></i></label>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

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
        </div>
        <div class="row footer-bot text-center border-3">
            <div class="logo col-lg-3 col-md-2 col-sm-2 border-0 px-lg-0 px-md-5">
                <a href="quan_ly_tai_khoan.jsp">
                    <img src="../images/logo/logo.png" alt="logo.png">
                    <span>KIMI</span>
                </a>
            </div>
            <div class="col"><span>© 2023 - Tất cả các quyền thuộc về KIMI</span></div>
        </div>
    </div>
</footer>

<script src="../javascript/menu_footer.js"></script>
<script src="../javascript/admin_page.js"></script>
<script src="../javascript/danh_sach_slider.js"></script>
<script type="text/javascript">
    <%User user = (User) session.getAttribute("user");
    if(user != null){%>
    const user = new User();
    user.setId(<%=user.getId()%>);
    user.setAvatar("../<%=user.getAvatar()%>");
    user.setFullName("<%=user.getFullName()%>");
    displayMenuAccount(user);
    <%} else{%>
    hidenMenuAccount();
    <%}%>
</script>
</body>
</html>