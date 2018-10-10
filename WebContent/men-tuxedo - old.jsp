<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.demo.bean.User"%>
<%@page import="java.util.*" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Tuxedos</title>
<!--main tuxedo css-->
<link  rel="stylesheet" type="text/css"  media="all" href="css/tuxedo/tuxedo1.min.css" />
<link  rel="stylesheet" type="text/css"  media="screen and (min-width: 768px)" href="css/tuxedo/styles-l.min.css" />
<link  rel="stylesheet" type="text/css"  media="print" href="css/tuxedo/print.min.css" />
<link  rel="stylesheet" type="text/css"  media="all" href="css/tuxedo/font-awesome.min.css" />


<!--tuxedo-->


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
<script src="js/simpleCart.min.js"> </script>
</head>
<body class="page-products categorypath-tuxedos category-tuxedos catalog-category-view page-layout-1column">
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
						    <div id="loginBox">                
						        <form id="loginForm">
						                <fieldset id="body">
						                	<fieldset>
						                          <label for="email">Email Address</label>
						                          <input type="text" name="email" id="email">
						                    </fieldset>
						                    <fieldset>
						                            <label for="password">Password</label>
						                            <input type="password" name="password" id="password">
						                     </fieldset>
						                    <input type="submit" id="login" value="Sign in">
						                	<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
						            	</fieldset>
						            <span><a href="#">Forgot your password?</a></span>
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
									<li><a href="men.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="men.jsp">women</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>kids</h4>
								<ul>
									<li><a href="men.jsp">Pools&Tees</a></li>
									<li><a href="men.jsp">shirts</a></li>
									<li><a href="men.jsp">shorts</a></li>
									<li><a href="men.jsp">twinsets</a></li>
									<li><a href="men.jsp">kurts</a></li>
									<li><a href="men.jsp">jackets</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Bags</h4>
								<ul>
									<li><a href="men.jsp">Handbag</a></li>
									<li><a href="men.jsp">Slingbags</a></li>
									<li><a href="men.jsp">Clutches</a></li>
									<li><a href="men.jsp">Totes</a></li>
									<li><a href="men.jsp">Wallets</a></li>
									<li><a href="men.jsp">Laptopbags</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="#">login</a></li>
									<li><a href="register.html">create an account</a></li>
									<li><a href="men.jsp">create wishlist</a></li>
									<li><a href="men.jsp">my shopping bag</a></li>
									<li><a href="men.jsp">brands</a></li>
									<li><a href="men.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="men.jsp">Belts</a></li>
									<li><a href="men.jsp">Pens</a></li>
									<li><a href="men.jsp">Eyeglasses</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">Watches</a></li>
									<li><a href="men.jsp">Jewellery</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Footwear</h4>
								<ul>
									<li><a href="men.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="men.jsp">women</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">style videos</a></li>
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
									<li><a href="men.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="men.jsp">women</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>kids</h4>
								<ul>
									<li><a href="men.jsp">Pools&Tees</a></li>
									<li><a href="men.jsp">shirts</a></li>
									<li><a href="men.jsp">shorts</a></li>
									<li><a href="men.jsp">twinsets</a></li>
									<li><a href="men.jsp">kurts</a></li>
									<li><a href="men.jsp">jackets</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Bags</h4>
								<ul>
									<li><a href="men.jsp">Handbag</a></li>
									<li><a href="men.jsp">Slingbags</a></li>
									<li><a href="men.jsp">Clutches</a></li>
									<li><a href="men.jsp">Totes</a></li>
									<li><a href="men.jsp">Wallets</a></li>
									<li><a href="men.jsp">Laptopbags</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="#">login</a></li>
									<li><a href="register.html">create an account</a></li>
									<li><a href="men.jsp">create wishlist</a></li>
									<li><a href="men.jsp">my shopping bag</a></li>
									<li><a href="men.jsp">brands</a></li>
									<li><a href="men.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="men.jsp">Belts</a></li>
									<li><a href="men.jsp">Pens</a></li>
									<li><a href="men.jsp">Eyeglasses</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">Watches</a></li>
									<li><a href="men.jsp">Jewellery</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Footwear</h4>
								<ul>
									<li><a href="men.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="men.jsp">women</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">style videos</a></li>
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
									<li><a href="men.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="men.jsp">women</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>kids</h4>
								<ul>
									<li><a href="men.jsp">Pools&Tees</a></li>
									<li><a href="men.jsp">shirts</a></li>
									<li><a href="men.jsp">shorts</a></li>
									<li><a href="men.jsp">twinsets</a></li>
									<li><a href="men.jsp">kurts</a></li>
									<li><a href="men.jsp">jackets</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Bags</h4>
								<ul>
									<li><a href="men.jsp">Handbag</a></li>
									<li><a href="men.jsp">Slingbags</a></li>
									<li><a href="men.jsp">Clutches</a></li>
									<li><a href="men.jsp">Totes</a></li>
									<li><a href="men.jsp">Wallets</a></li>
									<li><a href="men.jsp">Laptopbags</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="#">login</a></li>
									<li><a href="register.html">create an account</a></li>
									<li><a href="men.jsp">create wishlist</a></li>
									<li><a href="men.jsp">my shopping bag</a></li>
									<li><a href="men.jsp">brands</a></li>
									<li><a href="men.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="men.jsp">Belts</a></li>
									<li><a href="men.jsp">Pens</a></li>
									<li><a href="men.jsp">Eyeglasses</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">Watches</a></li>
									<li><a href="men.jsp">Jewellery</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Footwear</h4>
								<ul>
									<li><a href="men.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="men.jsp">women</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">style videos</a></li>
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
									<li><a href="men.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="men.jsp">women</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>kids</h4>
								<ul>
									<li><a href="men.jsp">Pools&Tees</a></li>
									<li><a href="men.jsp">shirts</a></li>
									<li><a href="men.jsp">shorts</a></li>
									<li><a href="men.jsp">twinsets</a></li>
									<li><a href="men.jsp">kurts</a></li>
									<li><a href="men.jsp">jackets</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Bags</h4>
								<ul>
									<li><a href="men.jsp">Handbag</a></li>
									<li><a href="men.jsp">Slingbags</a></li>
									<li><a href="men.jsp">Clutches</a></li>
									<li><a href="men.jsp">Totes</a></li>
									<li><a href="men.jsp">Wallets</a></li>
									<li><a href="men.jsp">Laptopbags</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="#">login</a></li>
									<li><a href="register.html">create an account</a></li>
									<li><a href="men.jsp">create wishlist</a></li>
									<li><a href="men.jsp">my shopping bag</a></li>
									<li><a href="men.jsp">brands</a></li>
									<li><a href="men.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="men.jsp">Belts</a></li>
									<li><a href="men.jsp">Pens</a></li>
									<li><a href="men.jsp">Eyeglasses</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">Watches</a></li>
									<li><a href="men.jsp">Jewellery</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Footwear</h4>
								<ul>
									<li><a href="men.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="men.jsp">women</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">style videos</a></li>
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
									<li><a href="men.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="men.jsp">women</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>kids</h4>
								<ul>
									<li><a href="men.jsp">Pools&Tees</a></li>
									<li><a href="men.jsp">shirts</a></li>
									<li><a href="men.jsp">shorts</a></li>
									<li><a href="men.jsp">twinsets</a></li>
									<li><a href="men.jsp">kurts</a></li>
									<li><a href="men.jsp">jackets</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Bags</h4>
								<ul>
									<li><a href="men.jsp">Handbag</a></li>
									<li><a href="men.jsp">Slingbags</a></li>
									<li><a href="men.jsp">Clutches</a></li>
									<li><a href="men.jsp">Totes</a></li>
									<li><a href="men.jsp">Wallets</a></li>
									<li><a href="men.jsp">Laptopbags</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="#">login</a></li>
									<li><a href="register.html">create an account</a></li>
									<li><a href="men.jsp">create wishlist</a></li>
									<li><a href="men.jsp">my shopping bag</a></li>
									<li><a href="men.jsp">brands</a></li>
									<li><a href="men.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="men.jsp">Belts</a></li>
									<li><a href="men.jsp">Pens</a></li>
									<li><a href="men.jsp">Eyeglasses</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">Watches</a></li>
									<li><a href="men.jsp">Jewellery</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Footwear</h4>
								<ul>
									<li><a href="men.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="men.jsp">women</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">style videos</a></li>
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
									<li><a href="men.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="men.jsp">women</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>kids</h4>
								<ul>
									<li><a href="men.jsp">trends</a></li>
									<li><a href="men.jsp">sale</a></li>
									<li><a href="men.jsp">style videos</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Bags</h4>
								<ul>
									<li><a href="men.jsp">trends</a></li>
									<li><a href="men.jsp">sale</a></li>
									<li><a href="men.jsp">style videos</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="#">login</a></li>
									<li><a href="register.html">create an account</a></li>
									<li><a href="men.jsp">create wishlist</a></li>
									<li><a href="men.jsp">my shopping bag</a></li>
									<li><a href="men.jsp">brands</a></li>
									<li><a href="men.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="men.jsp">trends</a></li>
									<li><a href="men.jsp">sale</a></li>
									<li><a href="men.jsp">style videos</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Footwear</h4>
								<ul>
									<li><a href="men.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="men.jsp">women</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">style videos</a></li>
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
									<li><a href="men.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="men.jsp">women</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>kids</h4>
								<ul>
									<li><a href="men.jsp">trends</a></li>
									<li><a href="men.jsp">sale</a></li>
									<li><a href="men.jsp">style videos</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Bags</h4>
								<ul>
									<li><a href="men.jsp">trends</a></li>
									<li><a href="men.jsp">sale</a></li>
									<li><a href="men.jsp">style videos</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="#">login</a></li>
									<li><a href="register.html">create an account</a></li>
									<li><a href="men.jsp">create wishlist</a></li>
									<li><a href="men.jsp">my shopping bag</a></li>
									<li><a href="men.jsp">brands</a></li>
									<li><a href="men.jsp">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="men.jsp">trends</a></li>
									<li><a href="men.jsp">sale</a></li>
									<li><a href="men.jsp">style videos</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Footwear</h4>
								<ul>
									<li><a href="men.jsp">new arrivals</a></li>
									<li><a href="men.jsp">men</a></li>
									<li><a href="men.jsp">women</a></li>
									<li><a href="men.jsp">accessories</a></li>
									<li><a href="men.jsp">kids</a></li>
									<li><a href="men.jsp">style videos</a></li>
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
<!-- content -->
<div class="container">
<div class="women_main">
	<!-- start sidebar -->
	<!-- start content -->
	<!-- grids_of_4 -->
	<!-- end grids_of_4 -->
	
	<main id="maincontent" class="page-main"><a id="contentarea" tabindex="-1"></a>
<div class="page-title-wrapper">
    <h1 class="page-title"
         id="page-title-heading"                     aria-labelledby="page-title-heading toolbar-amount"
        >
        <span class="base" data-ui-id="page-title-wrapper" >Tuxedos</span>    </h1>
    </div>
<div class="page messages"><div data-placeholder="messages"></div>
<div data-bind="scope: 'messages'">
    <!-- ko if: cookieMessages && cookieMessages.length > 0 -->
    <div role="alert" data-bind="foreach: { data: cookieMessages, as: 'message' }" class="messages">
        <div data-bind="attr: {
            class: 'message-' + message.type + ' ' + message.type + ' message',
            'data-ui-id': 'message-' + message.type
        }">
            <div data-bind="html: message.text"></div>
        </div>
    </div>
    <!-- /ko -->
    <!-- ko if: messages().messages && messages().messages.length > 0 -->
    <div role="alert" data-bind="foreach: { data: messages().messages, as: 'message' }" class="messages">
        <div data-bind="attr: {
            class: 'message-' + message.type + ' ' + message.type + ' message',
            'data-ui-id': 'message-' + message.type
        }">
            <div data-bind="html: message.text"></div>
        </div>
    </div>
    <!-- /ko -->
</div>
<script type="text/x-magento-init">
    {
        "*": {
            "Magento_Ui/js/core/app": {
                "components": {
                        "messages": {
                            "component": "Magento_Theme/js/view/messages"
                        }
                    }
                }
            }
    }
</script>
</div><div class="category-view">    <div class="category-description std">
        We take pride in offering one of the largest selections of classic and designer tuxedos at guaranteed lowest prices. You may begin browsing for your formal wear by using one of the browse methods below. You may want to go straight to our most popular black tuxedos or notch tuxedos collections, or use the options below. Enjoy shopping and feel confident that you are getting a tremendous deal on your brand new tuxedo.  If you wish to expand your tux knowledge or if you have additional questions, be sure to check out our <a href="/faq">Tuxedos FAQ</a> or <a href="/contact-us">contact us</a>.</p>    </div>
    <div class="category-cms">
        <div class="short-banner ip-block">
<div class="container"><img src="https://www.buy4lesstuxedo.com/media/banners/buy4lesstux-short-banner.jpg" alt="" /></div>
<!--/container--></div>
<!--/short-banner-->
    <div class="shop-by-brand ip-block">
        <div class="container">
            <div class="brand-box ip-block" id="shop-by-brand">
                <div class="left dropdown two-thirds">
                    <h3>Shop by <span>Brand</span></h3>
                    <select data-placeholder="- Select One -" data-onchange="shop-by-brand" id="shop-by-brand-sel">
						<option value="">-Select One-</option>
                                                                            <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/baroni-tuxedos">Baroni Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/berragamo-tuxedos">Berragamo Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/calvin-klein-tuxedos">Calvin Klein Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/caravelli-tuxedos">Caravelli Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/cardi-tuxedos">Cardi Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/ej-samuel-tuxedos">EJ Samuel Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/emilio-ciro-tuxedos">Emilio Ciro Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/ferrecci-tuxedos">Ferrecci Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/galante-tuxedos">Galante Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/gianni-manzoni-tuxedos">Gianni Manzoni Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/giorgio-valentini-tuxedos">Giorgio Valentini Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/ike-behar-tuxedos">Ike Behar Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/jean-yves-tuxedos">Jean Yves Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/joe-black-tuxedos">Joe Black Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/mattarazi-tuxedos">Mattarazi Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/michael-kors-tuxedos">Michael Kors Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/neil-allyn-tuxedos">Neil Allyn Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/paolo-vista-tuxedos">Paolo Vista Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/paul-betenly-tuxedos">Paul Betenly Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/prive-tuxedos">Prive Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/prontomoda-tuxedos">Prontomoda Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/ralph-lauren-tuxedos">Ralph Lauren Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/statement-tuxedos">Statement Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/trend-tuxedos">Trend Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/vinci-tuxedos">Vinci Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/west-end-tuxedos">West End Tuxedos</option>
                                                    <option value="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos/zonettie-tuxedos">Zonettie Tuxedos</option>
                                            </select>
                </div><!--/dropdown-->
                <div class="right see-results third">
                    <a class="button" href="javascript:void(0)" onclick="redirectCategory();">See Results</a>
                </div><!--/see-results-->
            </div><!--/brand-box-->
        </div><!--/container-->
    </div><!--/ip-block-->

<script>
function redirectCategory(){
	var e = document.getElementById("shop-by-brand-sel");
	var cat_link = e.options[e.selectedIndex].value;
	if(cat_link!=""){
		window.location.href = cat_link;
	}
}
</script>
<style>
	.page-main > .page-title-wrapper .page-title, .rm-link, .page-products .columns,
	.category-view .category-description.std {display:none;}
</style>
 
<div class="ctas ip-block">
<div class="container">
<div class="left seven-tenths"><a href="/tuxedos/tuxedo-packages"> <img src="https://www.buy4lesstuxedo.com/media/wysiwyg/buy4lesstux/tux-packages.jpg" alt="" /></a></div>
<div class="right three-tenths"><a href="pages/tuxedos/dinner-jackets.jsp"> <img src="https://i.shgcdn.com/0dabf281-ecd0-4c23-b048-bbbcfcc1deac/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" alt="here not found" /></a></div>
</div>
<!--/container--></div>
<!--/ip-block-->
<div class="shop-by-color left ip-block">
<div class="container">
<h3>Shop by <span>Color</span></h3>
<div class="fifth">
<div class="image"><a href="/tuxedos/black-tuxedos"><img src="https://www.buy4lesstuxedo.com/media/wysiwyg/buy4lesstux/shop-color-black.jpg" alt="Black" /></a></div>
</div>
<!--/fifth-->
<div class="fifth">
<div class="image"><a href="/tuxedos/blue-tuxedos"><img src="https://www.buy4lesstuxedo.com/media/wysiwyg/buy4lesstux/shop-color-blue.jpg" alt="Blue" /></a></div>
</div>
<!--/fifth-->
<div class="fifth">
<div class="image"><a href="/tuxedos/grey-tuxedos"><img src="https://www.buy4lesstuxedo.com/media/wysiwyg/buy4lesstux/shop-color-grey.jpg" alt="Grey" /></a></div>
</div>
<!--/fifth-->
<div class="fifth">
<div class="image"><a href="/tuxedos/white-tuxedos"><img src="https://www.buy4lesstuxedo.com/media/wysiwyg/buy4lesstux/shop-color-white.jpg" alt="White" /></a></div>
</div>
<!--/fifth-->
<div class="fifth">
<div class="image"><a href="/tuxedos/other-color-tuxedos"><img src="https://www.buy4lesstuxedo.com/media/wysiwyg/buy4lesstux/shop-color-other.jpg" alt="Other" /></a></div>
</div>
<!--/fifth--></div>
<!--/container--></div>
<!--/shop-by-color-->
<div class="shop-by-category grid-7 left ip-block">
<div class="container">
<h3>Shop by <span>Category</span></h3>
<div class="item">
<div class="image"><a href="/tuxedos/slim-fit-tuxedos"><img src="https://www.buy4lesstuxedo.com/media/wysiwyg/buy4lesstux/category-slim-fit-tux.jpg" alt="" /></a></div>
<div class="text">Slim fit Tuxedos</div>
</div>
<div class="item">
<div class="image"><a href="/tuxedos/designer-tuxedos"><img src="https://www.buy4lesstuxedo.com/media/wysiwyg/buy4lesstux/category-designer-tux.jpg" alt="" /></a></div>
<div class="text">Designer Tuxedos</div>
</div>
<div class="item">
<div class="image"><a href="/tuxedos/tuxedo-tails"><img src="https://www.buy4lesstuxedo.com/media/wysiwyg/buy4lesstux/category-tuxedo-tails.jpg" alt="" /></a></div>
<div class="text">Tuxedo Tails</div>
</div>
<div class="item">
<div class="image"><a href="/tuxedos/tuxedo-jackets"><img src="https://www.buy4lesstuxedo.com/media/wysiwyg/buy4lesstux/category-tuxedo-jackets.jpg" alt="" /></a></div>
<div class="text">Tuxedo Jackets</div>
</div>
<div class="item">
<div class="image"><a href="/tuxedos/tuxedo-pants"><img src="https://www.buy4lesstuxedo.com/media/wysiwyg/buy4lesstux/category-tuxedo-pants.jpg" alt="" /></a></div>
<div class="text">Tuxedo Pants</div>
</div>
<div class="item">
<div class="image"><a href="/tuxedos/womens-tuxedos"><img src="https://www.buy4lesstuxedo.com/media/wysiwyg/buy4lesstux/category-womens-tuxedos.jpg" alt="" /></a></div>
<div class="text">Women's Tuxedos</div>
</div>
<div class="item">
<div class="image"><a href="/boys-tuxedos/boys-tuxedo-packages"><img src="https://www.buy4lesstuxedo.com/media/wysiwyg/buy4lesstux/category-kids-tuxedos.jpg" alt="" /></a></div>
<div class="text">Kid's Tuxedos</div>
</div>
</div>
<!--/container--></div>
<!--/shop-by-color-->
<div class="home-text ip-block">
<div class="container">A tuxedo makes anyone look good. It&rsquo;s not only a great way to bring out your best features, but it&rsquo;s a stylish outfit that is ideal for a variety of formal events. From weddings and birthday parties to prom nights and even the red carpet &ndash; a tuxedo never goes out of style.<br /><br />
<p>Tuxedos have been around for hundreds of years, and they only become more popular over time. It&rsquo;s a classic style that goes perfectly with any formal event, and can easily make an impression on any audience. Tuxedos can be bought in different colors and styles, depending on your requirements and personal style. From the classic black tie to wearing double breasted jackets, and choosing between classic neckwear, tuxedo outfits are not only stylish but also one of the most effective outfits available.<br /><br /></p>
<p>If you are looking to buy tuxedos, consider popular colors like gray, white and <a href="http://www.buy4lesstuxedo.com/tuxedos/black-tuxedos">black tuxedos</a>. Or you can go for a selection of <a href="http://www.buy4lesstuxedo.com/tuxedos/womens-tuxedos">women&rsquo;s tuxedos</a> that are just as stylish and very popular. A great choice is the Manhattan light gray two-button notch tuxedo or the <a href="http://www.buy4lesstuxedo.com/barcelona-black-cardi-tuxedo">Barcelona black two-button notch tuxedo</a>. This is a best-seller and features a plain front pants style and a modern fit.<br /><br /></p>
<p>It&rsquo;s always a good idea to have your tuxedo tailored to your needs. This will ensure that you have a unique fit, that will give you the best image possible. Tailored suits always attract attention and combined with the right fabric choice, you can really look your absolute best.<br /><br /></p>
<p><strong>Tuxedo Styles<br /><br /></strong></p>
<p>There are many different tuxedo styles, which is what makes this outfit so versatile. You can choose from a wide range of colors and materials to different designs and even brands; tuxedos will never go out of fashion, and they are ideal for any formal function. Another benefit of a tuxedo is that it can be tailored to provide you with a unique and comfortable fit. Tuxedos are meant to fit absolutely perfectly, and you can choose to accessorize if the event requires it.<br /><br /></p>
<p>Some of the different tuxedo styles available include slim fit tuxedos, designer tuxedos, cutaway tuxedos, and tuxedo packages, among others. This allows you to choose a tuxedo according to your budget, as well as your personal style. A perfectly tailored tuxedo will always turn heads.<br /><br /></p>
<p><a href="http://www.buy4lesstuxedo.com/tuxedos/slim-fit-tuxedos">Slim fit tuxedos</a> combine classic styling with modern tailoring, to a create a more streamlined fit. Perfect for all occasions such as proms, weddings, and black tie events, these high fashion suits look fabulous with a crisp white shirt and either a bow tie or a slim necktie to complete the look.<br /><br /></p>
<p>You can also choose from our range of <a href="http://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos">designer tuxedos</a> are perfect for formal events such as weddings, black tie events, and special occasions where only the best will do. &nbsp;These exclusive garments are made from the finest quality fabrics and tailored to perfection. They are the perfect investment for modern men who dress to impress and love to express their style and individuality with designer pieces.<br /><br /></p>
<p><a href="http://www.buy4lesstuxedo.com/tuxedos/tuxedo-packages">Tuxedo packages</a> include everything you need to look great for your wedding, prom, or black tie event. Our tuxedo packages consist of a six-piece set with a tuxedo jacket, formal trousers, tuxedo shirt, tuxedo vest or cummerbund, neckwear and a jewelry set.<br /><br /></p>
<p>Tuxedo pants are one of the most important aspects of your outfit. You can choose from various colors like gray, black, navy and chocolate, and choose from a variety of fits like classic, modern, and slim. Tuxedo pants are usually made from materials like wool, polyester, gabardine, and more. They are all very comfortable, and easy to wear. You can also choose between plain front pants or double pleated pants.<br /><br /></p>
<p>You can also add a range of <a href="http://www.buy4lesstuxedo.com/formal-accessories">tuxedo accessories</a> to your outfit, including cummerbunds, neckties, jewelry, hats, pocket squares, lapel flowers, and more. These accessories can really complement your tuxedo, and you can decide which accessories will be best for a specific formal event. Although accessories should never be overdone, it&rsquo;s always an essential part of your look and a great way to add color too.<br /><br /></p>
<p><strong>Buying Tuxedos<br /><br /></strong></p>
<p>When you want to buy tuxedos, there are a few things you should consider before choosing an outfit. You need to consider the material you want to wear, as this will make a difference to the look and feel of the tuxedo, as well as the appearance. Next, you should consider the fit you want for your outfit.<br /><br /></p>
<p>As a leading online tuxedo store, Buy4LessTuxedo.com offers a range of high quality, affordable tuxedos for a variety of occasions. We are your number one resource for any formal tuxedo outfit you may need, and we have plenty of accessories to choose from. You can browse through our selection and view a variety of styles, colors, materials, and more. We also offer a selection of <a href="http://www.buy4lesstuxedo.com/boys-tuxedos">tuxedos for boys</a>, which are very adorable and perfect for their next formal event.<br /><br /></p>
<p>We can help you find the <a href="http://www.buy4lesstuxedo.com/tuxedo-sizing-and-fit">perfect tuxedo fit</a> with a comprehensive guide on the different sizes that are available, and how you can choose the right style for your specific body type. We explain the difference between a modern fit and a slim fit, guide you with pants sizing, waist measurements and more &ndash; allowing you to find a tuxedo that suits you best, all in the comfort of your own home.&nbsp;<br /><br /></p>
<p>If you wish to expand your tux knowledge or if you have additional questions, be sure to check out our <a href="/help-center/tuxedos">Tuxedos FAQ</a>. For more information about our selection of tuxedos, please don&rsquo;t hesitate to <a href="http://www.buy4lesstuxedo.com/contact-us/">get in touch</a>.&nbsp;</p>
</div>
<!--/container--></div>
<!--/text-->    </div>
</div><div class="columns"><div class="column main">    <div class="block filter">
        <div class="title">
            <strong>Shop By</strong>
        </div>
        <div class="content">
            <strong class="subtitle">Shopping Options</strong>
            <dl class="options" id="narrow-by-list2">
                <dt>Category</dt>
                <dd>
                    <ol class="items">
                                                                                    <li class="item">
                                    <a href="https://www.buy4lesstuxedo.com/tuxedos/black-tuxedos">Black Tuxedos</a>
                                    <span class="count">79</span>
                                </li>
                                                                                                                <li class="item">
                                    <a href="https://www.buy4lesstuxedo.com/tuxedos/blue-tuxedos">Blue Tuxedos</a>
                                    <span class="count">25</span>
                                </li>
                                                                                                                <li class="item">
                                    <a href="https://www.buy4lesstuxedo.com/tuxedos/grey-tuxedos">Grey Tuxedos</a>
                                    <span class="count">19</span>
                                </li>
                                                                                                                <li class="item">
                                    <a href="https://www.buy4lesstuxedo.com/tuxedos/white-tuxedos">White Tuxedos</a>
                                    <span class="count">21</span>
                                </li>
                                                                                                                <li class="item">
                                    <a href="https://www.buy4lesstuxedo.com/tuxedos/other-color-tuxedos">Other Color Tuxedos</a>
                                    <span class="count">30</span>
                                </li>
                                                                                                                <li class="item">
                                    <a href="https://www.buy4lesstuxedo.com/tuxedos/tuxedo-packages">Tuxedo Packages</a>
                                    <span class="count">22</span>
                                </li>
                                                                                                                <li class="item">
                                    <a href="https://www.buy4lesstuxedo.com/tuxedos/slim-fit-tuxedos">Slim Fit Tuxedos</a>
                                    <span class="count">95</span>
                                </li>
                                                                                                                <li class="item">
                                    <a href="https://www.buy4lesstuxedo.com/tuxedos/designer-tuxedos">Designer Tuxedos</a>
                                    <span class="count">44</span>
                                </li>
                                                                                                                <li class="item">
                                    <a href="https://www.buy4lesstuxedo.com/tuxedos/tuxedo-tails">Tuxedo Tails</a>
                                    <span class="count">5</span>
                                </li>
                                                                                                                <li class="item">
                                    <a href="https://www.buy4lesstuxedo.com/tuxedos/cutaway-tuxedos">Cutaway Tuxedos</a>
                                    <span class="count">4</span>
                                </li>
                                                                                                                <li class="item">
                                    <a href="https://www.buy4lesstuxedo.com/tuxedos/womens-tuxedos">Womens Tuxedos</a>
                                    <span class="count">32</span>
                                </li>
                                                                                                                <li class="item">
                                    <a href="pages/tuxedos/dinner-jackets.jsp">Dinner Jackets</a>
                                    <span class="count">32</span>
                                </li>
                                                                                                                <li class="item">
                                    <a href="https://www.buy4lesstuxedo.com/tuxedos/tuxedo-jackets">Tuxedo Jackets</a>
                                    <span class="count">108</span>
                                </li>
                                                                                                                <li class="item">
                                    <a href="https://www.buy4lesstuxedo.com/tuxedos/tuxedo-pants">Tuxedo Pants</a>
                                    <span class="count">26</span>
                                </li>
                                                                        </ol>
                </dd>
            </dl>
        </div>
    </div>
<input name="form_key" type="hidden" value="COkUODwPSVRYG46y" /><div id="authenticationPopup" data-bind="scope:'authenticationPopup'" style="display: none;">
    <script>
        window.authenticationPopup = {"autocomplete":"off","customerRegisterUrl":"https:\/\/www.buy4lesstuxedo.com\/customer\/account\/create\/","customerForgotPasswordUrl":"https:\/\/www.buy4lesstuxedo.com\/customer\/account\/forgotpassword\/","baseUrl":"https:\/\/www.buy4lesstuxedo.com\/"};
    </script>
    <!-- ko template: getTemplate() --><!-- /ko -->
    <script type="text/x-magento-init">
        {
            "#authenticationPopup": {
                "Magento_Ui/js/core/app": {"components":{"authenticationPopup":{"component":"Magento_Customer\/js\/view\/authentication-popup","children":{"messages":{"component":"Magento_Ui\/js\/view\/messages","displayArea":"messages"},"captcha":{"component":"Magento_Captcha\/js\/view\/checkout\/loginCaptcha","displayArea":"additional-login-form-fields","formId":"user_login","configSource":"checkout"}}}}}            },
            "*": {
                "Magento_Ui/js/block-loader": "https\u003A\u002F\u002Fwww.buy4lesstuxedo.com\u002Fstatic\u002Ffrontend\u002FLumatheme\u002Fbuy4less\u002Fen_US\u002Fimages\u002Floader\u002D1.gif"
            }
        }
    </script>
</div>
<script type="text/x-magento-init">
{"*":{"Magento_Customer\/js\/section-config":{"sections":{"stores\/store\/switch":"*","directory\/currency\/switch":"*","*":["messages"],"customer\/account\/logout":["recently_viewed_product","recently_compared_product"],"customer\/account\/loginpost":"*","customer\/account\/createpost":"*","customer\/account\/editpost":"*","customer\/ajax\/login":["checkout-data","cart","aw-osc-checkout-data"],"catalog\/product_compare\/add":["compare-products"],"catalog\/product_compare\/remove":["compare-products"],"catalog\/product_compare\/clear":["compare-products"],"sales\/guest\/reorder":["cart"],"sales\/order\/reorder":["cart"],"review\/product\/post":["review"],"checkout\/cart\/add":["cart"],"checkout\/cart\/delete":["cart"],"checkout\/cart\/updatepost":["cart"],"checkout\/cart\/updateitemoptions":["cart"],"checkout\/cart\/couponpost":["cart"],"checkout\/cart\/estimatepost":["cart"],"checkout\/cart\/estimateupdatepost":["cart"],"checkout\/onepage\/saveorder":["cart","checkout-data","last-ordered-items","aw-osc-checkout-data","checkout-fields"],"checkout\/sidebar\/removeitem":["cart"],"checkout\/sidebar\/updateitemqty":["cart"],"rest\/*\/v1\/carts\/*\/payment-information":["cart","checkout-data","last-ordered-items","instant-purchase","aw-osc-checkout-data"],"rest\/*\/v1\/guest-carts\/*\/payment-information":["cart","checkout-data","aw-osc-checkout-data"],"rest\/*\/v1\/guest-carts\/*\/selected-payment-method":["cart","checkout-data"],"rest\/*\/v1\/carts\/*\/selected-payment-method":["cart","checkout-data","instant-purchase"],"customer\/address\/*":["instant-purchase"],"customer\/account\/*":["instant-purchase"],"vault\/cards\/deleteaction":["instant-purchase"],"multishipping\/checkout\/overviewpost":["cart"],"authorizenet\/directpost_payment\/place":["cart","checkout-data"],"paypal\/express\/placeorder":["aw-osc-checkout-data","cart","checkout-data"],"paypal\/payflowexpress\/placeorder":["aw-osc-checkout-data","cart","checkout-data"],"rest\/*\/v1\/awosc\/guest-carts\/*\/cart-items\/*":["cart"],"rest\/*\/v1\/awosc\/carts\/*\/cart-items\/*":["cart"],"wishlist\/index\/add":["wishlist"],"wishlist\/index\/remove":["wishlist"],"wishlist\/index\/updateitemoptions":["wishlist"],"wishlist\/index\/update":["wishlist"],"wishlist\/index\/cart":["wishlist","cart"],"wishlist\/index\/fromcart":["wishlist","cart"],"wishlist\/index\/allcart":["wishlist","cart"],"wishlist\/shared\/allcart":["wishlist","cart"],"wishlist\/shared\/cart":["cart"],"braintree\/paypal\/placeorder":["cart","checkout-data"]},"clientSideSections":["checkout-data","cart-data","aw-osc-checkout-data"],"baseUrls":["https:\/\/www.buy4lesstuxedo.com\/"]}}}</script>
<script type="text/x-magento-init">
{"*":{"Magento_Customer\/js\/customer-data":{"sectionLoadUrl":"https:\/\/www.buy4lesstuxedo.com\/customer\/section\/load\/","expirableSectionLifetime":60,"expirableSectionNames":["cart"],"cookieLifeTime":"604800","updateSessionUrl":"https:\/\/www.buy4lesstuxedo.com\/customer\/account\/updateSession\/"}}}</script>
<script type="text/x-magento-init">
{"*":{"Magento_Customer\/js\/invalidation-processor":{"invalidationRules":{"website-rule":{"Magento_Customer\/js\/invalidation-rules\/website-rule":{"scopeConfig":{"websiteId":1}}}}}}}</script>
<script type="text/x-magento-init">
    {
        "body": {
            "pageCache": {"url":"https:\/\/www.buy4lesstuxedo.com\/page_cache\/block\/render\/id\/57\/","handles":["default","catalog_category_view","catalog_category_view_type_default","catalog_category_view_id_57"],"originalRequest":{"route":"catalog","controller":"category","action":"view","uri":"\/tuxedos"},"versionCookieName":"private_content_version"}        }
    }
</script>
<script type="text/x-magento-init">
    {
        "body": {
            "awBlogAjax": {"url":"https:\/\/www.buy4lesstuxedo.com\/aw_blog\/block\/render\/id\/57\/"}        }
    }
</script>
<script type="text/x-magento-init">
    {
        "body": {
            "requireCookie": {"noCookieUrl":"https:\/\/www.buy4lesstuxedo.com\/cookie\/index\/noCookies\/","triggers":[".action.towishlist"]}        }
    }
</script>
    <script data-role="msrp-popup-template" type="text/x-magento-template">
    <div id="map-popup-click-for-price" class="map-popup">
        <div class="popup-header">
            <strong class="title" id="map-popup-heading-price"></strong>
        </div>
        <div class="popup-content">
            <div class="map-info-price" id="map-popup-content">
                <div class="price-box">
                    <div class="map-msrp" id="map-popup-msrp-box">
                        <span class="label">Price</span>
                        <span class="old-price map-old-price" id="map-popup-msrp">
                            <span class="price"></span>
                        </span>
                    </div>
                    <div class="map-price" id="map-popup-price-box">
                        <span class="label">Actual Price</span>
                        <span id="map-popup-price" class="actual-price"></span>
                    </div>
                </div>
                <form action="" method="POST" id="product_addtocart_form_from_popup" class="map-form-addtocart">
                    <input type="hidden" name="product" class="product_id" value="" id="map-popup-product-id"/>
                    <button type="button"
                            title="Add to Cart"
                            class="action tocart primary"
                            id="map-popup-button">
                        <span>Add to Cart</span>
                    </button>
                    <div class="additional-addtocart-box">
                                            </div>
                </form>
            </div>
            <div class="map-text" id="map-popup-text">
                Our price is lower than the manufacturer&#039;s &quot;minimum advertised price.&quot;  As a result, we cannot show you the price in catalog or the product page. <br><br> You have no obligation to purchase the product once you know the price. You can simply remove the item from your cart.            </div>
        </div>
    </div>
    </script>
    <script data-role="msrp-info-template" type="text/x-magento-template">
    <div id="map-popup-what-this" class="map-popup">
        <div class="popup-header">
            <strong class="title" id="map-popup-heading-what-this"></strong>
        </div>
        <div class="popup-content">
            <div class="map-help-text" id="map-popup-text-what-this">
                Our price is lower than the manufacturer&#039;s &quot;minimum advertised price.&quot;  As a result, we cannot show you the price in catalog or the product page. <br><br> You have no obligation to purchase the product once you know the price. You can simply remove the item from your cart.            </div>
        </div>
    </div>
    </script>
</div></div></main>
	<div class="clearfix"></div>
	
	<!-- end content -->
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
	//调试经验：一些脚本放到页面加载后执行
    User login_user=(User)request.getSession().getAttribute("login_user");
    if(login_user!=null){
    	//out.print("<script>document.getElementById('loginForm').innerHTML='<span>Username:"+login_user.getUname()+"</span>';</script>");
    	out.print("<script>$('#loginForm').html('<span>Username:"+login_user.getUname()+"</span><br/><a id=\"logout\">logout</a>');</script>");
    }
%>
</body>
</html>