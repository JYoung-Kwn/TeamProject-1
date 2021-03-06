<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
                         <img src="<%=application.getContextPath()%>/resources/assets/images/mbr-96x48.png" alt="" style="height: 3.8rem;">
                    </a>
                </span>
                <span class="navbar-caption-wrap">
               		<a class="navbar-caption text-white text-primary display-5" href="<%=application.getContextPath()%>">
                    	BANSOOK  <span style="display: inline-block; font-size: 14px">Online Class</span> 
                    </a>
                </span>
            </div>
        </div>
       <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true">
            	<li class="nav-item">
            		<c:if test="${member.mtype != 'ROLE_TUTOR'}">
                    <a class="nav-link link text-white text-primary display-4" href="<%=application.getContextPath()%>/cart">
                    	<span class="mobi-mbri mobi-mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>
                         Cart
                     </a>
                     </c:if>
                </li>
                
                <sec:authorize access="isAnonymous()">
                	<li class="nav-item">
                   		<a class="nav-link link text-white text-primary display-4" href="<%=application.getContextPath()%>/login/login">
                         	Login
                     	</a>
                	</li>
                </sec:authorize>
                
                
                <sec:authorize access="isAuthenticated()"> 
	                <li class="nav-item dropdown">
		                	<a class="nav-link link text-white dropdown-toggle display-4" href="#" data-toggle="dropdown-submenu" aria-expanded="false">
		                		<span >
		                			<img class="rounded-circle" id="profile" src="<%=application.getContextPath()%>/mypage/myphotoDownload"/>
		                		</span>	         
		                      
		                        ${member.mnick}      
		                    </a>
		                  
		                    <div class="dropdown-menu">
		                    	<sec:authorize access="hasRole('ROLE_USER')">
		                  		<a class="text-white dropdown-item display-4" href="<%=application.getContextPath()%>/mypage/mypage_user">My Page</a>
		                  		</sec:authorize>
		                  		<sec:authorize access="hasAnyRole('ROLE_TUTOR')">
		                  		<a class="text-white dropdown-item display-4" href="<%=application.getContextPath()%>/mypage/mypage_tutor">강의 관리</a>
		                  		</sec:authorize>
		                  		<a class="text-white dropdown-item display-4" href="<%=application.getContextPath()%>/logout">Logout</a>
		                  	</div>
	                </li>
                </sec:authorize>
                 
                 
                 
                <li class="nav-item dropdown navbarver1">
                    <a class="nav-link link dropdown-toggle text-white display-4" href="#" data-toggle="dropdown-submenu" aria-expanded="false">
                    	<span class="mobi-mbri mobi-mbri-menu mbr-iconfont mbr-iconfont-btn"></span>
                    </a>
                    <div class="dropdown-menu">
                    	<a class="dropdown-item text-white text-primary display-4" href="<%=application.getContextPath()%>">Home</a>
                    	<a class="dropdown-item text-white text-primary display-4" href="<%=request.getContextPath()%>/allClass">All Class</a>
                    	<a class="dropdown-item text-white text-primary display-4" href="<%=request.getContextPath()%>/community">Community</a>
                    	<a class="dropdown-item text-white text-primary display-4" href="<%=request.getContextPath()%>/event">Event</a>
                    </div>
                </li>
                
                <li class="nav-item navbarver2">
                    <a class="nav-link link text-white text-primary display-4" href="<%=application.getContextPath()%>">Home</a>
                </li>
                <li class="nav-item navbarver2">
                   	<a class="nav-link link text-white text-primary display-4" href="<%=request.getContextPath()%>/allClass">All Class</a>
                </li>
                <li class="nav-item navbarver2">
                   	<a class="nav-link link text-white text-primary display-4" href="<%=request.getContextPath()%>/community">Community</a>
                </li>
                <li class="nav-item navbarver2">
                   	<a class="nav-link link text-white text-primary display-4" href="<%=request.getContextPath()%>/event">Event</a>
                </li>
                
                
             </ul>
            
        </div>
        
        
        
    </nav>
</section>
<style>
	#profile {
	  max-height: 50px;
	  width: 50px;
	  border: 2px solid #ffff;
	}
	
	.cid-shfokUU9e4 .navbar-toggleable-sm .navbar-collapse {
	    overflow: visible;
	}
	
	.navbarver2 {
		display: none;
	}
	
	@media (max-width: 1024px) {
		.navbarver1 {
			display: none;
		}
		.navbarver2 {
			display: block;
		} 
	}
	
	
	.navbar-short #profile {
		max-height: 40px; 
		width : 40px;
	  	border: 2px solid #ffff;
	}
</style>