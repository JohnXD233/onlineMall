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
			//����Ա��¼
			String uname=request.getParameter("username");
			String upass=request.getParameter("password");
			
			User user=new User();
			user.setUname(uname);
			user.setUpass(upass);
			
			User user2=userService.findUser(user);
			if(user2!=null) {
				request.getSession().setAttribute("login_user", user2);
				request.setAttribute("result", "��¼�ɹ�");
				request.getRequestDispatcher("m_index.jsp").forward(request, response);
			}
			else {
				request.setAttribute("result", "��¼ʧ��");
				request.getRequestDispatcher("m_login.jsp").forward(request, response);
			}
			
		}
		else if(oper.equals("addProduct")) {
			//�ļ��ϴ�����ȡͼƬ·�����
			//*****************************************************//
			
			//��ȡ�ļ��ϴ���ͼƬ
            //�ȴ���һ��Servlet����������
            RequestContext req=new ServletRequestContext(request);//ͨ�������ȡ��������

            //�ж��Ƿ�����������ļ�
            if(FileUpload.isMultipartContent(req))
            {
                //�������⴦��
                //���ļ���д���ýӿ�
                DiskFileItemFactory fac=new DiskFileItemFactory();
                //��װ�ӿڶ�д��servlet������
                ServletFileUpload upload=new ServletFileUpload(fac);
                //�����ļ���С1M
                upload.setFileSizeMax(1024*1024*1024);
                //���ñ����ʽ
                upload.setHeaderEncoding("utf-8");


                //��ȡ�ͻ��˷��͹��������ݼ���
                List ls;
                try {
                    //��ȡ     ***�ͻ��˱�����������***
                    ls = upload.parseRequest(req);

                    //��ȡ�������ÿ������
                    Iterator it=ls.iterator();

                    //������Ӧ�Ĵ洢��������ȥ
                    String pname="";
                    String priceinmarket="";
                    String priceinmall="";
                    int clickcount=0;
                    int classtwoid=0;
                    String description="";
                    String productpath="";

                    //�������б�����
                    while(it.hasNext())//����ö�ٽ��б���
                    {
                        FileItem item=(FileItem) it.next();//ȡ�������ÿһ������

                        //�жϵ�ǰ������������ԣ�һ�������֣���ͨ�ı��򣬶������ļ�
                        if(item.isFormField())//�������ͨ�����
                        {
                            //ǿ�Ʊ����ʽת��
                            String value=new String(item.getString().getBytes("iso-8859-1"),"utf-8");
                            System.out.println(item.getFieldName()+";"+value);//����ؼ��ֶε�key��value


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
                        else//�������ļ�������file�ϴ����ļ�
                        {
                            System.out.println("�����������ļ�");
                            //���ݿͻ���ѡ����ļ��������ļ�
                            File mem=new File(item.getName());//��ȡ�Ѿ��������ڴ����ͼƬ����

                            //�Զ�����
                            String d=new Date().toLocaleString();
                            d=d.replace(" ", "_").replace(":", "_")+" ";

                            //���ñ���·�������������˱�����ļ����ƣ�ƴ���ϵ�ǰʱ�䣬Ψһ
                            productpath="/upload/"+d+mem.getName();

                            File fs=new File(request.getRealPath("/upload/")+"/"+d+mem.getName());

                            //д��Ӳ��
                            item.write(fs);

                        }
                    }

                    //����鱾��������ѭ���⣬booknameҲ����ѭ����������
                    Product product=new Product();
                    product.setClassTwoId(classtwoid);
                    product.setClickCount(clickcount);
                    product.setDescribes(description);
                    product.setPicture(productpath);
                    product.setPname(pname);
                    product.setPriceInMall(priceinmall);
                    product.setPriceInMarket(priceinmarket);
                    

                    if(productService.addProduct(product)){
                        request.setAttribute("result", "��ӳɹ�");
                    }
                    else{
                        request.setAttribute("result", "���ʧ��");
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
                //��ͨ�����ϴ��ı���û�а����������ļ�
            }
			
          //*****************************************************//
		}
		else if(oper.equals("delProduct")) {
			int pid=Integer.parseInt(request.getParameter("pid"));
			if(productService.delProduct(pid)) {
				request.setAttribute("result", "ɾ����Ʒ�ɹ�");
			}
			else {
				request.setAttribute("result", "ɾ����Ʒʧ��");
			}
			request.getRequestDispatcher("m_index.jsp").forward(request, response);
		}
		else if(oper.equals("altProduct")) {
			//�޸���Ʒ��Ϣ�����Ҳ���ļ��ϴ�
		}
		else if(oper.equals("addUser")) {
			String uname=request.getParameter("uname");
			String realname=request.getParameter("realname");
			String upass=request.getParameter("upass");
			String email=request.getParameter("email");
			String address=request.getParameter("address");
			String phone=request.getParameter("phone");
			int state=1;//����״̬Ĭ�ϲ�����
			String activecode="12345";//Ĭ�ϼ�����
			
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
				request.setAttribute("result", "����û��ɹ�");
				request.getRequestDispatcher("m_index.jsp").forward(request, response);
			}
			else {
				request.setAttribute("result", "����û���ʧ��");
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
				request.setAttribute("result", "�޸��û��ɹ�");
				request.getRequestDispatcher("m_index.jsp").forward(request, response);
			}
			else {
				request.setAttribute("result", "�޸��û�ʧ��");
				request.getRequestDispatcher("m_index.jsp").forward(request, response);
			}
		}
		else if(oper.equals("delUser")) {
			int uid=Integer.parseInt(request.getParameter("uid"));
			if(userService.delUser(uid)) {
				request.setAttribute("result", "ɾ���û��ɹ�");
				request.getRequestDispatcher("m_index.jsp").forward(request, response);
			}
			else {
				request.setAttribute("result", "ɾ���û�ʧ��");
				request.getRequestDispatcher("m_index.jsp").forward(request, response);
			}
		}
		
	}

}
