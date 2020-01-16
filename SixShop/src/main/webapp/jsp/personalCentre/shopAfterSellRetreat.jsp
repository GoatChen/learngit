<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
<div id="bod">
	<div id="whole">
		<%@include file="common/left.jsp"%>
		<div id="right">
		<div id="personal">填写退货信息</div>
					<div id="hr"></div>
			<form action="${pageContext.request.contextPath }/shopBuyUser/shopAfterSellRetreatUpdate" method="post" enctype="multipart/form-data" onsubmit="return check()">
				<div id="data_f">
					<div id="data_a">
						<div id="data_g">标题：</div>
						<div id="data_h">
							<input type="text" name="title" id="title">
						</div>
					</div>
					<div id="data_a">
						<div id="data_g">内容：</div>
						<div id="data_h">
							<input type="think" name="content" id="content">
						</div>
					</div>
					<div id="data_a">
						<div id="data_g">插入图片：</div>
						<div id="data_h">
							<a href="javascript:;" class="file">选择文件<input type="file"
								name="file1" id="file1"></a>
						</div>
					</div>
					<input type="hidden" name="id" value="${retreat.id}">
					<input type="hidden" name="order_id" value="${retreat.id}">
					<input type="hidden" name="buy_id" value="${retreat.buy_id}">
					<input type="hidden" name="sell_id" value="${retreat.sell_id}">
				</div>
				<div id="money_button">
					<button type="submit" id="updateUser_2">提交申请</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.js"></script>

<script type="text/javascript">
	function check() {
		var title = document.getElementById("title").value;
		var content = document.getElementById("content").value;
		var file1 = document.getElementById("file1").value;
		if (title == "") {
			alert("标题不能为空！");
			return false;
		}
		if (content == "") {
			alert("内容不能为空！");
			return false;
		}
		if (file1 == "") {
			alert("图片不能为空！");
			return false;
		}
		
	}
</script>
<%@include file="common/footer.jsp"%>