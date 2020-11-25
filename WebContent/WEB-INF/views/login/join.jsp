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
    
    
    <div class="container">
        <div class="mbr-section-head">
            <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2"><strong>JOIN</strong></h3>
            
        </div>
        <div class="row justify-content-center mt-4">
            <div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
                <form action="https://mobirise.eu/" method="POST" class="mbr-form form-with-styler" data-form-title="Form Name"><input type="hidden" name="email" data-form-email="true" value="YRLmS4KZ0lm+LGcWpuQxcNhFGHeSKkKc9ZhO4WBjl2aHqN64gamoCJiP4CGbZwZQuGVoS64mN03L7afuau3fpLE5TrAgTCYwLjHR3mHg4eWPPiHA+XM1HRhhv7MbytXn">
                    <div class="">
                        <div hidden="hidden" data-form-alert="" class="alert alert-success col-12">Thanks for filling out
                            the form!</div>
                        <div hidden="hidden" data-form-alert-danger="" class="alert alert-danger col-12">Oops...! some
                            problem!</div>
                    </div>
                    <div class="dragArea row">
                    	
                        <div class="col-md-12 input-group" data-for="mid">
                    		<span class="input-group-addon" style="width:80px;">아 이 디</span>
                          	<input type="text" name="mid" placeholder="ID" data-form-field="mid" class="form-control" value="" id="id-form5-29">
                        </div>
                        <div class="col-md-12 input-group" data-for="mpw">
                    		<span class="input-group-addon" style="width:80px;">비 밀 번 호 </span>
                          	<input type="password" name="mpw" placeholder="PASSWORD" data-form-field="mpw" class="form-control" value="" id="password-form5-29">
                        </div>
                        <div class="col-md-12 input-group" data-for="mname">
                    		<span class="input-group-addon" style="width:80px;">이 름</span>
                          	<input type="text" name="mname" placeholder="NAME" data-form-field="mname" class="form-control" value="" id="name-form5-29">
                        </div>
                        <div class="col-md-12 input-group" data-for="mnick">
                    		<span class="input-group-addon" style="width:80px;">닉 네 임 </span>
                          	<input type="password" name="mpw" placeholder="NICKNAME" data-form-field="mnick" class="form-control" value="" id="nickname-form5-29">
                        </div>
                        <div class="col-md-12 input-group" data-for="mtel">
                    		<span class="input-group-addon" style="width:80px;">핸드폰번호</span>
                          	<input type="text" name="mtel" placeholder="010-xxxx-xxxx" data-form-field="mtel" class="form-control" value="" id="tel-form5-29">
                        </div>
                        <div class="col-md-12 input-group" data-for="memail">
                    		<span class="input-group-addon" style="width:80px;">이 메 일</span>
                          	<input type="text" name="mtel" placeholder="xxx@xxxx.xxx" data-form-field="memail" class="form-control" value="" id="email-form5-29">
                        </div>
                        <div class="col-md-12 input-group" data-for="mtype">
                        	 <span class="input-group-addon" style="width:80px;">가입유형</span>  
                        	<%--            	
							<select id="mtype" name="mtype" >
								<!-- <option value="ROLE_ADMIN">관리자</option> -->
								<option value="ROLE_TUTOR">강사</option>
								<option value="ROLE_USER" selected>수강생</option>
							</select>
							
							<a class="btn btn-info" href="javascript:fun2()">폼요청</a>
							<script>
									function fun2() {
										$.ajax({
											url:"join2",
											success: function(data){
												$("#fun2_result").html(data);
											}
										});
									}
								</script>
								<div id="fun2_result"></div>
							
								<form:form modelAttribute="MemberDto">	  <!-- 기본전송방식: post -->
									회원종류: <form:select path="mtype" items="${typeList}"/>
									 <br/>
	 							</form:form> --%>
	 						
                        </div>
              
                        <div class="col-md-12 input-group" data-for="mphotoAttach">
							<span class="input-group-addon" style="width:80px;">프로필사진</span>     
							<input type="file" name="mphotoAttach" class="form-control">
						</div>
						
                        <div class="col-lg-12 col-md-12 col-sm-12 align-center mbr-section-btn"><button type="submit" class="btn btn-success display-4">JOIN</button></div>
                    </div>
                </form>
            </div>
            
            <div class="text-right">
				<div class="credits">
					copyright 2020 TEAM1 All right reserved. &nbsp;
				</div>
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
</body>
</html>