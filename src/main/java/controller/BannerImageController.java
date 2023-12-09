package controller;

import model.bean.BannerImage;
import model.service.BannerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BannerImageController", value = "/banner-manager")
public class BannerImageController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<BannerImage> urlBannerImages = BannerService.getInstance().getSlideShowImages(); // slide
        BannerImage urlBannerPRImages = BannerService.getInstance().getBannerPRImages(); // banner pr
        BannerImage urlBannerLoginImages = BannerService.getInstance().getBannerLoginImages(); // banner login
        BannerImage urlBannerSignupImages = BannerService.getInstance().getBannerSignupImages(); // banner Signup
        BannerImage urlBannerLogoImages = BannerService.getInstance().getLogoImages(); // banner logo

        request.setAttribute("bannerImages", urlBannerImages); // slide
        request.setAttribute("bannerPRImages", urlBannerPRImages); // banner pr
        request.setAttribute("bannerLoginImages", urlBannerLoginImages); // banner login
        request.setAttribute("bannerSignupImages", urlBannerSignupImages); // banner Signup
        request.setAttribute("bannerLogoImages", urlBannerLogoImages); // banner logo
        request.getRequestDispatcher("admin_pages/danh_sach_slider.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}