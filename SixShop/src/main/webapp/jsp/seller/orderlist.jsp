<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/head.jsp"%>
<div class="item">
	<table border="1px" width="100%" class="tablelist" id="example">		
			<caption>
				<h1>成交订单信息</h1>
			</caption>
			<thead>
				<th>订单编码</th>
				<th>买家</th>
				<th>购买商品名</th>
				<th>卖家店铺</th>
				<th>是否发货</th>
				<th>是否收货</th>
				<th>售后类型</th>
				<th>详情操作</th>
			</thead>
			<c:forEach items="${orderlist}" var="order">
				<tr align="center">
					<td hidden="true">${order.id}</td>
					<td>${order.code}</td>
					<td>${order.buyName}</td>
					<td>${order.goodName}</td>
					<td>${order.sellName}</td>
					<td>${order.isSend>0?'已发货':'未发货'}</td>
					<td>${order.isReceive>0?'已收货':'未收货'}</td>
					<c:if test="${order.afterSell==0}">
						<td>无售后</td>
					</c:if>
					<c:if test="${order.afterSell==1}">
						<td>可退款</td>
					</c:if>
					<c:if test="${order.afterSell==2}">
						<td>可以退货退款</td>
					</c:if>
					<td><a href="${pageContext.request.contextPath}/sellUser/delete/${order.id}" style="text-decoration: none;">删除</a></td>
				</tr>
			</c:forEach>
		</table>
		<div style="text-align: center">
				共 ${totalPageCount} 页，当前 ${currentPageNo} 页
				<c:if test="${currentPageNo > 1}">
					<a
						href="${pageContext.request.contextPath}/sellUser/orderlist?currentPageNo=1">首页</a>
					<a
						href="${pageContext.request.contextPath}/sellUser/orderlist?&currentPageNo=${currentPageNo-1}">上一页</a>
				</c:if>
				<c:if test="${currentPageNo < totalPageCount }">
					<a
						href="${pageContext.request.contextPath}/sellUser/orderlist?currentPageNo=${currentPageNo+1}">下一页</a>
					<a
						href="${pageContext.request.contextPath}/sellUser/orderlist?currentPageNo=${totalPageCount}">尾页</a>
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
