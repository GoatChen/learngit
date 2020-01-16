<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/head.jsp"%>
<div class="item">
	<table border="1px" width="100%" class="tablelist" id="example">
		<h1>买家评论信息</h1>
		<thead>
			<th hidden="true">评论ID</th>
			<th>买家</th>
			<th>购买商品名</th>
			<th>买家评论</th>
			<th>评分</th>
			<th>点赞数</th>
			<th>卖家店铺</th>
			<th>商品图片</th>
			<th>我的评论回复</th>
			<th>详情操作</th>
		</thead>
		<tbody>
			<c:forEach items="${Commentlist}" var="comment">
				<tr align="center">
					<td hidden="true">${comment.buy_id}</td>
					<td hidden="true">${comment.id}</td>
					<td>${comment.buyName}</td>
					<td>${comment.goodName}</td>
					<td align="left" width="200px">${comment.content}</td>
					<td>${comment.score}</td>
					<td>${comment.likeNum}</td>
					<td>${comment.sellName}</td>
					<td><img
						src="<%=basePath%>${comment.picPojoPath}"
						width="60px" height="60px"></td>
					<c:if
						test="${comment.contentAnwser==null or comment.contentAnwser=='' }">
						<td>未回复</td>
					</c:if>
					<c:if
						test="${comment.contentAnwser!=null and comment.contentAnwser!=''}">
						<td>${comment.contentAnwser}</td>
					</c:if>
					<td><a
						href="<%=basePath%>comment/commentanswer/${comment.buy_id}"
						style="text-decoration: none;">回复评价</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div style="text-align: center">
				共 ${totalPageCount} 页，当前 ${currentPageNo} 页
				<c:if test="${currentPageNo > 1}">
					<a
						href="${pageContext.request.contextPath}/comment/commentlist?currentPageNo=1">首页</a>
					<a
						href="${pageContext.request.contextPath}/comment/commentlist?&currentPageNo=${currentPageNo-1}">上一页</a>
				</c:if>
				<c:if test="${currentPageNo < totalPageCount }">
					<a
						href="${pageContext.request.contextPath}/comment/commentlist?currentPageNo=${currentPageNo+1}">下一页</a>
					<a
						href="${pageContext.request.contextPath}/comment/commentlist?currentPageNo=${totalPageCount}">尾页</a>
				</c:if>

			</div>
</div>
<%@ include file="common/foot.jsp"%>
<!-- ============================================================= FOOTER : END============================================================= -->

<!-- For demo purposes – can be removed on production -->

<!-- For demo purposes – can be removed on production : End -->
<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="<%=basePath%>static/js/jquery-1.11.1.min.js"></script>
<script src="<%=basePath%>static/js/bootstrap.min.js"></script>
<script src="<%=basePath%>static/js/bootstrap-hover-dropdown.min.js"></script>
<script src="<%=basePath%>static/js/bootstrap-hover-dropdown.min.js"></script>
<script src="<%=basePath%>static/js/owl.carousel.min.js"></script>
<script src="<%=basePath%>static/js/echo.min.js"></script>
<script src="<%=basePath%>static/js/jquery.easing-1.3.min.js"></script>
<script src="<%=basePath%>static/js/bootstrap-slider.min.js"></script>
<script src="<%=basePath%>static/js/jquery.rateit.min.js"></script>
<script src="<%=basePath%>static/js/lightbox.min.js"></script>
<script src="<%=basePath%>static/js/bootstrap-select.min.js"></script>
<script src="<%=basePath%>static/js/wow.min.js"></script>
<script src="<%=basePath%>static/js/scripts.js"></script>
<script src="<%=basePath%>static/js/dataTable/jquery.dataTables.min.js"></script>
<script type="text/javascript">
	//前端处理分页
	$(document).ready(
			function() {
				$('#example').removeClass('display').addClass(
						'table table-striped table-bordered');
				$("#example").dataTable({
					"bProcessing" : true, //DataTables载入数据时，是否显示‘进度’提示
					"aLengthMenu" : [ 5, 10, 15 ], //更改显示记录数选项
					"sPaginationType" : "full_numbers", //详细分页组，可以支持直接跳转到某页
					"bAutoWidth" : true, //是否自适应宽度
					//"bJQueryUI" : true,
					"oLanguage" : { //国际化配置  
						"sProcessing" : "正在获取数据，请稍后...",
						"sLengthMenu" : "显示 _MENU_ 条",
						"sZeroRecords" : "没有您要搜索的内容",
						"sInfo" : "从 _START_ 到  _END_ 条记录 总记录数为 _TOTAL_ 条",
						"sInfoEmpty" : "记录数为0",
						"sInfoFiltered" : "(全部记录数 _MAX_ 条)",
						"sInfoPostFix" : "",
						"sSearch" : "搜索",
						"sUrl" : "",
						"oPaginate" : {
							"sFirst" : "第一页",
							"sPrevious" : "上一页",
							"sNext" : "下一页",
							"sLast" : "最后一页"
						}
					},
				});
			});
</script>
</body>
</html>
