package controller.cart;

import model.bean.Cart;
import model.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class RemoveProductCart implements ActionCart {
    @Override
    public void action(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        CartService cart = (CartService) session.getAttribute("cart");
        if (cart == null) cart = new CartService(new Cart());
        int productId = 0;
        int modelId = 0;
        try {
            productId = Integer.parseInt(request.getParameter("productId"));
            modelId = Integer.parseInt(request.getParameter("modelId"));
        } catch (Exception e) {
            response.sendRedirect("error.jsp");
        }

        cart.removeProductCart(productId, modelId);
        session.setAttribute("cart", cart);
        response.getWriter().write(String.valueOf(cart.getTotalProduct()));
    }
}
