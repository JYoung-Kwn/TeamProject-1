<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>	
	<head>
		<meta charset="utf-8">
		<title>TEAM1 Login</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
		<meta name="author" content="GeeksLabs">
		<meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
		<link rel="shortcut icon" href="img/favicon.png"> 
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link href="<%=application.getContextPath()%>/resources/css/bootstrap-theme.css" rel="stylesheet">
		<!--external css-->
		<!-- font icon -->
		<link href="<%=application.getContextPath()%>/resources/css/elegant-icons-style.css" rel="stylesheet" />
		<link href="<%=application.getContextPath()%>/resources/css/font-awesome.min.css" rel="stylesheet" /> 
		<!-- Custom styles -->
		<link href="<%=application.getContextPath()%>/resources/css/style.css" rel="stylesheet"> 
		<link href="<%=application.getContextPath()%>/resources/css/style-responsive.css" rel="stylesheet"> 

	</head>
	
	<body class="login-img3-body">
	
		<div class="container">
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
			<div>
				<form class="login-form" action="join">
					<div class="login-wrap">
						<p class="login-img">
							<i class="icon-pen"></i>
						</p>
						<div class="input-group">
							<span class="input-group-addon"><i class="icon_profile"></i>이름</span>
							<input type="text" class="form-control" placeholder="김미영" autofocus>
						</div>
						<div class="input-group">
							<span class="input-group-addon"><i class="icon-envelope-l"></i>이메일</span>
							<input type="text" class="form-control" placeholder="xxx@xxxx.xxx">
						</div>
						<div class="input-group">
							<span class="input-group-addon"><i class="icon_key_alt"></i>비밀번호</span>
							<input type="password" class="form-control" placeholder="비밀번호">
						</div>
						
						<%-- <form method="post" action="typeuser">
							사용자 유형: 
						</form>
						 --%>
						<select id="mtypeuser" name="mtypeuser" style="width:100%">
							<option>----가입 유형을 입력하세요----</option>
							<option value="수강생">수강생</option>
							<option value="강사">강사</option>						
						</select>
						
					</div>
					
					<button class="btn btn-info btn-lg btn-block " type="submit" autofocus >Sign up</button>
				</form>
				<div class="text-right">
					<div class="credits">
						copyright 2020 TEAM1 All right reserved. &nbsp;
					</div>
				</div>
			</div>
		</div>
	
	
	</body>

</html>
