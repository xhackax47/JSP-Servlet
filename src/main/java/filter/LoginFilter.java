package filter;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/*")
public class LoginFilter implements javax.servlet.Filter {

	public String locationSuccess = "loginSuccess.jsp";
	public String locationError = "loginError.jsp";

	public LoginFilter() {
	}

	public void init(final FilterConfig fConfig) throws ServletException {
	}

	public void destroy() {
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		HttpSession session = request.getSession();
		String loginURI = request.getContextPath() + "/login";
		boolean isConnected = !((session.getAttribute("isConnected") == null)
				|| ((boolean) session.getAttribute("isConnected") == false));

		if (isConnected) {
			chain.doFilter(request, response);
			response.sendRedirect(locationSuccess);
			//response.sendRedirect(loginURI);
		} else {
			res.getWriter().append("Non connecté");
			if(request.getRequestURI() != "login.jsp") {
				response.sendRedirect(locationError);
			}
		}
		
	}

}
