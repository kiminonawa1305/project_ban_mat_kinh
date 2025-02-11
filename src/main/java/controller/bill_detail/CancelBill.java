package controller.bill_detail;

import controller.Action;
import model.bean.BillStatus;
import model.service.BillStatusService;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;

public class CancelBill implements Action {
    @Override
    public void action(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BillStatusService billStatusService = BillStatusService.getInstance();
        String billIdString = request.getParameter("bill-id");
        int billId = 0;
        try {
            billId = Integer.parseInt(billIdString);
        } catch (NumberFormatException e) {
            response.setStatus(404);
            response.getWriter().println(new JSONObject());
            return;
        }

        BillStatus billStatus = new BillStatus();
        billStatus.setBillId(billId);
        billStatus.setDate(LocalDateTime.now());
        billStatus.setStatus("Đã hủy");
        billStatus.setDescribe("Hủy bỏ đơn hàng");
        billStatus.setCanEdit(false);
        billStatusService.insert(billStatus);

        response.getWriter().println(new JSONObject());
    }
}
