package controller.cart;

import controller.Action;
import model.bean.Cart;
import model.service.BillService;
import model.service.CartService;
import org.json.JSONObject;
import org.json.JSONWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CheckedProduct implements Action {
    @Override
    public void action(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String checked = request.getParameter("checked");
        BillService billService = (BillService) request.getSession().getAttribute("bill");
        int productId = 0;
        int modelId = 0;
        try {
            productId = Integer.parseInt(request.getParameter("productId"));
            modelId = Integer.parseInt(request.getParameter("modelId"));
        } catch (NumberFormatException e) {

        }

        if (checked.equalsIgnoreCase("true")) {
            CartService cartService = (CartService) request.getSession().getAttribute("cart");
            billService.put(Cart.getKey(productId, modelId), cartService.getProductCart(productId, modelId));
        } else billService.remove(Cart.getKey(productId, modelId));
        JSONObject json = new JSONObject();
        billService.setUpJSON(json);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json.toString());
    }
}
