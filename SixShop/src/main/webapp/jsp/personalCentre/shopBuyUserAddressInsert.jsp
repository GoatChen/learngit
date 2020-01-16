<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
<div id="bod">
	<div id="whole">
		<%@include file="common/left.jsp"%>
		<div id="right">
		<div id="personal">增加收件地址</div>
					<div id="hr"></div>
		<form action="${pageContext.request.contextPath }/shopBuyUser/insertAddress" method="post" onsubmit="return check()">
			<div id="data_f">
			<div id="data_a">
						<div id="data_g">收件人：</div>
						<div id="data_h">
							<input type="text" name="name" id="name">
						</div>
					</div>
					<div id="data_a">
						<div id="data_g">收件地址：</div>
						<div id="data_h">
							<input type="text" name="address" id="address">
						</div>
					</div>
					<div id="data_a">
						<div id="data_g">联系电话：</div>
						<div id="data_h">
							<input type="text" name="phone" id="phone">
						</div>
					</div>
					</div>
			<div id="money_button_5">
					<button type="submit" id="updateUser_2">增加地址</button>
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