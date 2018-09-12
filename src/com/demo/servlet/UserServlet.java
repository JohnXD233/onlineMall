package com.demo.servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.bean.Order;
import com.demo.bean.Product;
import com.demo.bean.ShoppingCar;
import com.demo.bean.User;
import com.demo.service.OrderService;
import com.demo.service.ProductService;
import com.demo.service.ShoppingCarService;
import com.demo.service.UserService;
import com.google.gson.Gson;

/**
 * Servlet implementation class UserServlet 控制用户的页面响应
 */
@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserService();
	private ShoppingCarService shoppingCarService=new ShoppingCarService();
	private ProductService productServic=new ProductService();
	private OrderService orderService=new OrderService();

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
		else if(oper.equals("shoppingcar")) {
			//这边shoppingcar 加入购物车和      立即购买购买时不一样的  立即购买转到订单确认页面
			
			//这边购买也直接加入购物车,先加该物品到购物车，再返回所有的购物车物品
			int pid=Integer.parseInt(request.getParameter("pid"));
			
			System.out.println(pid);
			
			User login_user=(User) request.getSession().getAttribute("login_user");
			ShoppingCar shoppingCar=new ShoppingCar();
			shoppingCar.setPid(pid);
			shoppingCar.setUid(login_user.getUid());
			
			shoppingCarService.addRecord(shoppingCar);//加入购物车
			
			//获取该用户的所有购物车
			List<ShoppingCar> shoppingCars=shoppingCarService.findRecords(login_user.getUid());
			
			
			//获取所有购物车中对应的商品
			List<Product> products=new ArrayList<>();
			for(ShoppingCar shoppingCar2:shoppingCars)
			{
				if(shoppingCar2.getPid()!=-1) {
					products.add(productServic.findProduct(shoppingCar2.getPid()));
				}
			}
			
			
			//这边采用请求转发返回给请求页面
			request.setAttribute("products", products);
			if(products!=null) {
				request.getRequestDispatcher("checkout.jsp").forward(request, response);
			}
			
			
		}
		else if(oper.equals("fillorder")) {
			//将购物车中的单件商品提交订单,这边是在购物车中购买    原来的order似乎传递出错
			int pid=Integer.parseInt(request.getParameter("pid"));
			String receiver=request.getParameter("receiver");
			String address=request.getParameter("address");
			String phone=request.getParameter("phone");
			
			
			//订单的电话 地址 收货人 均要用户输入
			//insert into order(ordertime,price,state,address,phone,receiver,uid) values(?,?,?,?,?,?,?)
			
			Product product=productServic.findProduct(pid);
			Order order=new Order();
			order.setReceiver(receiver);
			order.setAddress(address);
			order.setPhone(phone);
			
			order.setPrice(product.getPriceInMall());
			order.setState("1");
			order.setUid(((User)request.getSession().getAttribute("login_user")).getUid());
			order.setOrderTime(new Date(new java.util.Date().getTime()));
			
			//System.out.println(address); //成功读取到从模态窗口传来的信息
			orderService.addOrder(order);
			
			//订单加入成功，这边还要删除购物车中的该条记录，以及，订单项的更新，后续界面显示的问题。。。。。。。。。。。。。。。。
			
			
			request.getRequestDispatcher("checkout.jsp").forward(request, response);
			//返回显示的问题，加入购物车还没成功
			
			//这边不是使用ajax，所以  返回给请求页面要 请求转发  forward 
			
		}
		else if(oper.equals("buy")) {
			 //立即购买购买时不一样的  立即购买转到订单确认页面
		}
	}

}
