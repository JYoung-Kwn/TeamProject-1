<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 2020. 11. 30 --%>

<c:if test="${pick_yn == 0}">
	<a class="mbr-iconfont" href="javascript:pick(${listtype}, 1, ${class_no})">
		<img id="pickimg1" src="<%= request.getContextPath()%>/resources/images/blackheart.png"/>
	</a>
</c:if>
<c:if test="${pick_yn==1}">
	<a class="mbr-iconfont" href="javascript:pick(${listtype}, 2, ${class_no})">
		<img id="pickimg2" src="<%= request.getContextPath()%>/resources/images/redheart.png"/>
	</a>
</c:if>
