<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="container container-table mt-5">
	<div class="table-wrapper">

		<div class="container scroll">

			<div>
				<table class="table table-bordered">
				<colgroup>
				    <col width="15%">
				    <col width="35%">
				    <col width="15%">
				    <col width="*">
				</colgroup>
				<tbody>
				
				    <tr>
				        <th>카테고리</th>
				        <td>${communityDetail.comm_cate_nm}</td>
				        <th>닉네임</th>
				        <td>${communityDetail.mnick}</td>
				    </tr>
				   
					<tr>
						<th>제목</th>
				        <td>${communityDetail.comm_title}</td>
				        <th>조회수</th>
				        <td>${communityDetail.comm_hitno}</td>
					</tr>
				    <tr>
				        <th>내용</th>
				        <td colspan="3">${communityDetail.comm_content}</td>
				        
				    </tr>
					</tbody>
				</table>
				
				<br/>
				<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="community">목록</a>		
			</div>
		
		</div>
		
		<div class="container table-info-container"></div>
	</div>
</div>