<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<div class="container">
	<p>${cate}</p>
		<!-- 글쓰기 -->
		<div class="sector"> 
			<div align="right">
				<c:if test="${cate =='review'}">
				<!-- selectbox -->
					<div class="sector">
						<div align="right" style="margin-top:7px; float:right;">
							<select class="dropdown-toggle">
							    <option>전체</option>
							    <option>건강</option>
							    <option>커리어</option>
							    <option>머니</option>
					 		 </select>
						</div>
					</div>		
				</c:if>
				<c:if test="${sessionMid==null}">
					<a class="btn btn-outline-primary" style="border:1px solid primary; float:right; border-style:1px" href="javascript:boardList()">글쓰기</a>
						<script type="text/javascript">
							function boardList() {
								$.ajax({
										url:"boardList",
										success:function(data) {
										$("#board_result").html(data);
										}
									});
								}
						</script>
					</c:if>
				</div>
			</div>	
	<div id="board_result"></div>
	
	<table class="table table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>분류</th>
				<th>제목</th>
				<th>날짜</th>
				<th>조회</th>
				<th>추천</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>전체공지</td>
				<td>건강</td>
				<td><a href="javascript:boardDetail()">야구방공지</a></td>
				<td>2020.8.7</td>
				<td>1254</td>
				<td>354</td>
			</tr>
			<tr>
				<td>1</td>
				<td>건강</td>
				<td>나는 건강해지고싶어</td>
				<td>2020.18:00</td>
				<td>1</td>
				<td>0</td>

			</tr>
			<tr>
				<td>2</td>
				<td>커리어</td>
				<td>나는 커리어우먼</td>
				<td>2020.19:00</td>
				<td>2</td>
				<td>1</td>
			</tr>

			<tr>
				<td>3</td>
				<td>머니</td>
				<td>나는 머니가 좋아</td>
				<td>2020.20:00</td>
				<td>3</td>
				<td>2</td>
			</tr>
		</tbody>
	</table>
	<script type="text/javascript">
			function boardDetail() {
				$.ajax({
					url:"<%=request.getContextPath()%>/community/boardDetail",
					success:function(data) {
						$("#fun1_result").html(data);
					}
				});
			}
	</script>
</div>