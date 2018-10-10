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

	/**�ж��û��Ƿ��¼�Ĺ�����
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
				//��ǿת
				HttpServletRequest req=(HttpServletRequest)request;
				HttpServletResponse resp=(HttpServletResponse)response;
				
				//��ȡurl
				String uri=req.getRequestURI();
				
				//chain.doFilter(request, response);
				//�ж��û��Ƿ��¼�����ҳ��չʾȨ�޵��߼����룬ʹ�ù�����Filter   ע�ⷽʽ  /*
				/*if(uri.contains("index")||uri.contains("register")||uri.contains("css")||uri.contains("js")
						||uri.contains("assets")||uri.contains("images")||uri.contains("Servlet"))*/
				
				//�ɹ�����
				if(!uri.contains("jsp")||uri.contains("index")||uri.contains("register")||uri.contains("m_"))
				{
					//��¼ҳ����
					chain.doFilter(request, response);
					//System.out.println("uri="+uri);
				}
				else {
					User user=(User)req.getSession().getAttribute("login_user"); //���sessionҪ���������� LoginServlet.java �е���ش���
					if(user!=null)
					{
						chain.doFilter(request, response);
						//���У����ҽ��Ǹ�ҳ��ĵ�¼divbox��� �û���Ϣ����δʵ�֣����ֻ����ÿ��ҳ���жϣ��ٴ������������������������������������Ż�
					}
					else {
						//û��session��Ϣ
						//resp.getWriter().println("<script>toastr.success(\"û��Ȩ�ޣ����ȵ�¼\",\"ҳ�����\");</script>");	
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
