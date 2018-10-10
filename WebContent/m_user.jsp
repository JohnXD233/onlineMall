<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8" />
	<title>SimpliQ - Flat & Responsive Bootstrap Admin Template</title>
	<meta name="description" content="SimpliQ - Flat & Responsive Bootstrap Admin Template." />
	<meta name="author" content="Łukasz Holeczek" />
	<meta name="keyword" content="SimpliQ, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina" />
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link href="manager/css/bootstrap.min.css" rel="stylesheet" />
	<link href="manager/css/bootstrap-responsive.min.css" rel="stylesheet" />
	<link href="manager/css/style.min.css" rel="stylesheet" />
	<link href="manager/css/style-responsive.min.css" rel="stylesheet" />
	<link href="manager/css/retina.css" rel="stylesheet" />
	<!-- end: CSS -->
	

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->
	
	<!-- start: Favicon and Touch Icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
	<link rel="shortcut icon" href="ico/favicon.png" />
	<!-- end: Favicon and Touch Icons -->	
		
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
	<hr>
	<div class="row-fluid">
	<div class="box span12">
					<div class="box-header">
						<h2><i class="icon-edit"></i>Add User Operation</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="icon-wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" action="managerServlet?oper=addUser">
							<fieldset>
							 <!-- <h3 style="color:#39C">Add User</h3>-->
							  <div class="control-group">
											<label class="control-label" for="uname">User Name</label>
											<div class="controls">
									  			<input type="text" id="uname">
											</div>
								  		</div>
								  		<div class="control-group">
											<label class="control-label" for="realname">Real Name</label>
											<div class="controls">
									  			<input type="text" id="realname">
											</div>
								  		</div>
								  		<div class="control-group">
											<label class="control-label" for="upass">Password</label>
											<div class="controls">
									  			<input type="text" id="upass">
											</div>
								  		</div>
								  		<div class="control-group">
											<label class="control-label" for="email">E-mail</label>
											<div class="controls">
									  			<input type="text" id="email">
											</div>
								  		</div>
								  		<div class="control-group">
											<label class="control-label" for="address">Address</label>
											<div class="controls">
									  			<input type="text" id="address">
											</div>
								  		</div>
								  		<div class="control-group">
											<label class="control-label" for="phone">Phone</label>
											<div class="controls">
									  			<input type="text" id="phone">
											</div>
								  		</div>
							  			<!-- <input type="hidden" value="1" id="user_state">隐藏域放用户 默认没激活，以及激活码的初始化
							  			<input type="hidden" value="1234" id="user_activecode"> -->
							  <div class="form-actions">
								<button type="submit" class="btn btn-primary">Save changes</button>
								<button class="btn">Cancel</button>
							  </div>
							</fieldset>
						</form>
					</div>
				</div>
	</div>
	
	<div class="row-fluid">
	<div class="box span12">
					<div class="box-header">
						<h2><i class="icon-edit"></i>Alter User Operation</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="icon-wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" action="managerServlet?oper=altUser">
							<fieldset>
							<!--  <h3 style="color:#39C">Alter User</h3>-->
							  <div class="control-group">
											<label class="control-label" for="uname">User Name</label>
											<div class="controls">
									  			<input type="text" id="uname">
											</div>
								  		</div>
								  		<div class="control-group">
											<label class="control-label" for="realname">Real Name</label>
											<div class="controls">
									  			<input type="text" id="realname">
											</div>
								  		</div>
								  		<div class="control-group">
											<label class="control-label" for="upass">Password</label>
											<div class="controls">
									  			<input type="text" id="upass">
											</div>
								  		</div>
								  		<div class="control-group">
											<label class="control-label" for="email">E-mail</label>
											<div class="controls">
									  			<input type="text" id="email">
											</div>
								  		</div>
								  		<div class="control-group">
											<label class="control-label" for="address">Address</label>
											<div class="controls">
									  			<input type="text" id="address">
											</div>
								  		</div>
								  		<div class="control-group">
											<label class="control-label" for="phone">Phone</label>
											<div class="controls">
									  			<input type="text" id="phone">
											</div>
								  		</div>
							  			<!-- <input type="type" id="user_state">隐藏域放用户 默认没激活，以及激活码的初始化
							  			<input type="hidden" value="1234" id="user_activecode"> -->
							  <div class="form-actions">
								<button type="submit" class="btn btn-primary">Save changes</button>
								<button class="btn">Cancel</button>
							  </div>
							</fieldset>
						</form>
					</div>
				</div>
	</div>
	
	<div class="row-fluid">
	<div class="box span12">
					<div class="box-header">
						<h2><i class="icon-edit"></i>Delete User Operation</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="icon-wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" action="managerServlet?delUser">
							<fieldset>
							 <!-- <h3 style="color:#39C">Delete User</h3>-->
							  <div class="control-group">
											<label class="control-label" for="uid">User ID</label>
											<div class="controls">
									  			<input type="text" id="uid">
											</div>
								  		</div>
								  
							  <div class="form-actions">
								<button type="submit" class="btn btn-primary">Delete</button>
								<button class="btn">Cancel</button>
							  </div>
							</fieldset>
						</form>
					</div>
				</div>
	</div>
	<!-- start: JavaScript-->
		<script src="manager/js/jquery-1.10.2.min.js"></script>
	<script src="manager/js/jquery-migrate-1.2.1.min.js"></script>	
		<script src="manager/js/jquery-ui-1.10.3.custom.min.js"></script>	
		<script src="manager/js/jquery.ui.touch-punch.js"></script>	
		<script src="manager/js/modernizr.js"></script>	
		<script src="manager/js/bootstrap.min.js"></script>	
		<script src="manager/js/jquery.cookie.js"></script>	
		<script src='manager/js/fullcalendar.min.js'></script>	
		<script src='manager/js/jquery.dataTables.min.js'></script>
		<script src="manager/js/excanvas.js"></script>
	<script src="manager/js/jquery.flot.js"></script>
	<script src="manager/js/jquery.flot.pie.js"></script>
	<script src="manager/js/jquery.flot.stack.js"></script>
	<script src="manager/js/jquery.flot.resize.min.js"></script>
	<script src="manager/js/jquery.flot.time.js"></script>
		
		<script src="manager/js/jquery.chosen.min.js"></script>	
		<script src="manager/js/jquery.uniform.min.js"></script>		
		<script src="manager/js/jquery.cleditor.min.js"></script>	
		<script src="manager/js/jquery.noty.js"></script>	
		<script src="manager/js/jquery.elfinder.min.js"></script>	
		<script src="manager/js/jquery.raty.min.js"></script>	
		<script src="manager/js/jquery.iphone.toggle.js"></script>	
		<script src="manager/js/jquery.uploadify-3.1.min.js"></script>	
		<script src="manager/js/jquery.gritter.min.js"></script>	
		<script src="manager/js/jquery.imagesloaded.js"></script>	
		<script src="manager/js/jquery.masonry.min.js"></script>	
		<script src="manager/js/jquery.knob.modified.js"></script>	
		<script src="manager/js/jquery.sparkline.min.js"></script>	
		<script src="manager/js/counter.min.js"></script>	
		<script src="manager/js/raphael.2.1.0.min.js"></script>
	<script src="manager/js/justgage.1.0.1.min.js"></script>	
		<script src="manager/js/jquery.autosize.min.js"></script>	
		<script src="manager/js/retina.js"></script>
		<script src="manager/js/jquery.placeholder.min.js"></script>
		<script src="manager/js/wizard.min.js"></script>
		<script src="manager/js/core.min.js"></script>	
		<script src="manager/js/charts.min.js"></script>	
		<script src="manager/js/custom.min.js"></script>
	<!-- end: JavaScript-->

</body>
</html>