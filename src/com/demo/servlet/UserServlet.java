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
 * �����û���ҳ����Ӧ
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
		
		//��Ӧʱ���������ͷ�ʽ�Լ����뷽ʽ   ����ת��
		response.setContentType("text/html;charset=UTF-8");
		
		//��ȡ����������
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		String checkbox=request.getParameter("checkbox");
		System.out.println(checkbox);
		
		User user=userService.findUser(new User(username,password));
		if(user != null) {
			//��¼�ɹ�
			System.out.println("��¼�ɹ�");
			
			//��½�û� �Ž�session�Ự
			request.getSession().setAttribute("login_user", user);
			
			
			if(checkbox!=null&&checkbox.equals("on")) {
				//��Ҫ��ס�˺ţ�����cookie,���û����ǰ�˲���jQuery�ķ�ʽ
				Cookie uCookie=new Cookie("username", username);
				uCookie.setMaxAge(60*60*24); //����cookie��Ч��24Сʱ
				response.addCookie(uCookie);
				
				Cookie pCookie=new Cookie("password", password);
				pCookie.setMaxAge(60*60*24); 
				response.addCookie(pCookie);
			}
			
			//����ת��
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else {
			//��¼ʧ��
			System.out.println("��¼ʧ��");
			//�ض���
			response.sendRedirect("index.jsp");
		}
	}

}
