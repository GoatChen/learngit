<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
<div id="bod">
	<div id="whole">
		<%@include file="common/left.jsp"%>
		<div id="right">
			<div id="personal">编辑头像</div>
			<div id="hr"></div>
			<div>
				<form
					action="${pageContext.request.contextPath}/shopBuyUser/updatePic?id=${buyUserSession.id}"
					enctype="multipart/form-data" method="post" onsubmit="return check()">
					<div id="file1_1"><a href="javascript:;" class="file">本地上传<input type="file"
						name="file1" id="file1"></a></div>
					<div id="bigpic">
						<img src="${pageContext.request.contextPath}/${pic }" height="200"
							width="200" />
					</div>
					<div id="modifyPersonal">
						<input type="submit" value="保存" id="updateUser">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.js"></script>

<script type="text/javascript">
	function check() {
		var file1 = document.getElementById("file1").value;
		if (file1 == "") {
			alert("请插入新图片！");
			return false;
		}
		
	}
</script>
<%@include file="common/footer.jsp"%>