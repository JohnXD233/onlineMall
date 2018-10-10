package com.demo.filter;

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

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.demo.bean.User;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter(filterName="loginFilter",urlPatterns="/*")
public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**判断用户是否登录的过滤器
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
				//先强转
				HttpServletRequest req=(HttpServletRequest)request;
				HttpServletResponse resp=(HttpServletResponse)response;
				
				//获取url
				String uri=req.getRequestURI();
				
				//chain.doFilter(request, response);
				//判断用户是否登录，相关页面展示权限的逻辑代码，使用过滤器Filter   注解方式  /*
				/*if(uri.contains("index")||uri.contains("register")||uri.contains("css")||uri.contains("js")
						||uri.contains("assets")||uri.contains("images")||uri.contains("Servlet"))*/
				
				//成功过滤
				if(!uri.contains("jsp")||uri.contains("index")||uri.contains("register")||uri.contains("m_"))
				{
					//登录页放行
					chain.doFilter(request, response);
					//System.out.println("uri="+uri);
				}
				else {
					User user=(User)req.getSession().getAttribute("login_user"); //这个session要看设置它的 LoginServlet.java 中的相关代码
					if(user!=null)
					{
						chain.doFilter(request, response);
						//放行，并且将那个页面的登录divbox变成 用户信息，暂未实现，这边只能在每个页面判断，再处理！！！！！！！！！！！！！！！！待优化
					}
					else {
						//没有session信息
						//resp.getWriter().println("<script>toastr.success(\"没有权限，请先登录\",\"页面访问\");</script>");	
						resp.sendRedirect("index.jsp");
						//req.getRequestDispatcher("index.jsp").forward(req, resp);
						return;
					}
				}
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
