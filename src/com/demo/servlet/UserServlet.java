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
import com.demo.service.RegisterValidateService;
import com.demo.service.ShoppingCarService;
import com.demo.service.UserService;
import com.google.gson.Gson;

/**
 * Servlet implementation class UserServlet �����û���ҳ����Ӧ
 */
@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserService();
	private ShoppingCarService shoppingCarService=new ShoppingCarService();
	private ProductService productServic=new ProductService();
	private OrderService orderService=new OrderService();
	private RegisterValidateService registerValidateService=new RegisterValidateService();

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

		// ��Ӧʱ���������ͷ�ʽ�Լ����뷽ʽ ����ת��
		response.setContentType("text/html;charset=UTF-8");

		// ��ҳ�������� ����ת��
		request.setCharacterEncoding("UTF-8");

		Gson gson = new Gson();

		// ��ȡ����������
		
		// System.out.println(checkbox);
		// ��ȡ����������
		String oper = request.getParameter("oper");
		// System.out.println(oper);

		
		if (oper.equals("login")) {//�û���¼
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String checkbox = request.getParameter("checkbox");
			User user = userService.findUser(new User(username, password));
			
			if (user != null) {
				// ��¼�ɹ�
				System.out.println("��¼�ɹ�");//���ֻ���û���¼�ģ�����Ҫ�ж��Ƿ񼤻�
				
				if(user.getState()==0)//��ʾ����
				{
				// ��½�û� �Ž�session�Ự
				request.getSession().setAttribute("login_user", user);

				Map<String, Object> dataBackForAjax = new HashMap<>();

				// String uString=gson.toJson(user); ע������߲�Ҫ��userתΪjson��תһ�μ���

				dataBackForAjax.put("user", user);
				dataBackForAjax.put("status", "1");

				String json = gson.toJson(dataBackForAjax);
				// System.out.println(json);ʹ��gson��json

				// request.setAttribute("json", json); // ����ת��

				// ��ע��ʹ��ajax �ص�������ҳ��Ӧ��������ģ��������ҳ����ת ����ת������ת��request
				response.getWriter().print(json);// ȫ������json������

				if (checkbox != null && checkbox == "true") {
					// ��Ҫ��ס�˺ţ�����cookie,���û����ǰ�˲���jQuery�ķ�ʽ
					Cookie uCookie = new Cookie("username", username);
					uCookie.setMaxAge(60 * 60 * 24); // ����cookie��Ч��24Сʱ
					response.addCookie(uCookie);

					Cookie pCookie = new Cookie("password", password);
					pCookie.setMaxAge(60 * 60 * 24);
					response.addCookie(pCookie);
				}
				}
				else if(user.getState()==1)//δ����
				{
					response.getWriter().print("{\"status\":\"2\"}");
					//�����ʼ����û�����,Ӧ�������û�ע���ʱ��
				}

				// ����ת��,ʹ��ajax����������ת��
				// request.getRequestDispatcher("index.jsp").forward(request, response);
			} else {
				// request.setAttribute("status", "0");
				response.getWriter().print("{\"status\":\"0\"}");
				// ��¼ʧ��
				System.out.println("��¼ʧ��");
				// �ض���
				// response.sendRedirect("index.jsp");
			}
		} else if (oper.equals("logout")) {
			//�û�ע��
			response.getWriter().print("{\"status\":\"1\"}"); // ��ʾsession�Լ����٣�  �ر�ע�⣬json��������"" ��������java�У��������Ų��У������ܽ�
			// �˳���¼������session
			request.getSession().invalidate();

		}
		else if(oper.equals("register")) {
			
			//�û�ע��   �����ʼ�ʱҪ��userdao �еĺ�����public User find(String email) �Լ�������ɵ� �޸ļ���״̬
			
			String username2=request.getParameter("userName");
			String realname=request.getParameter("realName");
			String email=request.getParameter("email");
			String address=request.getParameter("address");
			String phone=request.getParameter("phone");
			String password2=request.getParameter("password");
			//status Ĭ�� 0 δ����
			
			User user2=new User();
			user2.setUname(username2);
			user2.setUpass(password2);
			user2.setRealname(realname);
			user2.setEmail(email); //����һ�����ܴ�
			user2.setAddress(address);
			user2.setPhone(phone);
			user2.setState(1);//δ����
			user2.setActivecode("123");//Ĭ�ϼ�����
			if(userService.addUser(user2)) {
				
				//���ͼ����ʼ�
				registerValidateService.sendEmailForActive(user2);
				
				response.getWriter().print("{\"status\":\"1\",\"uname\":\""+username2+"\",\"upass\":'"+password2+"\"}");
			}
			else {
				response.getWriter().print("{\"status\":\"0\"");
			}
		}
		else if(oper.equals("details")) {
			//�û�����Ҫ��ʾ��Ʒ��ϸ��Ϣ,  ע����߲���ֱ����jspֱ����ת�����뾭��servlet+service
			int pid=Integer.parseInt(request.getParameter("pid"));
			Product product=new ProductService().findProduct(pid);
			request.setAttribute("product", product);
			if(product!=null) {
				request.getRequestDispatcher("details.jsp").forward(request, response);
			}
		}
		else if(oper.equals("shoppingcar")) {
			//���shoppingcar ���빺�ﳵ��      ����������ʱ��һ����  ��������ת������ȷ��ҳ��
			
			//��߹���Ҳֱ�Ӽ��빺�ﳵ,�ȼӸ���Ʒ�����ﳵ���ٷ������еĹ��ﳵ��Ʒ
			int pid=Integer.parseInt(request.getParameter("pid"));
			
			System.out.println(pid);
			
			User login_user=(User) request.getSession().getAttribute("login_user");
			ShoppingCar shoppingCar=new ShoppingCar();
			shoppingCar.setPid(pid);
			shoppingCar.setUid(login_user.getUid());
			
			shoppingCarService.addRecord(shoppingCar);//���빺�ﳵ
			
			//��ȡ���û������й��ﳵ
			List<ShoppingCar> shoppingCars=shoppingCarService.findRecords(login_user.getUid());
			
			
			//��ȡ���й��ﳵ�ж�Ӧ����Ʒ
			List<Product> products=new ArrayList<>();
			for(ShoppingCar shoppingCar2:shoppingCars)
			{
				if(shoppingCar2.getPid()!=-1) {
					products.add(productServic.findProduct(shoppingCar2.getPid()));
				}
			}
			
			
			//��߲�������ת�����ظ�����ҳ��
			request.setAttribute("products", products);
			if(products!=null) {
				request.getRequestDispatcher("checkout.jsp").forward(request, response);
			}
			
			
		}
		else if(oper.equals("fillorder")) {
			//�����ﳵ�еĵ�����Ʒ�ύ����,������ڹ��ﳵ�й���    ԭ����order�ƺ����ݳ���
			int pid=Integer.parseInt(request.getParameter("pid"));
			String receiver=request.getParameter("receiver");
			String address=request.getParameter("address");
			String phone=request.getParameter("phone");
			
			
			//�����ĵ绰 ��ַ �ջ��� ��Ҫ�û�����
			//insert into order(ordertime,price,state,address,phone,receiver,uid) values(?,?,?,?,?,?,?)
			
			Product product=productServic.findProduct(pid);
			Order order=new Order();
			order.setReceiver(receiver);
			order.setAddress(address);
			order.setPhone(phone);
			
			order.setPrice(product.getPriceInMall());
			order.setState("1");
			int uid=((User)request.getSession().getAttribute("login_user")).getUid();
			order.setUid(uid);
			order.setOrderTime(new Date(new java.util.Date().getTime()));
			
			//System.out.println(address); //�ɹ���ȡ����ģ̬���ڴ�������Ϣ
			orderService.addOrder(order);
			
			//��������ɹ�����߻�Ҫɾ�����ﳵ�еĸ�����¼���Լ���������ĸ��£�����������ʾ�����ⷵ���µ�products��checkout.jsp��������������������������������
			//ɾ���Լ��ύ�����Ĺ��ﳵ��Ϣ
			ShoppingCar oldCar=shoppingCarService.findRecord(pid, uid);
			shoppingCarService.delRecord(oldCar.getCarid());
			
			//��Ӷ�����������
			
			//���ԣ��µ���Ϣ
			List<ShoppingCar> shoppingCars=shoppingCarService.findRecords(uid);
			//��ȡ���й��ﳵ�ж�Ӧ����Ʒ
			List<Product> products=new ArrayList<>();
			for(ShoppingCar shoppingCar2:shoppingCars)
			{
				if(shoppingCar2.getPid()!=-1) {
					products.add(productServic.findProduct(shoppingCar2.getPid()));
				}
			}
			//��߲�������ת�����ظ�����ҳ��
			request.setAttribute("products", products);
			
			request.getRequestDispatcher("checkout.jsp").forward(request, response);
			//������ʾ�����⣬���빺�ﳵ��û�ɹ�
			
			//��߲���ʹ��ajax������  ���ظ�����ҳ��Ҫ ����ת��  forward 
			
		}
		else if(oper.equals("activate")) {
			//�û�����
			String email = request.getParameter("email");//��ȡemail
            String activeCode = request.getParameter("validateCode");//������
            boolean result=registerValidateService.checkUserForActive(email, activeCode);
            if(result)
            {
            	//request.setAttribute("activeOrNot", "true");//����ɹ�
            	//request.getRequestDispatcher("http://localhost:8080/onlineMall/index.jsp").forward(request, response);
            	response.sendRedirect("http://localhost:8080/onlineMall/index.jsp");
            }
            else {
            	//request.setAttribute("activeOrNot", "false");//����ʧ�ܣ�������Ľ���
            	//request.getRequestDispatcher("https://www.baidu.com/").forward(request, response);
            	response.sendRedirect("https://www.baidu.com/");
            }

		}
		else if(oper.equals("buy")) {
			 //����������ʱ��һ����  ��������ת������ȷ��ҳ�棬�����빺�ﳵ��ֱ�ӹ���
		}
		
	}

}
