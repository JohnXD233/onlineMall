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
		//获取客户端发来的请求 内容
		String oper=request.getParameter("oper");
		
		Gson gson=new Gson();
		
		Map<String,Object> dataBackForAjax=new HashMap<>();//返回给浏览器的信息
		
		if(oper!=null)
		{
			if(oper.equals("getProducts")) {
				//获取商品信息
				
				String classTwoName=request.getParameter("classTwoName");
				List<Product> list=productService.getProducts(classTwoName);
				dataBackForAjax.put("products", list);
				dataBackForAjax.put("status", "1");
				String json=gson.toJson(dataBackForAjax);
				
				response.getWriter().print(json);//返回给客户端（浏览器）的 data
				
			}
		}
	}

}
