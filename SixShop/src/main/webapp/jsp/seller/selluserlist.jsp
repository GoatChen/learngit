<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/head.jsp"%>
<div class="item">
	<table border="1px" width="100%" class="tablelist" id="example">
		<tr>
			<th>id</th>
			<th>账号</th>
			<th>密码</th>
			<th>电话</th>
			<th>姓名</th>
			<th>性别</th>
			<th>出生日期</th>
			<th>邮箱</th>
			<th>余额</th>
			<th>店铺名</th>
			<th>图片</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${selluserlist}" var="selluser">
			<tr>
				<td>${selluser.id}</td>
				<td>${selluser.code}</td>
				<td>${selluser.password}</td>
				<td>${selluser.phone}</td>
				<td>${selluser.name}</td>
				<td>${selluser.sex}</td>
				<td><fmt:formatDate value="${selluser.birthday}" pattern="yyyy-MM-dd"/></td>
				<td>${selluser.email}</td>
				<td>${selluser.money}</td>
				<td>${selluser.sellName}</td>
				<td><img
					src="${pageContext.request.contextPath}${selluser.picPojoPath}"
					width="60px" height="60px"></td>
				<td><a href="${pageContext.request.contextPath}/sellUser/update/${selluser.id}" style="text-decoration: none">修改信息</a>
				</td>
			</tr>
		</c:forEach>
	</table><br>
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
