package controller.product_manager;

import controller.Action;
import model.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ChangePageAddProduct implements Action {
    @Override
    public void action(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = ProductService.getInstance().createProductTemp();
        request.getSession().setAttribute("product-id", productId);
        request.getSession().setAttribute("action-submit", "add-product");
        request.getSession().setAttribute("id-button-cancel", "cancel-add-product");
        response.sendRedirect("chinh_sua_san_pham.jsp");
    }
}
