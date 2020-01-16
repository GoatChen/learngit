<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
<div id="bod">
	<div id="whole">
		<%@include file="common/left.jsp"%>
		<div id="right">
			<div id="personal">个人资料</div>
			<div id="hr"></div>
			<div id="respect">尊敬的客户，${shop_buyUser.name }您好！</div>
			<div id="details">
				<div id="short">
					当前头像：&nbsp;&nbsp;<a
						href="${pageContext.request.contextPath}/shopBuyUser/toUpdatePic?id=${buyUserSession.id}"><img
						src="${pageContext.request.contextPath}/${shop_buyUser.picLocalPath }"
						height="80" width="80" align="top" title="编辑头像"></a>
				</div>
				<div id="data">
					<div id="data_a">
						<div id="data_b">姓名：</div>
						<div id="data_c">${shop_buyUser.name}</div>
					</div>
					<div id="data_a">
						<div id="data_b">性别：</div>
						<div id="data_c">${shop_buyUser.sex}</div>
					</div>
					<div id="data_a">
						<div id="data_b">电话：</div>
						<div id="data_c">${shop_buyUser.phone}</div>
					</div>
					<div id="data_a">
						<div id="data_b">邮箱：</div>
						<div id="data_c">${shop_buyUser.email}</div>
					</div>

				</div>
			</div>
			<div id="modifyPersonal">
				<button id="updateUser" onclick="updateUser(${buyUserSession.id})">修改个人信息</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.js"></script>

	<script type="text/javascript">
	function updateUser(id) {
		location.href="${pageContext.request.contextPath }/shopBuyUser/shopBuyUserUpdateUser?id="+id
	}
	</script>

<%@include file="common/footer.jsp"%>
