<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="menu cid-shfokUU9e4" once="menu" id="menu1-3q">
    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="<%=application.getContextPath()%>">
                         <img src="<%=application.getContextPath()%>/resources/assets/images/mbr-96x48.png" alt="Mobirise" style="height: 3.8rem;">
                    </a>
                </span>
                <span class="navbar-caption-wrap">
               		<a class="navbar-caption text-white text-primary display-5" href="<%=application.getContextPath()%>">
                    BAN숙</a>
                </span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true">
            	<li class="nav-item">
                    <a class="nav-link link text-white text-primary display-4" href="<%=application.getContextPath()%>/cart">
                    	<span class="mobi-mbri mobi-mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>
                         Cart
                     </a>
                </li>
                <li class="nav-item">
              		<c:if test="${sessionMid == null}">
              			<a class="nav-link link text-white text-primary display-4" href="<%=application.getContextPath()%>/login/login">
	                    	<!-- <span class="mobi-mbri mobi-mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span> -->
	                         Login
                     	</a>
                	</c:if>
                	<c:if test="${sessionMid != null}"> 
	                	<a class="nav-link link text-white dropdown-toggle display-4" href="#" data-toggle="dropdown-submenu" aria-expanded="false">
	                		<span class="mobi-mbri mobi-mbri-user-2 mbr-iconfont mbr-iconfont-btn"></span>
	                        UserName
	                    </a>
	                    <div class="dropdown-menu">
	                  		<a class="text-white dropdown-item display-4" href="<%=application.getContextPath()%>/mypage/mypage_user">My Page</a>
	                  		<a class="text-white dropdown-item display-4" href="https://mobiri.se">Logout</a>
	                  	</div>
	                 </c:if>
                 </li>
                <li class="nav-item dropdown">
                    <a class="nav-link link dropdown-toggle text-white display-4" href="#" data-toggle="dropdown-submenu" aria-expanded="false">
                    	<span class="mobi-mbri mobi-mbri-menu mbr-iconfont mbr-iconfont-btn"></span>
                    </a>
                    <div class="dropdown-menu">
                    	<a class="dropdown-item text-white text-primary display-4" href="<%=application.getContextPath()%>">Home</a>
                    	<a class="dropdown-item text-white text-primary display-4" href="<%=request.getContextPath()%>/community">Community</a>
                    	<a class="dropdown-item text-white text-primary display-4" href="<%=request.getContextPath()%>/event">Event</a>
                    </div>
                </li>
             </ul>
            
        </div>
    </nav>
</section>
<header class="header dark-bg">
	<div class="toggle-nav">
		<div class="icon-reorder tooltips"
			data-original-title="Toggle Navigation" data-placement="bottom">
			<span style="color: black;"></span> <i class="icon_menu"></i>
		</div>
	</div>
	<a href="<%=application.getContextPath()%>" class="logo">BAN<span class="lite">숙</span>
		<img  class="mb-3" width="50px" height="50px" src="<%=application.getContextPath()%>/resources/images/logoegg_line.png">
	</a>

	<div class="top-nav notification-row">
		<ul class="nav pull-right top-menu">

			<li id="task_notificatoin_bar" class="dropdown"> 
				<a href="<%=application.getContextPath()%>/cart">
					<i class="icon-cart"></i> <span class="badge bg-important">6</span>
				</a>
			</li>

			<c:if test="${sessionMid == null}">
				<li class="dropdown"> 
					<a href="<%=application.getContextPath()%>/login/login"  class="dropdown-toggle" > 
 						<span class="text-white">Login</span> 
 					</a> 
 				</li>
			</c:if> 
			
			<c:if test="${sessionMid != null}"> 
				<li class="dropdown">
					<a data-toggle="dropdown" class="dropdown-toggle" > 
						<span class="profile-ava">
							<img alt="" width="36px" height="36px" src="<%=application.getContextPath()%>/resources/images/loppy.png">
						</span> 
						<span class="username">닉네임</span> 
						<b class="caret"></b>
					</a>
					<div class="log-arrow-up">
					<ul class="dropdown-menu extended logout">
						
						<li class="eborder-top"><a href="<%=application.getContextPath()%>/mypage/mypage_user"><i class="icon_profile"></i> MyPage</a></li>
						<li><a href="<%=application.getContextPath()%>/"><i class="icon_key_alt"></i> LogOut</a></li>
						
					</ul>
					</div>
				</li>
			</c:if>
			
		</ul>
	</div>
</header>