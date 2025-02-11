package controller.cart;

import controller.Action;
import model.bean.Cart;
import model.service.BillService;
import model.service.CartService;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;

public class ReduceProductCart implements Action {
    @Override
    public void action(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        CartService cart = (CartService) session.getAttribute("cart");
        if (cart == null) cart = new CartService(new Cart());
        int productId = 0;
        int modelId = 0;
        String checked = request.getParameter("checked");
        try {
            productId = Integer.parseInt(request.getParameter("productId"));
            modelId = Integer.parseInt(request.getParameter("modelId"));
        } catch (Exception e) {
            response.sendRedirect("error.jsp");
        }

        if (!cart.reduceProductCart(productId, modelId, 1)) response.getWriter().write("error");
        else {
            JSONObject json = new JSONObject();
            NumberFormat nf = NumberFormat.getCurrencyInstance(Locale.of("vi", "VN"));
            session.setAttribute("cart", cart);
            if (checked.equalsIgnoreCase("true")) {
                BillService billService = (BillService) session.getAttribute("bill");
                billService.put(Cart.getKey(productId, modelId), cart.getProductCart(productId, modelId));
                session.setAttribute("bill", billService);
                billService.setUpJSON(json);
            }
            json.put("totalPriceProduct", nf.format(cart.getTotalPriceProducts(productId, modelId)));
            json.put("quantity", cart.getQuantity(productId, modelId));
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json.toString());
        }
    }
}
