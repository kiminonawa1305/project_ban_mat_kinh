package filter;

import model.bean.BannerImage;
import model.service.BannerService;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(filterName = "LoadBannerForContactFilter", value = "/lien_he.jsp")
public class LoadBannerForContactFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        BannerImage logo = (BannerImage) ((HttpServletRequest) request).getSession().getAttribute("logo");
        BannerImage contact = (BannerImage) ((HttpServletRequest) request).getSession().getAttribute("contact");
        if (logo == null) {
            logo = BannerService.getInstance().getBannerByDescription("%banner%logo%");
            ((HttpServletRequest) request).getSession().setAttribute("logo", logo);
        }

        if (contact == null) {
            contact = BannerService.getInstance().getBannerByDescription("%banner%contact%");
            ((HttpServletRequest) request).getSession().setAttribute("contact", contact);
        }


        chain.doFilter(request, response);
    }
}
