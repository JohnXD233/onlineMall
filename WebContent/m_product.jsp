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
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="manager/ico/apple-touch-icon-144-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="manager/ico/apple-touch-icon-114-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="manager/ico/apple-touch-icon-72-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" href="manager/ico/apple-touch-icon-57-precomposed.png" />
	<link rel="shortcut icon" href="manager/ico/favicon.png" />
	<!-- end: Favicon and Touch Icons -->	
		
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

<body>
<hr>
<div class="row-fluid">
				
				<div class="box span12">
					<div class="box-header">
						<h2><i class="icon-edit"></i>Product Operation</h2>
						<div class="box-icon" style="float:left;margin-left:800px;">
							<a href="#" class="btn-setting"><i class="icon-wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<div id="MyWizard" class="wizard">
							<ul class="steps">
								<li data-target="#step1" class="active"><span class="badge badge-info">1</span></li>
								<li data-target="#step2"><span class="badge">2</span></li>
								<li data-target="#step3"><span class="badge">3</span></li>
								<li data-target="#step4"><span class="badge">4</span></li>
								<li data-target="#step5"><span class="badge">5</span></li>
							</ul>
							<div class="actions" style="float:left;margin-left:300px;">
								<button type="button" class="btn btn-prev"> <i class="icon-arrow-left"></i> Prev</button>
								<button type="button" class="btn btn-success btn-next" data-last="Finish">Next <i class="icon-arrow-right"></i></button>
							</div>
						</div>
                        
						<div class="step-content">
                        
							<div class="step-pane active" id="step1">
								<h3 style="color:#39C">Add Product</h3>
								<form class="form-horizontal" enctype="multipart/form-data" action="managerServlet?oper=addProduct">
									<fieldset>	
										<div class="control-group warning">
											<label class="control-label" for="pname">Product Name</label>
											<div class="controls">
									  			<input type="text" id="pname">
									  			<span class="help-inline"></span>
											</div>
								  		</div>
								  		<div class="control-group error">
											<label class="control-label" for="priceinmarket">Product RealPrice</label>
											<div class="controls">
									  			<input type="text" id="priceinmarket">
									  			<span class="help-inline">原价</span>
											</div>
                                            <div class="control-group error">
											<label class="control-label" for="priceinmall">Price For Discount</label>
											<div class="controls">
									  			<input type="text" id="priceinmall">
									  			<span class="help-inline">现价</span>
											</div>
								  		</div>
                                        
                                        <div class="control-group">
							  <label class="control-label" for="picture">Image File input</label>
							  <div class="controls">
								<div class="uploader" id="uniform-fileInput"><input class="input-file uniform_on" id="picture" type="file"><span class="filename" style="user-select: none;">No file selected</span><span class="action" style="user-select: none;">Choose File</span></div>
							  </div>
							</div>
                            
							  </div>
                              
							  		  <div class="control-group success">
											<label class="control-label" for="clickcount">Click Count</label>
											<div class="controls">
									  			<input type="text" id="clickcount">
									  			<span class="help-inline">Woohoo!</span>
											</div>
								  		</div>
                                        
                                        <div class="control-group">
								<label class="control-label" for="classtwoid">ClassTwo Id</label>
								<div class="controls">
								  <select id="classtwoid">
									<option value="1">tuxedo-packages
									</option>
                                    <option value="2">blue-tuxedos</option>
                                    <option value="3">grey-tuxedos</option>
                                    <option value="4">white-tuxedos
									</option><option value="5">other-color-tuxedos
								  </option><option value="6">slim-fit-tuxedos
								  </option><option value="7">designer-tuxedos
								  </option><option value="8">dinner-jackets
								  </option><option value="9">black-tuxedos
								  </option></select>
								</div>
							  </div>
                                        
                                      <div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Product Description</label>
							  <div class="controls">
								<div class="cleditorMain" style="width: 500px; height: 250px;"><div class="cleditorToolbar" style=" display:none;height: 53px;"><div class="cleditorGroup"><div class="cleditorButton" title="Bold"></div><div class="cleditorButton" title="Italic" style="background-position: -24px center;"></div><div class="cleditorButton" title="Underline" style="background-position: -48px center;"></div><div class="cleditorButton" title="Strikethrough" style="background-position: -72px center;"></div><div class="cleditorButton" title="Subscript" style="background-position: -96px center;"></div><div class="cleditorButton" title="Superscript" style="background-position: -120px center; background-color: transparent;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton" title="Font" style="background-position: -144px center;"></div><div class="cleditorButton" title="Font Size" style="background-position: -168px center;"></div><div class="cleditorButton" title="Style" style="background-position: -192px center;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton" title="Font Color" style="background-position: -216px center;"></div><div class="cleditorButton" title="Text Highlight Color" style="background-position: -240px center;"></div><div class="cleditorButton cleditorDisabled" title="Remove Formatting" disabled="disabled" style="background-position: -264px center; background-color: transparent;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton" title="Bullets" style="background-position: -288px center;"></div><div class="cleditorButton" title="Numbering" style="background-position: -312px center;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton" title="Outdent" style="background-position: -336px center;"></div><div class="cleditorButton" title="Indent" style="background-position: -360px center;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton" title="Align Text Left" style="background-position: -384px center; background-color: transparent;"></div><div class="cleditorButton" title="Center" style="background-position: -408px center;"></div><div class="cleditorButton" title="Align Text Right" style="background-position: -432px center;"></div><div class="cleditorButton" title="Justify" style="background-position: -456px center;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton cleditorDisabled" title="Undo" disabled="disabled" style="background-position: -480px center;"></div><div class="cleditorButton cleditorDisabled" title="Redo" disabled="disabled" style="background-position: -504px center;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton" title="Insert Horizontal Rule" style="background-position: -528px center;"></div><div class="cleditorButton" title="Insert Image" style="background-position: -552px center;"></div><div class="cleditorButton" title="Insert Hyperlink" style="background-position: -576px center; background-color: transparent;"></div><div class="cleditorButton cleditorDisabled" title="Remove Hyperlink" disabled="disabled" style="background-position: -600px center;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton cleditorDisabled" title="Cut" disabled="disabled" style="background-position: -624px center;"></div><div class="cleditorButton cleditorDisabled" title="Copy" disabled="disabled" style="background-position: -648px center;"></div><div class="cleditorButton cleditorDisabled" title="Paste" disabled="disabled" style="background-position: -672px center; background-color: transparent;"></div><div class="cleditorButton" title="Paste as Text" style="background-position: -696px center;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton" title="Print" style="background-position: -720px center;"></div><div class="cleditorButton" title="Show Source" style="background-position: -744px center; background-color: transparent;"></div></div></div><textarea class="cleditor" id="textarea2" rows="3" style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 197px; display: none; width: 500px;"></textarea><iframe frameborder="0" src="javascript:true;" style="width: 500px; height: 197px;"></iframe></div>
							  </div>
							</div>
								 <div class="form-actions">
								<input type="submit" class="btn btn-primary" value="Save changes">
								<input class="btn" value="Cancel" type="reset">
							  </div>
									</fieldset>
								</form>
							</div>
                            
							<div class="step-pane" id="step2">
								<h3 style="color:#39C">Delete Product</h3>
								<form class="form-horizontal" action="managerServlet?oper=delProduct">
									<fieldset>	
										<div class="control-group">
											<label class="control-label" for="pid">Product ID</label>
											<div class="controls">
									  			<input type="text" id="pid">
											</div>
								  		</div>
								  		
								  		<div class="form-actions">
								<input type="submit" class="btn btn-primary" value="Save changes">
								<input class="btn" value="Cancel" type="reset">
							  </div>
									</fieldset>
								</form>
							</div>
							<div class="step-pane" id="step3">
								<h3 style="color:#39C">Alter Product</h3>
								
								<form class="form-horizontal" enctype="multipart/form-data" action="managerServlet?oper=altProduct">
									<fieldset>	
										<div class="control-group warning">
											<label class="control-label" for="pname">Product Name</label>
											<div class="controls">
									  			<input type="text" id="pname">
									  			<span class="help-inline"></span>
											</div>
								  		</div>
								  		<div class="control-group error">
											<label class="control-label" for="priceinmarket">Product RealPrice</label>
											<div class="controls">
									  			<input type="text" id="priceinmarket">
									  			<span class="help-inline">原价</span>
											</div>
                                            <div class="control-group error">
											<label class="control-label" for="priceinmall">Price For Discount</label>
											<div class="controls">
									  			<input type="text" id="priceinmall">
									  			<span class="help-inline">现价</span>
											</div>
								  		</div>
                                        
                                        <div class="control-group">
							  <label class="control-label" for="picture">Image File input</label>
							  <div class="controls">
								<div class="uploader" id="uniform-fileInput"><input class="input-file uniform_on" id="picture" type="file"><span class="filename" style="user-select: none;">No file selected</span><span class="action" style="user-select: none;">Choose File</span></div>
							  </div>
							</div>
                            
							  </div>
                              
							  		  <div class="control-group success">
											<label class="control-label" for="clickcount">Click Count</label>
											<div class="controls">
									  			<input type="text" id="clickcount">
									  			<span class="help-inline">Woohoo!</span>
											</div>
								  		</div>
                                        
                                        <div class="control-group">
								<label class="control-label" for="classtwoid">ClassTwo Id</label>
								<div class="controls">
								  <select id="classtwoid">
									<option value="1">tuxedo-packages
									</option>
                                    <option value="2">blue-tuxedos</option>
                                    <option value="3">grey-tuxedos</option>
                                    <option value="4">white-tuxedos
									</option><option value="5">other-color-tuxedos
								  </option><option value="6">slim-fit-tuxedos
								  </option><option value="7">designer-tuxedos
								  </option><option value="8">dinner-jackets
								  </option><option value="9">black-tuxedos
								  </option></select>
								</div>
							  </div>
                                        
                                      <div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Product Description</label>
							  <div class="controls">
								<div class="cleditorMain" style="width: 500px; height: 250px;"><div class="cleditorToolbar" style=" display:none;height: 53px;"><div class="cleditorGroup"><div class="cleditorButton" title="Bold"></div><div class="cleditorButton" title="Italic" style="background-position: -24px center;"></div><div class="cleditorButton" title="Underline" style="background-position: -48px center;"></div><div class="cleditorButton" title="Strikethrough" style="background-position: -72px center;"></div><div class="cleditorButton" title="Subscript" style="background-position: -96px center;"></div><div class="cleditorButton" title="Superscript" style="background-position: -120px center; background-color: transparent;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton" title="Font" style="background-position: -144px center;"></div><div class="cleditorButton" title="Font Size" style="background-position: -168px center;"></div><div class="cleditorButton" title="Style" style="background-position: -192px center;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton" title="Font Color" style="background-position: -216px center;"></div><div class="cleditorButton" title="Text Highlight Color" style="background-position: -240px center;"></div><div class="cleditorButton cleditorDisabled" title="Remove Formatting" disabled="disabled" style="background-position: -264px center; background-color: transparent;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton" title="Bullets" style="background-position: -288px center;"></div><div class="cleditorButton" title="Numbering" style="background-position: -312px center;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton" title="Outdent" style="background-position: -336px center;"></div><div class="cleditorButton" title="Indent" style="background-position: -360px center;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton" title="Align Text Left" style="background-position: -384px center; background-color: transparent;"></div><div class="cleditorButton" title="Center" style="background-position: -408px center;"></div><div class="cleditorButton" title="Align Text Right" style="background-position: -432px center;"></div><div class="cleditorButton" title="Justify" style="background-position: -456px center;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton cleditorDisabled" title="Undo" disabled="disabled" style="background-position: -480px center;"></div><div class="cleditorButton cleditorDisabled" title="Redo" disabled="disabled" style="background-position: -504px center;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton" title="Insert Horizontal Rule" style="background-position: -528px center;"></div><div class="cleditorButton" title="Insert Image" style="background-position: -552px center;"></div><div class="cleditorButton" title="Insert Hyperlink" style="background-position: -576px center; background-color: transparent;"></div><div class="cleditorButton cleditorDisabled" title="Remove Hyperlink" disabled="disabled" style="background-position: -600px center;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton cleditorDisabled" title="Cut" disabled="disabled" style="background-position: -624px center;"></div><div class="cleditorButton cleditorDisabled" title="Copy" disabled="disabled" style="background-position: -648px center;"></div><div class="cleditorButton cleditorDisabled" title="Paste" disabled="disabled" style="background-position: -672px center; background-color: transparent;"></div><div class="cleditorButton" title="Paste as Text" style="background-position: -696px center;"></div><div class="cleditorDivider"></div></div><div class="cleditorGroup"><div class="cleditorButton" title="Print" style="background-position: -720px center;"></div><div class="cleditorButton" title="Show Source" style="background-position: -744px center; background-color: transparent;"></div></div></div><textarea class="cleditor" id="textarea2" rows="3" style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 197px; display: none; width: 500px;"></textarea><iframe frameborder="0" src="javascript:true;" style="width: 500px; height: 197px;"></iframe></div>
							  </div>
							</div>
								 <div class="form-actions">
								<input type="submit" class="btn btn-primary" value="Save changes">
								<input class="btn" value="Cancel" type="reset">
							  </div>
									</fieldset>
								</form>
							
								
							</div>
							<div class="step-pane" id="step4">
								<div class="alert alert-info">
									<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Heads up!</strong> This alert needs your attention, but it's not super important.
								</div>
								<p>
									Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.
								</p>
								<div class="controls">
								  <label class="checkbox inline">
									<div class="checker" id="uniform-inlineCheckbox2"><span><input type="checkbox" id="inlineCheckbox2" value="option5"></span></div> I agree
								  </label>
								</div>	
							</div>
							<div class="step-pane" id="step5">
								<form class="form-horizontal">
									<fieldset>

										<div class="control-group">
								     		<label class="control-label">Fullname:</label>
											<div class="controls">
												<span class="input-xlarge uneditable-input">Łukasz Holeczek</span>
											</div>
										</div>
										<div class="control-group">
								      		<label class="control-label">Email:</label>
								     		<div class="controls">
								          		<span class="input-xlarge uneditable-input">lukasz[@]clabs[dot].com</span>
								  			</div>
										</div>
								        <div class="control-group">
											<label class="control-label">Phone:</label>
								            <div class="controls">
												<span class="input-xlarge uneditable-input">+48 123 456 789</span>
								     		</div>
								   		</div>
								   		<div class="control-group">
								        	<label class="control-label"></label>
								           	<div class="controls">
								     			<label class="checkbox">
								           			<div class="checker"><span><input type="checkbox" value=""></span></div> I confirm this information
								             	</label>
								 			</div>
								       	</div>
									</fieldset>
								</form>	
							</div>

						</div>
					
					</div>
					
				</div><!--/span-->

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