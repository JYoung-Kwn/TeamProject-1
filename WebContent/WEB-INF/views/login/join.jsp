<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>TEAM1 Login</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description"
			content="Creative - Bootstrap 3 Responsive Admin Template">
		<meta name="author" content="GeeksLabs">
		<meta name="keyword"
			content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
		<link rel="shortcut icon" href="img/favicon.png">
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link
			href="<%=application.getContextPath()%>/resources/css/bootstrap-theme.css"
			rel="stylesheet">
		<!--external css-->
		<!-- font icon -->
		<link
			href="<%=application.getContextPath()%>/resources/css/elegant-icons-style.css"
			rel="stylesheet" />
		<link
			href="<%=application.getContextPath()%>/resources/css/font-awesome.min.css"
			rel="stylesheet" />
		<!-- Custom styles -->
		<link href="<%=application.getContextPath()%>/resources/css/style.css"
			rel="stylesheet">
		<link
			href="<%=application.getContextPath()%>/resources/css/style-responsive.css"
			rel="stylesheet">
	
	</head>
	
	<body class="login-img3-body">
	
		<div class="container">
			<div>
			<form class="login-form" action="join">
				<div class="login-wrap">
					<p class="login-img">
						<i class="icon_lock_alt"></i>
					</p>
					<div class="input-group">
						<span class="input-group-addon"><i class="icon_profile"></i></span>
						<input type="text" class="form-control" placeholder="Username"
							autofocus>
					</div>
					<div class="input-group">
						<span class="input-group-addon"><i class="icon_key_alt"></i></span>
						<input type="password" class="form-control" placeholder="Password">
					</div>
					
				</div>
			</form>
	
			</div>
		</div>
	
		<button class="btn btn-info btn-lg btn-block" type="submit" href="join">Signup</button>
	
	
		<div class="text-right">
			<div class="credits">copyright 2020 TEAM1 All right reserved.
				&nbsp;</div>
		
		</div>
	
	
	</body>

</html>
