<%@page import="com.demo.bean.User"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    /* 实现了登录对接数据库+设置session+是否要设置cookie*/
    /* 获取cookie的内容 */
    Cookie[] cookies= request.getCookies();
    Cookie cookie=null;
    
    String usernameString="";//获取cookie中的数据
    String passwordString="";
    
    if( cookies != null ){
        //out.println("<h2>Cookie 名称和值</h2>");
        for (int i = 0; i < cookies.length; i++){
           cookie = cookies[i];
           if((cookie.getName( )).equals("username")){
                //cookie.setMaxAge(0);
                //response.addCookie(cookie);
                //out.print("已删除的 cookie：" + 
                            // cookie.getName( ));
                usernameString=cookie.getValue();
                
           }
           else if((cookie.getName( )).equals("password")){
        	   passwordString=cookie.getValue();
           }
          
        }
        //System.out.print("get Cookie");
     }
    %>
     
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gretong Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- <link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'> -->

<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/menu_jquery.js"></script>
<script src="js/simpleCart.min.js"></script>

<link href="assets/toastr-master/toastr.css" rel="stylesheet" type="text/css" media="all" />
<script src="assets/toastr-master/toastr.js"> </script>

</head>
<body>
<!-- header_top -->
<div class="top_bg">
	<div class="container">
		<div class="header_top">
			<div class="top_right">
				<ul>
					<li><a href="#">help</a></li>|
					<li><a href="contact.jsp">Contact</a></li>|
					<li><a href="#">Delivery information</a></li>
				</ul>
			</div>
			<div class="top_left">
				<h2><span></span> Call us : 032 2352 782</h2>
			</div>
				<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- header -->
<div class="header_bg">
<div class="container">
	<div class="header">
	<div class="head-t">
		<div class="logo">
			<a href="index.jsp"><img src="images/logo.png" class="img-responsive" alt=""/> </a>
		</div>
		<!-- start header_right -->
		<div class="header_right">
			<div class="rgt-bottom">
				<div class="log">
					<div class="login" >
						<div id="loginContainer"><a href="#" id="loginButton"><span>Login</span></a>
						    
						    <!-- 这边是   登录  的小div  ，这边可以用ajax异步加载，从而不用重新加载页面-->
						    <div id="loginBox">                
						        <form id="loginForm" method="post">
						                <fieldset id="body">
						                	<fieldset>
						                          <label for="username">Username</label>
						                          <input type="text" name="username" id="username" value="<%=usernameString%>">
						                    </fieldset>
						                    <fieldset>
						                            <label for="password">Password</label>
						                            <input type="password" name="password" id="password" value="<%=passwordString%>">
						                     </fieldset>
						                    <input type="button" id="login" value="Sign in" >
						                	<label for="checkbox"><input type="checkbox" name="checkbox" id="checkbox"> <i>Remember me</i></label>
						            	</fieldset>
						            <span id="forgetPass"><a href="#">Forgot your password?</a></span><br>
						            <span id="managerlogin"><a href="m_login.jsp">Manager Login in.</a></span>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="reg">
					<a href="register.html">REGISTER</a>
				</div>
			<div class="cart box_1">
				<a href="checkout.jsp">
					<h3> <span class="simpleCart_total">$0.00</span> (<span id="simpleCart_quantity" class="simpleCart_quantity">0</span> items)<img src="images/bag.png" alt=""></h3>
				</a>	
				<p><a href="javascript:;" class="simpleCart_empty">(empty card)</a></p>
				<div class="clearfix"> </div>
			</div>
			<div class="create_btn">
				<a href="checkout.jsp">CHECKOUT</a>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="search">
		    <form>
		    	<input type="text" value="" placeholder="search...">
				<input type="submit" value="">
			</form>
		</div>
		<div class="clearfix"> </div>
		</div>
		<div class="clearfix"> </div>
	</div>
    	<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
		<!-- start header menu -->
		<ul class="megamenu skyblue">
			<li class="active grid"><a class="color1" href="index.jsp">Home</a></li>
			<li class="grid"><a class="color2" href="#">new arrivals</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>Clothing</h4>
								<ul>
									<li><a href="women.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="women.jsp">women</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>kids</h4>
								<ul>
									<li><a href="women.jsp">Pools&Tees</a></li>
									<li><a href="women.jsp">shirts</a></li>
									<li><a href="women.jsp">shorts</a></li>
									<li><a href="women.jsp">twinsets</a></li>
									<li><a href="women.jsp">kurts</a></li>
									<li><a href="women.jsp">jackets</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Bags</h4>
								<ul>
									<li><a href="women.jsp">Handbag</a></li>
									<li><a href="women.jsp">Slingbags</a></li>
									<li><a href="women.jsp">Clutches</a></li>
									<li><a href="women.jsp">Totes</a></li>
									<li><a href="women.jsp">Wallets</a></li>
									<li><a href="women.jsp">Laptopbags</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="#">login</a></li>
									<li><a href="register.html">create an account</a></li>
									<li><a href="women.jsp">create wishlist</a></li>
									<li><a href="women.jsp">my shopping bag</a></li>
									<li><a href="women.jsp">brands</a></li>
									<li><a href="women.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="women.jsp">Belts</a></li>
									<li><a href="women.jsp">Pens</a></li>
									<li><a href="women.jsp">Eyeglasses</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">Watches</a></li>
									<li><a href="women.jsp">Jewellery</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Footwear</h4>
								<ul>
									<li><a href="women.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="women.jsp">women</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
			<li><a class="color4" href="#">TUXEDO</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>Clothing</h4>
								<ul>
									<li><a href="women.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="women.jsp">women</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>kids</h4>
								<ul>
									<li><a href="women.jsp">Pools&Tees</a></li>
									<li><a href="women.jsp">shirts</a></li>
									<li><a href="women.jsp">shorts</a></li>
									<li><a href="women.jsp">twinsets</a></li>
									<li><a href="women.jsp">kurts</a></li>
									<li><a href="women.jsp">jackets</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Bags</h4>
								<ul>
									<li><a href="women.jsp">Handbag</a></li>
									<li><a href="women.jsp">Slingbags</a></li>
									<li><a href="women.jsp">Clutches</a></li>
									<li><a href="women.jsp">Totes</a></li>
									<li><a href="women.jsp">Wallets</a></li>
									<li><a href="women.jsp">Laptopbags</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="#">login</a></li>
									<li><a href="register.html">create an account</a></li>
									<li><a href="women.jsp">create wishlist</a></li>
									<li><a href="women.jsp">my shopping bag</a></li>
									<li><a href="women.jsp">brands</a></li>
									<li><a href="women.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="women.jsp">Belts</a></li>
									<li><a href="women.jsp">Pens</a></li>
									<li><a href="women.jsp">Eyeglasses</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">Watches</a></li>
									<li><a href="women.jsp">Jewellery</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Footwear</h4>
								<ul>
									<li><a href="women.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="women.jsp">women</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>				
				<li><a class="color5" href="#">SWEATER</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>Clothing</h4>
								<ul>
									<li><a href="women.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="women.jsp">women</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>kids</h4>
								<ul>
									<li><a href="women.jsp">Pools&Tees</a></li>
									<li><a href="women.jsp">shirts</a></li>
									<li><a href="women.jsp">shorts</a></li>
									<li><a href="women.jsp">twinsets</a></li>
									<li><a href="women.jsp">kurts</a></li>
									<li><a href="women.jsp">jackets</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Bags</h4>
								<ul>
									<li><a href="women.jsp">Handbag</a></li>
									<li><a href="women.jsp">Slingbags</a></li>
									<li><a href="women.jsp">Clutches</a></li>
									<li><a href="women.jsp">Totes</a></li>
									<li><a href="women.jsp">Wallets</a></li>
									<li><a href="women.jsp">Laptopbags</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="#">login</a></li>
									<li><a href="register.html">create an account</a></li>
									<li><a href="women.jsp">create wishlist</a></li>
									<li><a href="women.jsp">my shopping bag</a></li>
									<li><a href="women.jsp">brands</a></li>
									<li><a href="women.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="women.jsp">Belts</a></li>
									<li><a href="women.jsp">Pens</a></li>
									<li><a href="women.jsp">Eyeglasses</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">Watches</a></li>
									<li><a href="women.jsp">Jewellery</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Footwear</h4>
								<ul>
									<li><a href="women.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="women.jsp">women</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
				<li><a class="color6" href="#">SHOES</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>Clothing</h4>
								<ul>
									<li><a href="women.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="women.jsp">women</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>kids</h4>
								<ul>
									<li><a href="women.jsp">Pools&Tees</a></li>
									<li><a href="women.jsp">shirts</a></li>
									<li><a href="women.jsp">shorts</a></li>
									<li><a href="women.jsp">twinsets</a></li>
									<li><a href="women.jsp">kurts</a></li>
									<li><a href="women.jsp">jackets</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Bags</h4>
								<ul>
									<li><a href="women.jsp">Handbag</a></li>
									<li><a href="women.jsp">Slingbags</a></li>
									<li><a href="women.jsp">Clutches</a></li>
									<li><a href="women.jsp">Totes</a></li>
									<li><a href="women.jsp">Wallets</a></li>
									<li><a href="women.jsp">Laptopbags</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="#">login</a></li>
									<li><a href="register.jsp">create an account</a></li>
									<li><a href="women.jsp">create wishlist</a></li>
									<li><a href="women.jsp">my shopping bag</a></li>
									<li><a href="women.jsp">brands</a></li>
									<li><a href="women.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="women.jsp">Belts</a></li>
									<li><a href="women.jsp">Pens</a></li>
									<li><a href="women.jsp">Eyeglasses</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">Watches</a></li>
									<li><a href="women.jsp">Jewellery</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Footwear</h4>
								<ul>
									<li><a href="women.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="women.jsp">women</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>				
			
				<li><a class="color7" href="#">GLASSES</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>Clothing</h4>
								<ul>
									<li><a href="women.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="women.jsp">women</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>kids</h4>
								<ul>
									<li><a href="women.jsp">Pools&Tees</a></li>
									<li><a href="women.jsp">shirts</a></li>
									<li><a href="women.jsp">shorts</a></li>
									<li><a href="women.jsp">twinsets</a></li>
									<li><a href="women.jsp">kurts</a></li>
									<li><a href="women.jsp">jackets</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Bags</h4>
								<ul>
									<li><a href="women.jsp">Handbag</a></li>
									<li><a href="women.jsp">Slingbags</a></li>
									<li><a href="women.jsp">Clutches</a></li>
									<li><a href="women.jsp">Totes</a></li>
									<li><a href="women.jsp">Wallets</a></li>
									<li><a href="women.jsp">Laptopbags</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="#">login</a></li>
									<li><a href="register.jsp">create an account</a></li>
									<li><a href="women.jsp">create wishlist</a></li>
									<li><a href="women.jsp">my shopping bag</a></li>
									<li><a href="women.jsp">brands</a></li>
									<li><a href="women.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="women.jsp">Belts</a></li>
									<li><a href="women.jsp">Pens</a></li>
									<li><a href="women.jsp">Eyeglasses</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">Watches</a></li>
									<li><a href="women.jsp">Jewellery</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Footwear</h4>
								<ul>
									<li><a href="women.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="women.jsp">women</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>				
			
				<li><a class="color8" href="#">T-SHIRT</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>Clothing</h4>
								<ul>
									<li><a href="women.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="women.jsp">women</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>kids</h4>
								<ul>
									<li><a href="women.jsp">trends</a></li>
									<li><a href="women.jsp">sale</a></li>
									<li><a href="women.jsp">style videos</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Bags</h4>
								<ul>
									<li><a href="women.jsp">trends</a></li>
									<li><a href="women.jsp">sale</a></li>
									<li><a href="women.jsp">style videos</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="#">login</a></li>
									<li><a href="register.jsp">create an account</a></li>
									<li><a href="women.jsp">create wishlist</a></li>
									<li><a href="women.jsp">my shopping bag</a></li>
									<li><a href="women.jsp">brands</a></li>
									<li><a href="women.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="women.jsp">trends</a></li>
									<li><a href="women.jsp">sale</a></li>
									<li><a href="women.jsp">style videos</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Footwear</h4>
								<ul>
									<li><a href="women.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="women.jsp">women</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
				<li><a class="color9" href="#">WATCHES</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>Clothing</h4>
								<ul>
									<li><a href="women.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="women.jsp">women</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>kids</h4>
								<ul>
									<li><a href="women.jsp">trends</a></li>
									<li><a href="women.jsp">sale</a></li>
									<li><a href="women.jsp">style videos</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Bags</h4>
								<ul>
									<li><a href="women.jsp">trends</a></li>
									<li><a href="women.jsp">sale</a></li>
									<li><a href="women.jsp">style videos</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="#">login</a></li>
									<li><a href="register.jsp">create an account</a></li>
									<li><a href="women.jsp">create wishlist</a></li>
									<li><a href="women.jsp">my shopping bag</a></li>
									<li><a href="women.jsp">brands</a></li>
									<li><a href="women.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="women.jsp">trends</a></li>
									<li><a href="women.jsp">sale</a></li>
									<li><a href="women.jsp">style videos</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Footwear</h4>
								<ul>
									<li><a href="women.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="women.jsp">women</a></li>
									<li><a href="women.jsp">accessories</a></li>
									<li><a href="women.jsp">kids</a></li>
									<li><a href="women.jsp">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
		 </ul> 
	</div>
</div>
</div>
<div class="arriv">
	<div class="container">
		<div class="arriv-top">
			<div class="col-md-6 arriv-left">
				<img src="images/1.jpg" class="img-responsive" alt="">
				<div class="arriv-info">
					<h3>NEW ARRIVALS</h3>
					<p>REVIVE YOUR WARDROBE WITH CHIC KNITS</p>
					<div class="crt-btn">
						<a href="details.jsp">TAKE A LOOK</a>
					</div>
				</div>
			</div>
			<div class="col-md-6 arriv-right">
				<img src="images/2.jpg" class="img-responsive" alt="">
				<div class="arriv-info">
					<h3>TUXEDO</h3>
					<p>REVIVE YOUR WARDROBE WITH CHIC KNITS</p>
					<div class="crt-btn">
						<a href="men-tuxedo.jsp">SHOP NOW</a>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="arriv-bottm">
			<div class="col-md-8 arriv-left1">
				<img src="images/3.jpg" class="img-responsive" alt="">
				<div class="arriv-info1">
					<h3>SWEATER</h3>
					<p>REVIVE YOUR WARDROBE WITH CHIC KNITS</p>
					<div class="crt-btn">
						<a href="details.jsp">SHOP NOW</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 arriv-right1">
				<img src="images/4.jpg" class="img-responsive" alt="">
				<div class="arriv-info2">
					<a href="details.jsp"><h3>Trekking Shoes<i class="ars"></i></h3></a>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="arriv-las">
			<div class="col-md-4 arriv-left2">
				<img src="images/5.jpg" class="img-responsive" alt="">
				<div class="arriv-info2">
					<a href="details.jsp"><h3>Casual Glasses<i class="ars"></i></h3></a>
				</div>
			</div>
			<div class="col-md-4 arriv-middle">
				<img src="images/6.jpg" class="img-responsive" alt="">
				<div class="arriv-info3">
					<h3>FRESH LOOK T-SHIRT</h3>
					<div class="crt-btn">
						<a href="details.jsp">SHOP NOW</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 arriv-right2">
				<img src="images/7.jpg" class="img-responsive" alt="">
				<div class="arriv-info2">
					<a href="details.jsp"><h3>Elegant Watches<i class="ars"></i></h3></a>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<div class="special">
	<div class="container">
		<h3>Special Offers</h3>
		<div class="specia-top">
			<ul class="grid_2">
		<li>
				<a href="details.jsp"><img src="images/8.jpg" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<h5>Lorem ipsum dolor</h5>
					<div class="item_add"><span class="item_price"><h6>ONLY $40.00</h6></span></div>
					<div class="item_add"><span class="item_price"><a href="#">add to cart</a></span></div>
				</div>
		</li>
		<li>
				<a href="details.jsp"><img src="images/9.jpg" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<h5>Consectetur adipis</h5>
					<div class="item_add"><span class="item_price"><h6>ONLY $60.00</h6></span></div>
					<div class="item_add"><span class="item_price"><a href="#">add to cart</a></span></div>
			</div>
		</li>
		<li>
				<a href="details.jsp"><img src="images/10.jpg" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<h5>Commodo consequat</h5>
					<div class="item_add"><span class="item_price"><h6>ONLY $14.00</h6></span></div>
					<div class="item_add"><span class="item_price"><a href="#">add to cart</a></span></div>
			</div>
		</li>
		<li>
				<a href="details.jsp"><img src="images/11.jpg" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<h5>Voluptate velit</h5>
					<div class="item_add"><span class="item_price"><h6>ONLY $37.00</h6></span></div>
					<div class="item_add"><span class="item_price"><a href="#">add to cart</a></span></div>
				</div>
		</li>
		<div class="clearfix"> </div>
	</ul>
		</div>
	</div>
</div>
<div class="foot-top">
	<div class="container">
		<div class="col-md-6 s-c">
			<li>
				<div class="fooll">
					<h5>follow us on</h5>
				</div>
			</li>
			<li>
				<div class="social-ic">
					<ul>
						<li><a href="#"><i class="facebok"> </i></a></li>
						<li><a href="#"><i class="twiter"> </i></a></li>
						<li><a href="#"><i class="goog"> </i></a></li>
						<li><a href="#"><i class="be"> </i></a></li>
						<li><a href="#"><i class="pp"> </i></a></li>
							<div class="clearfix"></div>	
					</ul>
				</div>
			</li>
				<div class="clearfix"> </div>
		</div>
		<div class="col-md-6 s-c">
			<div class="stay">
						<div class="stay-left">
							<form>
								<input type="text" placeholder="Enter your email to join our newsletter" required="">
							</form>
						</div>
						<div class="btn-1">
							<form>
								<input type="submit" value="join">
							</form>
						</div>
							<div class="clearfix"> </div>
			</div>
		</div>
			<div class="clearfix"> </div>
	</div>
</div>
<div class="footer">
	<div class="container">
		<div class="col-md-3 cust">
			<h4>CUSTOMER CARE</h4>
				<li><a href="#">Help Center</a></li>
				<li><a href="#">FAQ</a></li>
				<li><a href="buy.html">How To Buy</a></li>
				<li><a href="#">Delivery</a></li>
		</div>
		<div class="col-md-2 abt">
			<h4>ABOUT US</h4>
				<li><a href="#">Our Stories</a></li>
				<li><a href="#">Press</a></li>
				<li><a href="#">Career</a></li>
				<li><a href="contact.jsp">Contact</a></li>
		</div>
		<div class="col-md-2 myac">
			<h4>MY ACCOUNT</h4>
				<li><a href="register.html">Register</a></li>
				<li><a href="#">My Cart</a></li>
				<li><a href="#">Order History</a></li>
				<li><a href="buy.html">Payment</a></li>
		</div>
		<div class="col-md-5 our-st">
			<div class="our-left">
				<h4>OUR STORES</h4>
			</div>
			<div class="our-left1">
				<div class="cr_btn">
					<a href="#">SOLO</a>
				</div>
			</div>
			<div class="our-left1">
				<div class="cr_btn1">
					<a href="#">BOGOR</a>
				</div>
			</div>
			<div class="clearfix"> </div>
				<li><i class="add"> </i>Jl. Haji Muhidin, Blok G no.69</li>
				<li><i class="phone"> </i>025-2839341</li>
				<li><a href="mailto:info@example.com"><i class="mail"> </i>info@sitename.com </a></li>
			
		</div>
		<div class="clearfix"> </div>
			<p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
	</div>
</div>
<% //查看是否登录成功，如果成功有session,登录过就不再显示登录的小 div box
	//调试经验：一些脚本放到页面加载后执行    --------这部分服务端语句要放到body内。不同于script
    User login_user=(User)request.getSession().getAttribute("login_user");
    if(login_user!=null){
    	//out.print("<script>document.getElementById('loginForm').innerHTML='<span>Username:"+login_user.getUname()+"</span>';</script>");
    	out.print("<script>$('#loginForm').html('<span>Username:"+login_user.getUname()+"</span><br/><a id=\"logout\">logout</a>');</script>");
    }
%>
</body>
<script type="text/javascript">
$(function(){
	//如果登录成功,注意这段代码必须要重新加载页面时才会执行，ajax异步不执行
	
	//登录改用ajax ，异步上传数据
	$("#login").click(function(){
		//获取本页面数据,使用表单上传 username,password,checkbox ,如果文件上传要 upload，使用 common.io
		var username=$("#username").val();
		var password=$("#password").val();
		var checkbox=$("#checkbox").prop("checked"); //true false
		
		//alert(checkbox);
		
		$.ajax({
			url:"userServlet",
			data:{"username":username,
				"password":password,
				"checkbox":checkbox,
				"oper":"login"},
			dataType:"json",
			type:"POST",
			success:function(data){
				//console.log(data);
				if(data.status=="1"){
					toastr.success("登录成功","用户登录");
					//清除
					$("#body").hide();
					$("#forgetPass").hide();
					$("#loginForm").html("<span>Username:"+data.user["uname"]+"<br/><a id='logout'>logout</a></span>");
					/*  var myObj, x;  //json对象解析实例
						myObj = { "name":"runoob", "alexa":10000, "site":null };
						x = myObj.name; */
					
				}
				else if(data.status=="2"){
					toastr.success("登录失败，未激活","用户激活");
				}
				else{
					
					toastr.error("登录失败","用户登录");
				}
			},
			error:function(){
				
				toastr.error("网络错误","用户登录");
			}
		}); 
	});
	
	//退出登录  ，  这边要使用delegate 来设置click时间， 直接 a 的id click 不行，因为这个超链接是未来的click无法设置事件，经验总结
	/*
	定义和用法
	delegate() 方法为指定的元素（属于被选元素的子元素）添加一个或多个事件处理程序，并规定当这些事件发生时运行的函数。
	使用 delegate() 方法的事件处理程序适用于当前或未来的元素（比如由脚本创建的新元素）。
	*/
	$("#loginForm").delegate("a","click",function(){
		$.ajax({
			url:"userServlet",
			data:{
				"oper":"logout"},
			dataType:"json",
			type:"POST",
			success:function(data){
				//alert(data.status);
				if(data.status=="1"){
					toastr.success("退出用户成功","用户注销");
					
					$("#loginForm").html("<fieldset id='body'>"+
		                	"<fieldset>"+
                    "<label for='username'>Username</label>"+
                    "<input type='text' name='username' id='username' >"+
              "</fieldset><fieldset> <label for='password'>Password</label>"+
              "<input type='password' name='password' id='password' >"+
               "</fieldset><input type='button' id='login' value='Sign in' ><label for='checkbox'><input type='checkbox' name='checkbox' id='checkbox'> <i>Remember me</i></label>"+
      	"</fieldset><span id='forgetPass'><a href='#'>Forgot your password?</a></span>");
					/*  var myObj, x;  //json对象解析实例
						myObj = { "name":"runoob", "alexa":10000, "site":null };
						x = myObj.name; */
				}
				else{
					
					toastr.error("退出用户失败","用户注销");
				}
			},
			error:function(){
				
				toastr.error("网络错误","用户注销");
			}
		}); 
	});
	
});
</script>
</html>