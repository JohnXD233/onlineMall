package com.demo.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.bean.User;
import com.demo.service.UserService;

/**
 * Servlet implementation class UserServlet
 * 控制用户的页面响应
 */
@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService=new UserService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		//响应时，内容类型方式以及编码方式   中文转码
		response.setContentType("text/html;charset=UTF-8");
		
		//获取表单单个数据
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		String checkbox=request.getParameter("checkbox");
		System.out.println(checkbox);
		
		User user=userService.findUser(new User(username,password));
		if(user != null) {
			//登录成功
			System.out.println("登录成功");
			
			//登陆用户 放进session会话
			request.getSession().setAttribute("login_user", user);
			
			
			if(checkbox!=null&&checkbox.equals("on")) {
				//表要记住账号，设置cookie,这边没有在前端采用jQuery的方式
				Cookie uCookie=new Cookie("username", username);
				uCookie.setMaxAge(60*60*24); //设置cookie有效期24小时
				response.addCookie(uCookie);
				
				Cookie pCookie=new Cookie("password", password);
				pCookie.setMaxAge(60*60*24); 
				response.addCookie(pCookie);
			}
			
			//请求转发
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else {
			//登录失败
			System.out.println("登录失败");
			//重定向
			response.sendRedirect("index.jsp");
		}
	}

}
