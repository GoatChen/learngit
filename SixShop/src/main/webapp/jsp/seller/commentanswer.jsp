<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/head.jsp"%>
<div class="item">
	<form action="${pageContext.request.contextPath}/comment/sendcommentanswer/${Commentlist.get(0).buy_id}" method="post">
		<table border="1px" width="100%" class="tablelist" id="example">
		<p>买家评论：</p>
		<textarea rows="6" cols="100" readonly="readonly" >${Commentlist.get(0).content}</textarea><br>
		<p>回复内容：</p>
		<textarea rows="6" cols="100" name="content" id="content" placeholder="请输入回复内容...."></textarea><br/>
		<!-- <input type="text" name="content" width="100"  height="20"> -->
		<input type="text" name="comment_id" value="${Commentlist.get(0).id}" hidden="true"><br>
		<input type="text" name="goods_id" value="${Commentlist.get(0).goods_id}" hidden="true"><br>
		<input type="text" name="buy_id" value="${Commentlist.get(0).buy_id}" hidden="true"><br>
		<input type="text" name="sell_id" value="${Commentlist.get(0).sell_id}" hidden="true"><br>
		
		<input type="submit" value="回复" onclick="return checkNull();">&nbsp;&nbsp;&nbsp;&nbsp;
		 <input type="reset" value="重置" />&nbsp;&nbsp;&nbsp;&nbsp;
		 <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回">
		 </table>
	</form>
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
				
				function checkNull() {
					var content = document.getElementById("content").value;
					if (content == "") {
						alert("内容不能为空！");
						return false;
					}
				}
</script>
</body>
</html>
