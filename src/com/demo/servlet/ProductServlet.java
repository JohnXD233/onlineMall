package com.demo.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.bean.Product;
import com.demo.service.ProductService;
import com.google.gson.Gson;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/productServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductService productService=new ProductService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//��ȡ�ͻ��˷��������� ����
		String oper=request.getParameter("oper");
		
		Gson gson=new Gson();
		
		Map<String,Object> dataBackForAjax=new HashMap<>();//���ظ����������Ϣ
		
		if(oper!=null)
		{
			if(oper.equals("getProducts")) {
				//��ȡ��Ʒ��Ϣ
				
				String classTwoName=request.getParameter("classTwoName");
				List<Product> list=productService.getProducts(classTwoName);
				dataBackForAjax.put("products", list);
				dataBackForAjax.put("status", "1");
				String json=gson.toJson(dataBackForAjax);
				
				response.getWriter().print(json);//���ظ��ͻ��ˣ���������� data
				
			}
		}
	}

}
