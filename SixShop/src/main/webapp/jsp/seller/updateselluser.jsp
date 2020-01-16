<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/head.jsp"%>
<div class="item">
	<h1>个人店铺信息</h1>		
	<c:forEach items="${selluserlist}" var="selluser">
		<form
			action="${pageContext.request.contextPath}/sellUser/updateselluser"
			method="post" enctype="multipart/form-data">

			<input type="hidden" name="id" value="${selluser.id}">
			<table border="1px" width="100%" class="tablelist" id="example">	
				<tr>
					<td style="text-align: right;">账号：</td>
					<td style="text-align: left;"><input type="text" name="code"
						value="${selluser.code}" /></td>
				</tr>
				<tr>
					<td style="text-align: right;">密码：</td>
					<td style="text-align: left;"><input type="password"
						name="password" value="${selluser.password}"></td>
				</tr>
				<tr>
					<td style="text-align: right;">邮箱：</td>
					<td style="text-align: left;"><input type="text" name="email"
						value="${selluser.email}"></td>
				</tr>
				<tr>
					<td style="text-align: right;">性别：</td>
					<td style="text-align: left;"><c:if
							test="${selluser.sex=='男'}">
							<input type="radio" name="sex" value="${selluser.sex}"
								checked="checked">男
					<input type="radio" name="sex" value="${selluser.sex}">女</c:if> <c:if
							test="${selluser.sex=='女'}">
							<input type="radio" name="sex" value="${selluser.sex}">男
					<input type="radio" name="sex" value="${selluser.sex}"
								checked="checked">女</c:if></td>
				</tr>
				<tr>
					<td style="text-align: right;">电话：</td>
					<td style="text-align: left;"><input type="text" name="phone"
						value="${selluser.phone}"></td>
				</tr>
				<br>
<%-- 				<tr>
				<fmt:formatDate value="${selluser.birthday}" pattern="yyyy-MM-dd"/>
					<td style="text-align: right;">生日：</td>
					<td style="text-align: left;"><input type="text"
						name="birthday" value="${selluser.birthday}"></td>
				</tr> --%>
				<tr>
					<td style="text-align: right;">头像：</td>
					<td style="text-align: left;"><img
						src="${pageContext.request.contextPath}${selluser.picPojoPath}"
						width="60px" height="60px"></td>
				</tr>
				<tr>
					<td style="text-align: right;">修改头像：</td>
					<td style="text-align: right;" colspan="1"><input type="file"
						name="images" value="修改头像"></td>
				</tr>
				<tr>
					<td style="text-align: right;">店铺名：</td>
					<td style="text-align: left;"><input type="text" name="sellName"
						value="${selluser.sellName}"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="reset" value="取消"></td>
				</tr>

			</table>
		</form>
	</c:forEach>
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
