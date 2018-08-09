package com.demo.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.bean.Product;
import com.demo.bean.User;
import com.demo.service.ProductService;
import com.demo.service.UserService;
import com.google.gson.Gson;

/**
 * Servlet implementation class UserServlet 控制用户的页面响应
 */
@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserService();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);

		// 响应时，内容类型方式以及编码方式 中文转码
		response.setContentType("text/html;charset=UTF-8");

		// 网页传递数据 中文转码
		request.setCharacterEncoding("UTF-8");

		Gson gson = new Gson();

		// 获取表单单个数据
		
		// System.out.println(checkbox);
		// 获取操作的类型
		String oper = request.getParameter("oper");
		// System.out.println(oper);

		
		if (oper.equals("login")) {//用户登录
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String checkbox = request.getParameter("checkbox");
			User user = userService.findUser(new User(username, password));
			
			if (user != null) {
				// 登录成功
				System.out.println("登录成功");

				// 登陆用户 放进session会话
				request.getSession().setAttribute("login_user", user);

				Map<String, Object> dataBackForAjax = new HashMap<>();

				// String uString=gson.toJson(user); 注意在这边不要把user转为json，转一次即可

				dataBackForAjax.put("user", user);
				dataBackForAjax.put("status", "1");

				String json = gson.toJson(dataBackForAjax);
				// System.out.println(json);使用gson变json

				// request.setAttribute("json", json); // 请求转发

				// 请注意使用ajax 回调到请求页面应该用下面的，这个是有页面跳转 请求转发，才转发request
				response.getWriter().print(json);// 全部采用json串返回

				if (checkbox != null && checkbox == "true") {
					// 表要记住账号，设置cookie,这边没有在前端采用jQuery的方式
					Cookie uCookie = new Cookie("username", username);
					uCookie.setMaxAge(60 * 60 * 24); // 设置cookie有效期24小时
					response.addCookie(uCookie);

					Cookie pCookie = new Cookie("password", password);
					pCookie.setMaxAge(60 * 60 * 24);
					response.addCookie(pCookie);
				}

				// 请求转发,使用ajax，不用请求转发
				// request.getRequestDispatcher("index.jsp").forward(request, response);
			} else {
				// request.setAttribute("status", "0");
				response.getWriter().print("{\"status\":\"0\"}");
				// 登录失败
				System.out.println("登录失败");
				// 重定向
				// response.sendRedirect("index.jsp");
			}
		} else if (oper.equals("logout")) {
			//用户注销
			response.getWriter().print("{\"status\":\"1\"}"); // 表示session以及销毁，  特别注意，json串必须用"" 括起来（java中），单引号不行，经验总结
			// 退出登录，销毁session
			request.getSession().invalidate();

		}
		else if(oper.equals("register")) {
			//用户注册
			String username2=request.getParameter("userName");
			String realname=request.getParameter("realName");
			String email=request.getParameter("email");
			String address=request.getParameter("address");
			String phone=request.getParameter("phone");
			String password2=request.getParameter("password");
			//status 默认 0 未激活
			
			User user2=new User();
			user2.setUname(username2);
			user2.setUpass(password2);
			user2.setRealname(realname);
			user2.setEmail(email);
			user2.setAddress(address);
			user2.setPhone(phone);
			if(userService.addUser(user2)) {
				response.getWriter().print("{\"status\":\"1\",\"uname\":\""+username2+"\",\"upass\":'"+password2+"\"}");
			}
			else {
				response.getWriter().print("{\"status\":\"0\"");
			}
		}
		else if(oper.equals("details")) {
			//用户请求，要显示商品详细信息,  注意这边不可直接在jsp直接跳转，必须经过servlet+service
			int pid=Integer.parseInt(request.getParameter("pid"));
			Product product=new ProductService().findProduct(pid);
			request.setAttribute("product", product);
			if(product!=null) {
				request.getRequestDispatcher("details.jsp").forward(request, response);
			}
		}
		else if(oper.equals("buy")) {
			//这边购买也直接加入购物车
			int pid=Integer.parseInt(request.getParameter("pid"));
			Product product=new ProductService().findProduct(pid);
			request.setAttribute("product", product);
			if(product!=null) {
				request.getRequestDispatcher("checkout.jsp").forward(request, response);
			}
			
		}
		else if(oper.equals("shoppingcar")) {
			int pid=Integer.parseInt(request.getParameter("pid"));
			Product product=new ProductService().findProduct(pid);
			request.setAttribute("product", product);
			if(product!=null) {
				request.getRequestDispatcher("checkout.jsp").forward(request, response);
			}
		}
	}

}
