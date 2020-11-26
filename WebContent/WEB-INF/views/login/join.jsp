<%@ page contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>
<html  >
<head>
  <!-- Site made with Mobirise Website Builder v5.2.0, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.2.0, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="<%=application.getContextPath()%>/resources/assets/images/mbr-96x48.png" type="image/x-icon">
  <meta name="description" content="Website Maker Description">
  
  
  <title>Join</title>
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons2/mobirise2.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/tether/tether.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/formstyler/jquery.formstyler.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/formstyler/jquery.formstyler.theme.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/datepicker/jquery.datetimepicker.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/theme/css/style.css">
  <link rel="preload" as="style" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css" type="text/css">
  
</head>
<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp"/>

	<section class="form5 cid-shav80V8Zk" id="form5-29">
	    
	    
	    <div class="container-fluid">
	        <div class="mbr-section-head">
	            <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2"><strong>JOIN</strong></h3>
	            
	        </div>
	        <div class="row justify-content-center mt-4">
	            <div class="col-md-10 mx-auto mbr-form" data-form-type="formoid">
	                <form action="<%=request.getContextPath() %>/login/join" method="POST" enctype="multipart/form-data" class="mbr-form form-with-styler" data-form-title="joinForm">
	                <input type="hidden" name="email" data-form-email="true" value="">
	                    <div class="dragArea row">
	                    	
	                        <div class="col-md-8 input-group" data-for="mid">
	                        
	                        	<div class="container-fluid">
	                        		<div class="row">
	                        			<div class="col-3">
		                        			<span class="input-group-addon" >
												<i class="icon_key_alt"></i>아 이 디
											</span> 
	                        			</div>
	                        			
	                        			<div class="col-6">
	                       					<input type="text" name="mid" placeholder="ID" class="form-control" value="" id="mid" data-form-field="mid">
	                        			</div>
	                        			
	                        			<div class="col-3">
	                        				<span class="input-group-addon" >
												<button type="submit">아이디 중복체크</button>
											</span> 
	                        			</div>
	                        			
	                        		</div>
	                        	
	                        	</div>
	                        	<div class="container-fluid">
	                        		<div class="row">
	                        			<div class="col-3">
				                    		<span class="input-group-addon">비 밀 번 호 </span>
	                        			</div>
	                        			<div class="col-9">
	                        				<input type="password" name="mpw" placeholder="PASSWORD" class="form-control" value="" id="mpw">
	                        			</div>
	                        		</div>
	                        	</div>
	                          	<div class="container-fluid">
	                        		<div class="row">
	                        			<div class="col-3">
	                    					<span class="input-group-addon" style="width:80px;">이 름</span>
	                        			</div>
	                        			<div class="col-9">
	                        				<input type="text" name="mname" placeholder="NAME"class="form-control" value="" id="mname">
	                        			</div>
	                        		</div>
	                        	</div>
	                        	
	                        	
	                        	<div class="container-fluid">
	                        		<div class="row">
	                        			<div class="col-3">
	                    					<span class="input-group-addon">닉 네 임 </span>
	                        			</div>
	                        			<div class="col-9">
	                       					<input type="text" name="mnick" placeholder="NICKNAME" class="form-control" value="" id="mnick">
	                        			</div>
	                        		</div>
	                        	</div>
	                        	<div class="container-fluid">
	                        		<div class="row">
	                        			<div class="col-3">
	                    					<label class="form-control-label" style="width:80px;">핸드폰번호</label>
	                        			</div>
	                        			<div class="col-9">
	                          				<input type="text" name="mtel" placeholder="010-xxxx-xxxx" data-form-field="mtel" class="form-control" value="" id="tel-form5-29">
	                        			</div>
	                        		</div>
	                        	</div>
	                        	<div class="container-fluid">
	                        		<div class="row">
	                        			<div class="col-3">
	                        			    <span class="form-control-label" style="width:80px;">이 메 일</span>
	                        			</div>
	                        			<div class="col-9">
	     				                	<input type="email" name="memail" placeholder="xxx@xxxx.xxx" data-form-field="memail" class="form-control" value="" id="email-form5-29">
	                        			</div>
	                        		</div>
	                        	</div>
	                        	<div class="container-fluid">
	                        		<div class="row" style="height: 56px;">
	                        			<div class="col-3">
	                        				<span class="input-group-addon" style="width:80px;">가입유형</span>   
	                        			</div>
	                        			<div class="col-9">
										    <label class="radio-inline">
										      <input type="radio" name="mtype" id="mtype" value="ROLE_USER"  > 일반 회원 
										    </label>
	                        				<label class="radio-inline">
										      <input type="radio" name="mtype" id="mtype" value="ROLE_TUTOR" checked> 강사
										    </label>
	                        			</div>
	                        		</div>
	                        	</div>
	                        	<div class="container-fluid">
	                        		<div class="row">
	                        			<div class="col-3">
											<span class="input-group-addon" style="width:80px;">프로필사진</span>     
	                        			</div>
	                        			<div class="col-9">
											<input type="file" name="mphotoAttach" class="form-control" onchange="loadFile(event)"/>
	                        				<img id="id_viewimg" class="max-small" border="0" />
	                        				
	                        				<script>
												var loadFile = function(event) {
													var output = document.getElementById('id_viewimg');
													output.src = URL.createObjectURL(event.target.files[0]);
													};
	                        				</script>
	                        			</div>
	                        		</div>
	                        	</div>
	                        	
	                        	<div class="container-fluid">
	                        		<div class="col-12 align-center mbr-section-btn">
	                        			<button type="submit" class="btn btn-success display-4">JOIN</button>
	                        		</div>
	                        	
	                        	</div>
	                        	
	                        </div>
	                        
	                     
	                        <div class="col-md-4">
		                        <div class="text-right">
									<div class="credits">
										copyright 2020 TEAM1 All right reserved. &nbsp;
									</div>
								</div>
	                        
	                        </div>
	       	
	                        
	                    </div>
	                </form>
	            </div>       
	        </div>
	    </div>
	</section>

 	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>

	
	 <script src="<%=application.getContextPath()%>/resources/assets/web/assets/jquery/jquery.min.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/popper/popper.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/bootstrap/js/bootstrap.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/tether/tether.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/smoothscroll/smooth-scroll.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/dropdown/js/nav-dropdown.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/dropdown/js/navbar-dropdown.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/touchswipe/jquery.touch-swipe.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/parallax/jarallax.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/masonry/masonry.pkgd.min.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/imagesloaded/imagesloaded.pkgd.min.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/bootstrapcarouselswipe/bootstrap-carousel-swipe.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/vimeoplayer/jquery.mb.vimeo_player.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/theme/js/script.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/gallery/player.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/gallery/script.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/slidervideo/script.js"></script>  
	 
	 
	 
	 
	 <style type="text/css">
  
	  	select {
	  		display:inline;
	  	}
	  	.col-9, .col-3 {
	  		line-height: 56px;
	  	}
	  	
		.max-small {
		    width: auto; height: auto;
		    max-width: 100px;
		    max-height: 100px;
		}

	  </style>
</body>
</html>