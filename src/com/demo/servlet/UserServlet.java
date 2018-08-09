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
 * Servlet implementation class UserServlet �����û���ҳ����Ӧ
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
				System.out.println("��¼�ɹ�");

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
			//�û�ע��
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
			//�û�����Ҫ��ʾ��Ʒ��ϸ��Ϣ,  ע����߲���ֱ����jspֱ����ת�����뾭��servlet+service
			int pid=Integer.parseInt(request.getParameter("pid"));
			Product product=new ProductService().findProduct(pid);
			request.setAttribute("product", product);
			if(product!=null) {
				request.getRequestDispatcher("details.jsp").forward(request, response);
			}
		}
		else if(oper.equals("buy")) {
			//��߹���Ҳֱ�Ӽ��빺�ﳵ
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
