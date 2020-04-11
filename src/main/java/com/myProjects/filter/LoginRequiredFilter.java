package com.myProjects.filter;

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

@WebFilter("*.do")
public class LoginRequiredFilter implements Filter {

    @Override
    public void destroy() {
        // Do nothing 
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        Object loggedInUser = request.getSession().getAttribute("userName");
        
        if (loggedInUser == null) {
            request.getRequestDispatcher("/login.do").forward(servletRequest, servletResponse);
            return;
        }
        
        if(request.getRequestURI().contains("/login.do")) {
            ((HttpServletResponse) servletResponse).sendRedirect("/list-qa.do");
            return;
        }
        
        chain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {
        // Do nothing
    }

}
