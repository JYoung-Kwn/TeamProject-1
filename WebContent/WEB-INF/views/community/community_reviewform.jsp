<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col-lg-8 mx-auto mbr-form mt-5" data-form-type="formoid">
	<form onsubmit="return communityWriteReview();" action="<%=request.getContextPath()%>/community/communityWriteReview" method="POST" class="mbr-form form-with-styler" data-form-title="Form Name">
		<div class="dragArea row" style="margin: 5px">
			<div class="col-md-12 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff;">강 의 선 택</span> 
				<select id="class_no" name="class_no" style="width: 65%;">
					<c:forEach var="reviewitem" items="${inclassList}">
						<option value="${reviewitem.class_no}" selected>${reviewitem.class_nm}</option>
					</c:forEach>
				</select>
			</div>
			
		</div>
		<div class="dragArea row" style="margin: 5px">
			<div class="col-md-12 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff;">후 기 별 점</span> 
				<select id="review_star" name="review_star" style="width: 65%;">
					<option value="1" >★☆☆☆☆</option>
					<option value="2" >★★☆☆☆</option>
					<option value="3" >★★★☆☆</option>
					<option value="4" >★★★★☆</option>
					<option value="5" selected>★★★★★</option>
				</select>
			</div>
		<%-- 	<div class="col-md-6 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff;">작 성 자</span> 
				<input type="text" id="mid" name="mid" class="form-control"
					<c:if test="${sessionMid!=null}">value="${sessionMid}"</c:if>
					
				readonly/>
			</div> --%>
		</div>
		<div class="dragArea row" style="margin: 5px;">
			<div class="col-md-12 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff;">제목 </span> 
				<input type="text" id="review_title" name="review_title" class="form-control"/>
				<span id="btitleError" class="error"></span>
			</div>
		</div>
		
		<div class="dragArea row" style="margin: 5px">
			<div class="col-md-12 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff; text-align: center;">내	용 </span> 
				<textarea id="review_content" name="review_content" class="form-control" rows="12"></textarea>
				<span id="bcontentError" class="error"></span>
			</div>
		</div>
		
		<div class="dragArea row">
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<button type="submit" class="btn item-btn btn-success display-7 text-primary" style="margin: 5px;" >글쓰기</button>
				<script type="text/javascript">
				function communityWriteReview() {
					var btitle = $("#review_title").val().trim();
					if(btitle == "") 
						{ $("#btitleError").text("필수"); 
					}
					else { $("#btitleError").text(""); }
					
					var bcontent = $("#review_content").val().trim();
					if(bcontent == "") { $("#bcontentError").text("필수"); }
					else { $("#bcontentError").text(""); }
					
					if(btitle == "" || bcontent == "") {
						return false;	
					} 
					
				return true;
				}
				</script>		
			</div>
			<div class="col-md-4">
				<a class="btn item-btn btn-success display-7 text-primary" href="javascript:allFunction(6)">취소</a>
			</div>
			<div class="col-md-2"></div>
		</div>
	</form>
</div>





























<!-- 
<form id="boardReviewForm">
	<!-- <table style="width:auto" class="table table-sm table-bordered"> 
	
	
	<table class="table table-bordered">
		<colgroup>
			<col width="15%">
			<col width="35%">
			<col width="15%">
			<col width="*">
		</colgroup>
		<tbody>
			<tr>
				<td><div class="container">
						<div class="dropdown">
							<button type="button" class="btn btn-success display-4 dropdown-toggle"
								data-toggle="dropdown" style=" width: 100px; height: 40px;">강의분류</button>
							<div class="dropdown-menu"  >
								<a class="dropdown-item" href="#">건강</a> 
								<a class="dropdown-item" href="#">커리어</a> 
								<a class="dropdown-item" href="#">머니</a>
							</div>
						</div>
					</div></td>
			
				<td><a class="btn btn-success display-4"
					href="javascript:openpop()">강의선택하기</a></td>
			</tr>
			<script type="text/javascript">
				function openpop() {
					open("classvideo", "popup",
							"width=1300, height=600, top=200, left=300");
				}
			</script>
			<tr>
				<th>작성자</th>
				<td>사용자ID</td>
				<th>작성일</th>
				<td><span><fmt:formatDate value=""
							pattern="yyyy-MM-dd HH.mm.ss" /></span>2020-11-20</td>
			</tr>
			<tr>
				<th>답변완료여부</th>
				<td colspan="10">답변완료/미완료</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="10">문의 제목이 들어오네요</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="10">강의문의 내용이 들어옴</td>
			</tr>
		</tbody>
	</table>



	강의선택 : <select id="list" name="list">
 				<c:forEach var="list" items="${cityList}">
 					<c:if test="${city.value != ch11Member.mcity}">
 						<option value="${city.value}">${city.label}</option>
 					</c:if>
 					<c:if test="${city.value == ch11Member.mcity}">
 						<option value="${city.value}" selected>${city.label}</option>
 					</c:if>
 					</c:forEach>
 			</select>
 			
 	<!-- 글쓰기폼 -->			
	 	<%-- 
	 	<article>
			<div class="container" role="main">
				<h2>board Form</h2>
				<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/board/saveBoard">
					<div class="mb-3">
						<label for="title">제목</label>
						<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">
					</div>
					<div class="mb-3">
						<label for="reg_id">작성자</label>
						<input type="text" class="form-control" name="reg_id" id="reg_id" placeholder="이름을 입력해 주세요">
					</div>
					<div class="mb-3">
						<label for="content">내용</label>
						<textarea class="form-control" rows="5" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>
					</div>
					<div class="mb-3">
						<label for="tag">TAG</label>
						<input type="text" class="form-control" name="tag" id="tag" placeholder="태그를 입력해 주세요">
					</div>
				</form>
				<div >
					<button type="button" class="btn btn-sm btn-primary" id="btnSave">저장</button>
					<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
				</div>
			</div>
		</article> 
		--%>
 		 	
 		 	<!-- 추가 -->		
	
	<%-- <div class="input-group">
		<div class="input-group-prepend"><span class="input-group-text">btitle</span></div>
		<input id="btitle" type="text" name="btitle" class="form-control">
		<span id="btitleError" class="error"></span>
	</div>
	
	<div class="input-group">
		<div class="input-group-prepend"><span class="input-group-text">bcontent</span></div>
		<textarea id="bcontent" name="bcontent" class="form-control"></textarea>
		<span id="bcontentError" class="error"></span>
	</div>
	
	<div class="input-group">
		<div class="input-group-prepend"><span class="input-group-text">mid</span></div>
		<input id="mid" type="text" name="mid" class="form-control" 
			<c:if test="${sessionMid!=null}">value="${sessionMid}"</c:if>
			<c:if test="${sessionMid==null}">value="fall"</c:if>
			readonly>
		<span id="btitleError" class="error"></span>
	</div>
		
	<div style="margin-top: 10px">
		<a class="btn btn-info" href="javascript:boardWrite()">글쓰기</a>
		<script type="text/javascript">
			function boardWrite() {
				console.log("후기 글작성 완료");
				
				
				var btitle = $("#btitle").val().trim();
				if(btitle == "") { $("#btitleError").text("필수"); }
				else { $("#btitleError").text(""); }
				
				var bcontent = $("#bcontent").val().trim();
				if(bcontent == "") { $("#bcontentError").text("필수"); }
				else { $("#bcontentError").text(""); }
				
				if(btitle == "" || bcontent == "") {
					return;	
				} 
				
				var mid = $("#mid").val().trim();
				
				$.ajax({
					url:"community/boardWriteReview",
					method:"post",
					data: {btitle:btitle, bcontent:bcontent, mid:mid},
					success:function(data) {
						
						
						fun5();
						
						
					}
				});
			}
		</script>		
		
		<a class="btn btn-info" href="community">취소</a>
	</div>
</form>  --%>
