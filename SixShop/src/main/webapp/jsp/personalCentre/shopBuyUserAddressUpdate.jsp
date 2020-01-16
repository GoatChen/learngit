<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
<div id="bod">
	<div id="whole">
		<%@include file="common/left.jsp"%>
		<div id="right">
		<div id="personal">修改收件地址信息</div>
					<div id="hr"></div>
       <form action="${pageContext.request.contextPath }/shopBuyUser/updateBuyUserAddress" method="post" onsubmit="return check()">
		<div id="data_f">
					<div id="data_a">
						<div id="data_g">收件人：</div>
						<div id="data_h">
							<input type="text" name="name" id="name" value="${address.name }">
						</div>
					</div>
					<div id="data_a">
						<div id="data_g">收件地址：</div>
						<div id="data_h">
							<input type="think" name="address" id="address" value="${address.address }">
						</div>
					</div>
					<div id="data_a">
						<div id="data_g">联系电话：</div>
						<div id="data_h">
							<input type="think" name="phone" id="phone" value="${address.phone }">
						</div>
					</div>
					<input type="hidden" name="buy_id" value="${address.buy_id }">
					<input type="hidden" type="hidden" name="id" value="${address.id }">
					</div>
				<div id="money_button_3">
					<button type="submit" id="updateUser_2">保存修改</button>
				</div>
					</form>
		</div>
	</div>
</div>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.js"></script>

<script type="text/javascript">
	function check() {
		var name = document.getElementById("name").value;
		var address = document.getElementById("address").value;
		var phone = document.getElementById("phone").value;
		if (name == "") {
			alert("收件人不能为空！");
			return false;
		}
		if (address == "") {
			alert("地址不能为空！");
			return false;
		}
		if (phone == "") {
			alert("电话不能为空！");
			return false;
		}
		
	}
</script>
<%@include file="common/footer.jsp"%>