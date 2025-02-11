package controller.review;

import controller.Action;
import model.bean.BannerImage;
import model.service.BannerService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoadBannerForReview implements Action {
    @Override
    public void action(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BannerImage logo = BannerService.getInstance().getBannerByDescription("%banner%logo%");
        request.setAttribute("logo", logo);
        request.getRequestDispatcher("danh_gia.jsp").forward(request, response);
    }
}
