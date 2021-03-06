<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
	<head>
	  <!-- Site made with Mobirise Website Builder v5.2.0, https://mobirise.com -->
	  <meta charset="UTF-8">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta name="generator" content="Mobirise v5.2.0, mobirise.com">
	  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
	  <link rel="shortcut icon" href="<%=application.getContextPath()%>/resources/assets/images/mbr-96x48.png" type="image/x-icon">
	  <meta name="description" content="Web Page Generator Description">
	  
	  <title>my page</title>
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons2/mobirise2.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons/mobirise-icons.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap.min.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-grid.min.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-reboot.min.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/tether/tether.min.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/datatables/data-tables.bootstrap4.min.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/dropdown/css/style.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/socicon/css/styles.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/theme/css/style.css">
	  <link rel="preload" as="style" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css" type="text/css">
	  
	  
	</head>
	<body>
	
		<jsp:include page="/WEB-INF/views/include/userEditheader.jsp" />
	
		<section
			class="testimonails3 carousel slide testimonials-slider cid-sh9WSPbYRc"
			data-interval="false" id="testimonials3-1e">
			<div class="text-center container-fluid">
				<h3 class="mb-4 mbr-fonts-style display-2">
					<strong style="color: #ffc800;">회원정보수정</strong><br />
					<br />
				</h3>
				<div class="carousel slide" role="listbox" data-pause="true"
					data-keyboard="false" data-ride="false" data-interval="false">
					<div class="carousel-inner">
						<div class="carousel-item">
							<div class="user col-md-8">
								<div class="user_image">
									<img class="rounded-circle" style="border: 4px solid #ffc800;" src="<%=application.getContextPath()%>/mypage/myphotoDownload">
								</div>
								<div class="user_text mb-4">
									<p class="mbr-fonts-style display-5" style="color: #ffc800;">${memberInfo.mnick}</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	
		<div class="row justify-content-center mt-4">
			<div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
				<form  action="<%=application.getContextPath()%>/mypage/userUpdate" method="POST"  enctype="multipart/form-data" class="mbr-form form-with-styler" id="editform">
					
					<div class="dragArea row" style="margin: 5px">
						<div class="col-md-12 input-group">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">아 이 디</span> 
							<input type="text" id="mid" name="mid" class="form-control" value="${memberInfo.mid}" readonly/>
							<input id="mtype" name="mtype" type="hidden" value="${memberInfo.mtype}"/>
						</div>
						
						<div class="col-md-12 input-group" data-for="mpw">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">비밀번호</span> 
							<input type="password" id="mpw" name="mpw" class="form-control" value="${memberInfo.mpw}"/>
						</div>
						<div class="col-md-12 input-group" data-for="mname">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">이  름</span> 
							<input type="text" id="mname" name="mname" class="form-control" value="${memberInfo.mname}"/>
						</div>
						<div class="col-md-12 input-group" data-for="mnick">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">닉  네  임</span>
							<input type="text" id="mnick" name="mnick" class="form-control" value="${memberInfo.mnick}"/> 
						</div>
						<div class="col-md-12 input-group" data-for="mtel">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">전화번호</span>  
							<input type="text" id="mtel" name="mtel" class="form-control" value="${memberInfo.mtel}"/>
						</div>
						<div class="col-md-12 input-group" data-for="memail">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">이메일</span>
							<input type="text" id="memail" name="memail" class="form-control" value="${memberInfo.memail}"/>
						</div>
	
				<!-- 		<div class="col-md-12 input-group" data-for="mphotoAttach">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">이미지 선택</span>
                 	
							<input type="file" id="mphotoAttach" name="mphotoAttach" class="form-control" onchange="loadFile(event)"/>
               				<img  class="rounded-circle" id="id_mphoto" class="max-small" border="0" />
                  		</div>
	 			-->
	
	
	
						<div class="col-md-12 input-group" data-for="mphotoAttach">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">이미지 선택</span>
							<input type="file" id="mphotoAttach" name="mphotoAttach" class="form-control" value="${memberInfo.mpro_img}" onchange="loadFile(event)"/>
						</div>
											
						<div class="col-md-12 input-group" data-for="mphoto">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">프로필 이미지</span>
							<img  class="rounded-circle" id="id_mphoto" class="max-small" border="0" src="<%=application.getContextPath()%>/mypage/myphotoDownload"/>
						</div>
						<sec:authorize access="hasRole('ROLE_TUTOR')">
							<div class="col-md-12 input-group">
								<span class="input-group-text" style="width: 120px; background-color: #ffff;">강사소개</span>
								<textarea id="minfo" name="minfo" class="form-control" style="height: 200px;">${memberInfo.minfo}</textarea>
							</div>
						</sec:authorize>
						
					</div>
					
					<div style="height: 60px;"></div>
					<div class="col-lg-12 col-md-12 col-sm-12 align-center mbr-section-btn">
						<sec:authorize access="hasRole('ROLE_USER')">
							<input type="submit" class="btn item-btn btn-success display-7 text-primary" style="margin: 10px;" value="수정완료"/>
							<input type="reset" class="btn item-btn btn-success display-7 text-primary" style="margin: 10px;" value="취소"/>
							<%-- <a class="btn item-btn btn-success display-7 text-primary" style="margin: 10px; background-color: #ffc800;"
								href="mypage_user?mid=${sessionMid}">취소</a> --%>
						</sec:authorize>
						<sec:authorize access="hasRole('ROLE_TUTOR')">
							<input type="submit" class="btn item-btn btn-success display-7 text-primary" style="margin: 10px;" value="수정완료"/>
							<input type="reset" class="btn item-btn btn-success display-7 text-primary" style="margin: 10px;" value="취소"/>
							<%-- <a class="btn item-btn btn-success display-7 text-primary" style="margin: 10px; background-color: #ffc800;"
								href="mypage_tutor?mid=${sessionMid}">취소</a> --%>
						</sec:authorize>
					</div>
				</form>
	           	<script>
					var loadFile = function(event) {
						var output = document.getElementById("id_mphoto");
						output.src = URL.createObjectURL(event.target.files[0]);						
					};
	       		
	   			</script>
				
				<div style="height: 100px;"></div>
			</div>
		</div>
	
		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	
	
		<script
			src="<%=application.getContextPath()%>/resources/assets/web/assets/jquery/jquery.min.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/popper/popper.min.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/bootstrap/js/bootstrap.min.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/tether/tether.min.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/smoothscroll/smooth-scroll.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/dropdown/js/nav-dropdown.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/dropdown/js/navbar-dropdown.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/touchswipe/jquery.touch-swipe.min.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/parallax/jarallax.min.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/masonry/masonry.pkgd.min.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/imagesloaded/imagesloaded.pkgd.min.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/bootstrapcarouselswipe/bootstrap-carousel-swipe.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/vimeoplayer/jquery.mb.vimeo_player.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/theme/js/script.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/gallery/player.min.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/gallery/script.js"></script>
		<script
			src="<%=application.getContextPath()%>/resources/assets/slidervideo/script.js"></script>
	</body>
	<style>
	#id_mphoto{
		max-width: 120px;
		height: 120px;
		border: 2px solid #ffff;
	}
	</style>
</html>