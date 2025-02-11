<%@ page import="model.bean.User" %>
<%@ page import="model.service.CartService" %>
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
    <link rel="icon" href="../images/logo/logo_icon.png">

    <script src="../jquery/jquery-3.7.1.slim.min.js"></script>
    <script src="../jquery/jquery-3.7.1.min.js"></script>

    <title>Thế giới mắt kính</title>
</head>
<body>
<header id="menu">
    <nav class="navbar navbar-expand-lg pb-0">
        <div class="container-xxl m-md-auto mt-2">
            <div class="row">
                <div class="logo col-lg-2 col-md-2 col-sm-2 border-0 px-lg-0 px-md-5">
                    <a href="../index.jsp" class="navbar-brand me-5">
                        <img src="../images/logo/logo.png" alt="logo.png">
                        KIMI
                    </a>
                </div>
                <div class="search col-lg-5 col-md-6 col-sm-6 border-0 px-lg-0 px-md-5">
                    <form class="d-flex input-group">
                        <input class="form-control border-0 ps-3" type="text" name="search" id="search"
                               placeholder="Nhập tên sản phẩm!">
                        <p class="input-group-text  border-0"><a class="nav-link" href="#"><i
                                class="fa-solid fa-magnifying-glass"></i></a></p>
                    </form>
                </div>
                <div class="login col-lg-2 col-md-1 col-sm-1 border-0 px-lg-0">
                    <a href="../dang_nhap.jsp">
                        <button type="button" class="btn d-flex float-lg-end  me-xl-4 me-lg-2">
                            <p class="d-lg-inline d-md-none d-sm-none">Đăng nhập</p>
                            <p class="d-lg-none d-md-line material-symbols-outlined ms-1">login</p>
                        </button>
                    </a>
                </div>
                <div class="sign-up col-lg-1 col-md-1 col-sm-1 border-0 px-lg-0">
                    <a href="../dang_ky.jsp">
                        <button type="button" class="btn d-flex float-lg-none">
                            <p class="d-lg-inline d-md-none  d-sm-none">Đăng ký</p>
                            <p class="d-lg-none d-md-line material-symbols-outlined ms-1">logout</p>
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
                                <span id="amount-product" class="amount-product">
                                    <%
                                        CartService cart = (CartService) session.getAttribute("cart");
                                        if (cart == null) cart = new CartService();
                                    %>
                                    <%=cart.getTotalProduct()%>
                                </span>
                            </span>
                        </button>
                    </a>
                </div>
                <div class="menu-product col-lg-12 col-md-1 col-sm-1">
                    <!--Icon 3 dấu gạch mang hiển thị menu-->
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                            data-bs-target="#offcanvasNavbarPolicy"
                            aria-controls="offcanvasNavbarPolicy" aria-label="Toggle navigation">
                        <p class="navbar-toggler-icon"></p>
                    </button>
                    <!--Các mục trong menu-->
                    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbarPolicy"
                         aria-labelledby="offcanvasNavbarPolicyLabel">
                        <div class="offcanvas-body">
                            <ul class="navbar-nav m-auto">
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="DisplayProduct?idCategoryGroup=1&page=1"
                                       class="nav-link dropdown-toggle px-4 rounded"
                                       type="button">
                                        <span>Kính mát</span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="DisplayProduct?idCategory=1&page=1">Kính mát
                                            nam</a></li>
                                        <li><a class="dropdown-item" href="DisplayProduct?idCategory=2&page=1">Kính mát
                                            nữ</a></li>
                                        <li><a class="dropdown-item" href="DisplayProduct?idCategory=3&page=1">Kính
                                            đi ngày và đêm</a></li>
                                        <li><a class="dropdown-item" href="DisplayProduct?idCategory=4&page=1">Kính đổi
                                            màu</a></li>
                                        <li><a class="dropdown-item" href="DisplayProduct?idCategory=5&page=1">Kính lọc ánh sáng
                                            xanh</a></li>
                                        <li><a class="dropdown-item"  href="DisplayProduct?idCategory=6&page=1">Kính Mắt Clip on 2
                                            Lớp</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="DisplayProduct?idCategoryGroup=2&page=1"
                                       class="nav-link dropdown-toggle px-4 rounded" type="button">
                                        Mắt kính trẻ em
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item"
                                               href="DisplayProduct?idCategory=7&page=1">Gọng Kính Trẻ Em</a>
                                        </li>
                                        <li><a class="dropdown-item"
                                               href="DisplayProduct?idCategory=8&page=1">Kính Mát Trẻ Em</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="DisplayProduct?idCategoryGroup=3&page=1"
                                       class="nav-link dropdown-toggle px-4 rounded"
                                       type="button">
                                        Gọng kính
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="DisplayProduct?idCategory=9&page=1">Gọng
                                            kính nữa khung</a></li>
                                        <li><a class="dropdown-item" href="DisplayProduct?idCategory=10&page=1">Gọng
                                            kính khoan</a></li>
                                        <li><a class="dropdown-item" href="DisplayProduct?idCategory=11&page=1">Gọng
                                            kính tròn</a></li>
                                        <li><a class="dropdown-item" href="DisplayProduct?idCategory=12&page=1">Gọng
                                            kính titan</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="DisplayProduct?idCategoryGroup=4&page=1"
                                       class="nav-link dropdown-toggle px-4 rounded"
                                       type="button">
                                        Tròng kính
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item"
                                               href="DisplayProduct?idCategory=13&page=1">Tròng kính
                                            chống ánh sáng xanh</a></li>
                                        <li><a class="dropdown-item" href="DisplayProduct?idCategory=14&page=1">Tròng
                                            kính đổi màu</a></li>
                                        <li><a class="dropdown-item" href="DisplayProduct?idCategory=15&page=1">Tròng
                                            kính màu</a></li>
                                        <li><a class="dropdown-item"
                                               href="DisplayProduct?idCategory=16&page=1">Tròng kính cho
                                            gọng khoan</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="DisplayProduct?idCategory=0&page=1" class="menu-item nav-link px-4 rounded">Khuyến mãi</a>
                                </li>
                                <li class="nav-item dropdown pe-lg-5 pe-md-0">
                                    <a href="lien_he.jsp" class="nav-link px-4 rounded">Liên hệ</a>
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
    <div class="container">
        <div class="title mb-4">
            <p class="h1 fw-bold">Chính Sách Bảo Mật</p>
        </div>
        <div class="content">
            <p class="fw-bold h5">I. Chính sách bảo mật và chia sẻ thông tin</p>
            <div class=" mt-4">
                <p class="fw-bold m-0">1. Mục đích</p>
                <p class="ms-4">Mắt kính KIMI tôn trọng sự riêng tư, muốn bảo vệ thông tin cá nhân và thông tin thanh
                    toán của bạn. "Chính sách bảo mật" dưới đây là những cam kết mà chúng tôi thực hiện, nhằm tôn trọng
                    và bảo vệ quyền lợi của người truy cập.</p>
            </div>
            <div class="mt-4">
                <p class="fw-bold">2. Quy định cụ thể</p>
                <div>
                    <p class="fw-bold">2.1/ Thu thập thông tin</p>
                    <p class="ms-4">- Khi khách hàng thực hiện giao dịch/ đăng ký mở tài khoản tại matkinhhanquoc.com
                        khách hàng phải cung cấp một số thông tin cần thiết.</p>
                    <p class="ms-4">- Khách hàng có trách nhiệm bảo đảm thông tin đúng và luôn cập nhật đầy đủ và chính
                        xác nhất.</p>
                </div>
                <div class="mt-2">
                    <p class="fw-bold">2.2/ Lưu trữ và bảo mật thông tin riêng</p>
                    <p class="ms-4">- Thông tin khách hàng, cũng như các trao đổi giữa khách hàng và Mắt kính KIMI, đều
                        được lưu trữ và bảo mật bởi hệ thống của Mắt kính KIMI.</p>
                    <p class="ms-4">- Mắt kính KIMI có các biện pháp thích hợp về kỹ thuật và an ninh để ngăn chặn việc
                        truy cập , sử dụng trái phép thông tin khách hàng.</p>
                </div>
                <div class="mt-2">
                    <p class="fw-bold">2.3/ Sử dụng thông tin khách hàng</p>
                    <p class="ms-4">* Mắt kính KIMI có quyền sử dụng thông tin khách hàng cung cấp để:</p>
                    <p class="ms-4">- Giao hàng theo địa chỉ mà quý khách cung cấp.</p>
                    <p class="ms-4">- Cung cấp thông tin liên quan đến sản phẩm, lợi ích, ưu đãi hay các thư từ
                        khác.</p>
                    <p class="ms-4">- Xử lý đơn đặt hàng và cung cấp dịch vụ, thông tin qua trang web matkinhhanquoc.com
                        theo yêu cầu của quý khách.</p>
                    <p class="ms-4">- Sử dụng thông tin đã thu thập được từ các cookies nhằm cải thiện trải nghiệm người
                        dùng và chất lượng các dịch vụ của Mắt kính KIMI.</p>
                </div>
            </div>
            <div class=" mt-4">
                <p class="fw-bold m-0">3. Liên kết với website khác</p>
                <p class="ms-4"> - Khách hàng có trách nhiệm bảo vệ thông tin tài khoản của mình và không cung cấp bất
                    kỳ thông tin nào liên quan đến tài khoản và mật khẩu truy cập trên matkinhhanquoc.com trên các
                    website khác.</p>
            </div>
            <div class=" mt-4">
                <p class="fw-bold m-0">4. Chia sẻ thông tin khách hàng</p>
                <p class="ms-4">Mắt kính Miki cam kết sẽ không chia sẻ thông tin của khách hàng cho bất kỳ một công ty
                    nào khác ngoại trừ những công ty và các bên thứ ba có liên quan trực tiếp đến việc giao hàng. Chúng
                    tôi có thể tiết lộ hoặc cung cấp thông tin cá nhân của quý khách trong các trường hợp thật sự cần
                    thiết như sau:</p>
                <p class="ms-4">- Khi có yêu cầu của các cơ quan pháp luật.</p>
                <p class="ms-4">- Chia sẻ thông tin khách hàng với đối tác chạy quảng cáo như Google ví dụ như tiếp thị
                    lại khách hàng dựa theo hành vi của khách hàng.</p>
                <p class="ms-4">- Nghiên cứu thị trường và các báo cáo phân tích và tuyệt đối không chuyển cho bên thứ
                    ba.</p>
            </div>
            <div class=" mt-4">
                <p class="fw-bold m-0">5. Sử dụng Cookie</p>
                <p class="ms-4">Khi khách hàng sử dụng dịch vụ hoặc xem nội dung do Mắt kính Miki cung cấp, chúng tôi tự
                    động thu thập và lưu trữ một số thông tin trong nhật ký máy chủ. Những thông tin này bao gồm:</p>
                <p class="ms-4">- Các chi tiết về cách khách hàng sử dụng dịch vụ của Mắt kính Miki chẳng hạn như truy
                    vấn tìm kiếm.</p>
                <p class="ms-4">- Địa chỉ giao thức Internet.</p>
                <p class="ms-4">- Thông tin sự cố thiết bị như lỗi, hoạt động của hệ thống, cài đặt phần cứng, loại
                    trình duyệt, ngôn ngữ trình duyệt, ngày và thời gian bạn yêu cầu và URL giới thiệu.</p>
                <p class="ms-4">- Cookie có thể nhận dạng duy nhất trình duyệt hoặc Tài khoản của khách hàng</p>
            </div>
            <div class=" mt-4">
                <p class="fw-bold m-0">6. Liên hệ, giải đáp, thắc mắc.</p>
                <p class="ms-4">Bất kỳ khi nào khách hàng cần hỗ trợ, xin vui lòng liên hệ với Mắt kính Miki tại Emai:
                    matkinhkimi@gmial.com - ĐT: 0855 354 919</p>
            </div>
        </div>
        <div class="title mb-4">
            <p class="h5 fw-bold">II. Chính sách bảo mật thanh toán</p>
            <p class="ms-4">- Hệ thống thanh toán thẻ trên matkinhhanquoc.com được cung cấp bởi các đối tác cổng thanh
                toán đã được cấp phép hoạt động hợp pháp tại Việt Nam. Do đó, các tiêu chuẩn bảo mật thanh toán thẻ của
                Mắt kính Miki đảm bảo tuân thủ theo các tiêu chuẩn bảo mật của Đối tác cộng thanh toán.</p>
            <p class="ms-4">- Ngoài ra, Mắt kính Miki còn có các tiêu chuẩn bảo mật giao dịch thanh toán riêng để đảm
                bảo an toàn các thông tin thanh toán của khách hàng.</p>
        </div>
    </div>
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
                        <li><a class="hover" href="huong_dan_mua_hang_online.jsp">Hướng dẫn mua hàng online</a>
                        </li>
                        <li><a class="hover" href="chinh_sach_thanh_toan_va_giao_nhan.jsp">Chính sách thanh toán,
                            giao nhận</a></li>
                        <li><a class="hover" href="chinh_sach_bao_mat.jsp">Chính sách bảo mật</a></li>
                        <li><a class="hover" href="chinh_sach_bao_hanh.jsp">Chính sách bảo hành</a></li>
                        <li><a class="hover" href="chinh_sach_doi_tra_va_hoan_tien.jsp">Chính sách đổi trả và hoàn
                            tiền</a></li>
                        <li><a class="hover" href="kiem_tra_don_hang.jsp">Kiểm tra đơn hàng</a></li>
                    </ul>
                </div>

            </div>
        </div>
        <div class="row footer-bot text-center border-3">
            <div class="logo col-lg-3 col-md-2 col-sm-2 border-0 px-lg-0 px-md-5">
                <a href="../index.jsp">
                    <img src="../images/logo/logo.png" alt="logo.png">
                    <span>KIMI</span>
                </a>
            </div>
            <div class="col"><span>© 2023 - Tất cả các quyền thuộc về KIMI</span></div>
        </div>
    </div>
</footer>

<script src="../javascript/menu_footer.js"></script>
<script src="../javascript/chinh_sach.js"></script>
<script type="text/javascript">
    <%User user = (User) session.getAttribute("user");
    if(user != null){%>
    const user = new User();
    user.setId(<%=user.getId()%>);
    user.setAvatar("../<%=user.getAvatar()%>");
    user.setFullName("<%=user.getFullName()%>");
    displayMenuAccount(user);
    <%} else{%>
    hiddenMenuAccount();
    <%}%>
</script>
</body>
</html>