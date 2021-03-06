<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container">
	<section class="section-table cid-shajIi4vc3" id="table1-1l">
	  <div class="container container-table">
	      <div class="table-wrapper">
	        <div class="container-fulid">
	          <div class="row search">
	            <div class="col-md-6"></div>
	            <div class="col-md-6">
	                <div  class="mbr-section-btn" align="right">
	                <c:if test="${sessionMid!=null}" >  
               	   		<%-- <c:if test="${sessionMid==null}"> --%>
		                  <a class="btn item-btn btn-warning display-4" href="javascript:communityWriteReview()" >글쓰기</a>
							<script type="text/javascript">
							function communityWriteReview() {
								$.ajax({
										url:"community/communityWriteReview",
										success:function(data) {
										$("#fun1_result").html(data);
										}
									});
								}
							</script>
							</c:if>
							<script type="text/javascript">
							function communityDetailReview(review_no) {
								$.ajax({
										url:"community/communityDetailReview",
										data : {review_no:review_no},
										success:function(data) {
										$("#fun1_result").html(data);
										}
									});
								}
							</script>	
		                  <%-- </c:if>--%>
	                	<div class="dropdown"  style="display: inline-block;">
							<button id="cateselect" align="right" type="button" class="btn btn-primary dropdown-toggle " data-toggle="dropdown">
								 전체
							</button>
							<div class="dropdown-menu">
							<a class="dropdown-item" href="javascript:allFunction(6,1)">전체</a>
							<c:forEach var="cateitem" items="${catelist}">
								<a class="dropdown-item" href="javascript:catereview(${cateitem.class_cate_no})">${cateitem.class_cate_nm}</a>
							</c:forEach>
								<script>
										function catereview(cateno){ 
											$.ajax({
												url : 'community/catereview' , 
												data : {cateno:cateno},
												success : function(data) {
													$("#fun1_result").html(data);
												}
											});
										}
								</script>
							</div>
						</div>	
	                
	                </div>
	                
	            </div>
	          </div>
	        </div>
	
	        <div class="row border">
	          <table class="table table-hover m-0" cellspacing="0" data-empty="No matching records found">
	            <thead>
	            <colgroup>
	            	<col width="12%">
				    <col width="16.5%">
				    <col width="14%">
				    <col width="*">
				    <col width="14%">
				    <col width="13%">
				    <col width="13%">
	            </colgroup>
		            <tr class="table-heads">
						<th id="no" class="head-item mbr-fonts-style display-7 text-center">번호</th>
						<th id="cate"class="head-item mbr-fonts-style display-7 text-center">분야</th>
						<th class="head-item mbr-fonts-style display-7 text-center">별점</th>
						<th class="head-item mbr-fonts-style display-7 text-center">제목</th>
						<!-- <th class="head-item mbr-fonts-style display-7 text-center" style="width:200px">내용</th> -->
						<th class="head-item mbr-fonts-style display-7 text-center">닉네임</th>
						<th id="date" class="head-item mbr-fonts-style display-7 text-center">날짜</th>
						<th id="hit" class="head-item mbr-fonts-style display-7 text-center">조회수</th>
					</tr>
	            </thead>
	            <tbody>
	            	<c:forEach var="ReviewDto" items="${review}">
					<tr>
						<td id="noTD" class="body-item mbr-fonts-style display-7  text-center">${ReviewDto.review_no}</td>
						<td id="cateTD" class="body-item mbr-fonts-style display-7  text-center">${ReviewDto.class_cate_nm}</td>
						<td class="body-item mbr-fonts-style display-7  text-center">
							<div id="star_pic">
								<c:forEach var="i" begin="0" end="${ReviewDto.review_star-1}">
								⭐
								</c:forEach>
							</div>
							
							<span id="star_num">
								${ReviewDto.review_star-1}
							</span>
							
						
						</td>
						<td class="body-item mbr-fonts-style display-7  text-center"><a href="javascript:communityDetailReview(${ReviewDto.review_no})">${ReviewDto.review_title}</a></td>
						<%-- <td class="body-item mbr-fonts-style display-7  text-center"><a href="javascript:communityDetail()">${ReviewDto.review_content}</a></td> --%>
						<td class="body-item mbr-fonts-style display-7  text-center">${ReviewDto.mnick}</td>
						<td id="dateTD" class="body-item mbr-fonts-style display-7  text-center"><fmt:formatDate value="${ReviewDto.review_date}" pattern="yy.MM.dd"/></td>
						<td id="hitTD"class="body-item mbr-fonts-style display-7  text-center">${ReviewDto.review_hitno}</td>
					</tr>
					</c:forEach>
	            	
				</tbody>
			
			<tr>
				<td colspan="7" style="text-align: center; ">
					<ul class="pagination justify-content-center" style="margin:20px 0">
						<li class="page-item"><a class="page-link" href="javascript:allFunction(6,1)"><<</a></li>
						<c:if test="${pager.groupNo > 1 }">
							<li class="page-item">
								<a class="page-link" href="javascript:allFunction(6,${pager.startPageNo-1})"><</a>
							</li>
						</c:if>
						
						<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
							<c:if test="${pager.pageNo == i }">
								<li class="page-item active"><a class="page-link" href="javascript:allFunction(6,${i})">${i}</a></li>
							</c:if>
							<c:if test="${pager.pageNo != i }">
								<li class="page-item"><a class="page-link" href="javascript:allFunction(6,${i})">${i}</a></li>
							</c:if>
						</c:forEach>
						<c:if test="${pager.groupNo <pager.totalGroupNo}">
						<li class="page-item"><a class="page-link" href="javascript:allFunction(6,${pager.endPageNo+1})">></a></li>
						</c:if>
						<li class="page-item"><a class="page-link" href="javascript:allFunction(6,${pager.totalPageNo})">>></a></li>
					</ul>
					
					</td>
				</tr> 
				
				
				
	            </tbody>
	            
	          </table>
	        </div>
	     </div>
	  </div>
  </section>
	 
	
	
</div>
	<style type="text/css">
	
		#star_num {
			display: none;
		}
	
		@media screen and (max-width: 768px){ 
			.table #hit {
				display: none;
			}
			.table #hitTD {
				display: none;
			}
				
			.display-7 {
				font-size: 15px;
			}

			#star_pic {
				display: none;
			}
			
			#star_num {
				display: inline-block;
			}	
		}
		
		@media screen and (max-width: 576px){ 
			.table #date {
				display: none;
			}
			.table #dateTD {
				display: none;
			}	
		/* 	.table #hit{
				display: none;
			}
			.table #hitTD{
				display: none;
			} */
			.display-7 {
				font-size: 12px;
			}	
			
			#star_pic {
				display: none;
			}
			
			#star_num {
				display: inline-block;
			}		
		}
	</style>

<script type="text/javascript">
	
	$(function(){
		$("#cateselect").html("${cate}");
	});
	
</script>
