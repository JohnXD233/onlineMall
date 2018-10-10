package com.demo.servlet;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.print.DocFlavor.STRING;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.RequestContext;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;

import com.demo.bean.Product;
import com.demo.bean.User;
import com.demo.dao.UserDao;
import com.demo.service.ProductService;
import com.demo.service.UserService;

/**
 * Servlet implementation class ManagerServlet
 */
@WebServlet("/managerServlet")
public class ManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String oper=request.getParameter("oper");
		
		UserService userService=new UserService();
		ProductService productService=new ProductService();
		
		if(oper.equals("login")) {
			//管理员登录
			String uname=request.getParameter("username");
			String upass=request.getParameter("password");
			
			User user=new User();
			user.setUname(uname);
			user.setUpass(upass);
			
			User user2=userService.findUser(user);
			if(user2!=null) {
				request.getSession().setAttribute("login_user", user2);
				request.setAttribute("result", "登录成功");
				request.getRequestDispatcher("m_index.jsp").forward(request, response);
			}
			else {
				request.setAttribute("result", "登录失败");
				request.getRequestDispatcher("m_login.jsp").forward(request, response);
			}
			
		}
		else if(oper.equals("addProduct")) {
			//文件上传，获取图片路径入库
			//*****************************************************//
			
			//获取文件上传的图片
            //先创建一个Servlet的请求容器
            RequestContext req=new ServletRequestContext(request);//通过请求获取请求容器

            //判断是否包含二进制文件
            if(FileUpload.isMultipartContent(req))
            {
                //进行特殊处理
                //对文件读写调用接口
                DiskFileItemFactory fac=new DiskFileItemFactory();
                //包装接口读写到servlet容器里
                ServletFileUpload upload=new ServletFileUpload(fac);
                //限制文件大小1M
                upload.setFileSizeMax(1024*1024*1024);
                //设置编码格式
                upload.setHeaderEncoding("utf-8");


                //获取客户端发送过来的数据集合
                List ls;
                try {
                    //获取     ***客户端表单所有请求项***
                    ls = upload.parseRequest(req);

                    //获取集合里的每个子项
                    Iterator it=ls.iterator();

                    //接收相应的存储到数据里去
                    String pname="";
                    String priceinmarket="";
                    String priceinmall="";
                    int clickcount=0;
                    int classtwoid=0;
                    String description="";
                    String productpath="";

                    //遍历所有表单子项
                    while(it.hasNext())//利用枚举进行遍历
                    {
                        FileItem item=(FileItem) it.next();//取出表单里的每一个子项

                        //判断当前子项的内容属性，一般有两种：普通文本框，二进制文件
                        if(item.isFormField())//如果是普通输入框
                        {
                            //强制编码格式转换
                            String value=new String(item.getString().getBytes("iso-8859-1"),"utf-8");
                            System.out.println(item.getFieldName()+";"+value);//输出关键字段的key与value


                            if(item.getFieldName().equalsIgnoreCase("textarea2"))
                            {
                            	description=value;
                            }

                            if(item.getFieldName().equalsIgnoreCase("classtwoid"))
                            {
                            	classtwoid=Integer.parseInt(value);
                            }

                            if(item.getFieldName().equalsIgnoreCase("clickcount"))
                            {
                            	clickcount=Integer.parseInt(value);
                            }

                            if(item.getFieldName().equalsIgnoreCase("priceinmall"))
                            {
                            	priceinmall= value;
                            }
                            if(item.getFieldName().equalsIgnoreCase("priceinmarket")) {
                            	priceinmarket=value;
                            }
                            if(item.getFieldName().equalsIgnoreCase("pname")) {
                            	pname=value;
                            }

                        }
                        else//二进制文件，表单中file上传的文件
                        {
                            System.out.println("包含二进制文件");
                            //根据客户端选择的文件名创建文件
                            File mem=new File(item.getName());//获取已经缓存在内存里的图片数据

                            //自动命名
                            String d=new Date().toLocaleString();
                            d=d.replace(" ", "_").replace(":", "_")+" ";

                            //设置保存路径，并且设置了保存的文件名称，拼接上当前时间，唯一
                            productpath="/upload/"+d+mem.getName();

                            File fs=new File(request.getRealPath("/upload/")+"/"+d+mem.getName());

                            //写入硬盘
                            item.write(fs);

                        }
                    }

                    //添加书本操作，在循环外，bookname也是在循环外声明的
                    Product product=new Product();
                    product.setClassTwoId(classtwoid);
                    product.setClickCount(clickcount);
                    product.setDescribes(description);
                    product.setPicture(productpath);
                    product.setPname(pname);
                    product.setPriceInMall(priceinmall);
                    product.setPriceInMarket(priceinmarket);
                    

                    if(productService.addProduct(product)){
                        request.setAttribute("result", "添加成功");
                    }
                    else{
                        request.setAttribute("result", "添加失败");
                    }
                    request.getRequestDispatcher("manager.jsp").forward(request, response);

                } catch (FileUploadException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (Exception e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
            else
            {
                //普通处理，上传的表单中没有包含二进制文件
            }
			
          //*****************************************************//
		}
		else if(oper.equals("delProduct")) {
			int pid=Integer.parseInt(request.getParameter("pid"));
			if(productService.delProduct(pid)) {
				request.setAttribute("result", "删除商品成功");
			}
			else {
				request.setAttribute("result", "删除商品失败");
			}
			request.getRequestDispatcher("m_index.jsp").forward(request, response);
		}
		else if(oper.equals("altProduct")) {
			//修改商品信息，这边也有文件上传
		}
		else if(oper.equals("addUser")) {
			String uname=request.getParameter("uname");
			String realname=request.getParameter("realname");
			String upass=request.getParameter("upass");
			String email=request.getParameter("email");
			String address=request.getParameter("address");
			String phone=request.getParameter("phone");
			int state=1;//激活状态默认不激活
			String activecode="12345";//默认激活码
			
			User user=new User();
			user.setActivecode(activecode);
			user.setAddress(address);
			user.setEmail(email);
			user.setPhone(phone);
			user.setRealname(realname);
			user.setState(state);
			user.setUname(uname);
			user.setUpass(upass);
			if(userService.addUser(user)) {
				request.setAttribute("result", "添加用户成功");
				request.getRequestDispatcher("m_index.jsp").forward(request, response);
			}
			else {
				request.setAttribute("result", "添加用户成失败");
				request.getRequestDispatcher("m_index.jsp").forward(request, response);
			}
		}
		else if(oper.equals("altUser")) {
			String uname=request.getParameter("uname");
			String realname=request.getParameter("realname");
			String upass=request.getParameter("upass");
			String email=request.getParameter("email");
			String address=request.getParameter("address");
			String phone=request.getParameter("phone");
			User user=new User();
			user.setAddress(address);
			user.setEmail(email);
			user.setPhone(phone);
			user.setRealname(realname);
			user.setUname(uname);
			user.setUpass(upass);
			if(userService.altUser(user)) {
				request.setAttribute("result", "修改用户成功");
				request.getRequestDispatcher("m_index.jsp").forward(request, response);
			}
			else {
				request.setAttribute("result", "修改用户失败");
				request.getRequestDispatcher("m_index.jsp").forward(request, response);
			}
		}
		else if(oper.equals("delUser")) {
			int uid=Integer.parseInt(request.getParameter("uid"));
			if(userService.delUser(uid)) {
				request.setAttribute("result", "删除用户成功");
				request.getRequestDispatcher("m_index.jsp").forward(request, response);
			}
			else {
				request.setAttribute("result", "删除用户失败");
				request.getRequestDispatcher("m_index.jsp").forward(request, response);
			}
		}
		
	}

}
