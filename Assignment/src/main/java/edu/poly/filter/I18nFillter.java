package edu.poly.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class I18nFillter
 */
@WebFilter("/*")
public class I18nFillter implements HttpFilter {

	@Override
	public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		if(req.getParameter("lang")!=null) {
			req.getSession().setAttribute("lang", req.getParameter("lang"));;
		}
		chain.doFilter(req, resp);
	}
	
}
