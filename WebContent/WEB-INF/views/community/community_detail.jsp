<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div>
	<div>
		<div>
		
			
			<br/>
			<span>번호:</span> 
			<span></span> <br/>
			
			<span>제목:</span> 
			<span></span> <br/>
			
			<span>글쓴이:</span> 
			<span></span> <br/>
			
			<span class="title">날짜:</span> 
			<span><fmt:formatDate value="" pattern="yyyy-MM-dd HH.mm.ss"/></span> <br/>
		</div>
		
		<div>
			<span class="title">내용:</span> <br/>
			<textarea style="width:100%" readonly></textarea>
		</div>
		
		<a class="btn btn-danger btn-sm" href="javascript:boardDelete()">삭제</a>
		<script type="text/javascript">
			function boardDelete(bno) {
				$.ajax({
					url:"boardDelete",
					data:{bno:bno},
					method:"post",
					success:function(data) {
						if(data.result == "success") {
							boardList();
						}
						console.log(data);
					}
				});
			}
		</script>	
		
		<a class="btn btn-danger btn-sm" href="#">수정</a>
		<a class="btn btn-info btn-sm" href="community" style="float:right" >목록</a>	
	</div>
</div> 