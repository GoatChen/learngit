<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
<div id="bod">
	<div id="whole">
		<%@include file="common/left.jsp"%>
		<div id="right">
		<div id="personal">充值</div>
					<div id="hr"></div>
			<form
				action="${pageContext.request.contextPath }/shopBuyUser/shopSellUsertoupdateMoney"
				method="get" onsubmit="return check()">
				<input type="hidden" name="id" value="${buyUserSession.id }">
				<div id="data_f">
					<div id="data_a">
						<div id="data_d">充值金额：</div>
						<div id="data_e">
							<input type="text" name="money" id="money">
						</div>
					</div>
					<div id="data_a">
						<div id="data_d">充值方式：</div>
						<div id="data_e">
							<input type="radio">微信<input type="radio">支付宝
						</div>
					</div>
				</div>
				<div id="money_button">
					<button type="submit" id="updateUser">充值</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.js"></script>

<script type="text/javascript">
	function check() {
		var money = document.getElementById("money").value;
		if (money == "") {
			alert("充值金额不能为空！");
			return false;
		}
		
	}
</script>
<%@include file="common/footer.jsp"%>