<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
<div id="bod">
	<div id="whole">
		<%@include file="common/left.jsp"%>
		<div id="right">
			<div id="personal">修改个人信息</div>
			<div id="hr"></div>
			<form
				action="${pageContext.request.contextPath }/shopBuyUser/shopSellUsertoupdateUser"
				method="get" onsubmit="return check()">
				<div id="data_f">
					<div id="data_a">
						<div id="data_g">姓名：</div>
						<div id="data_h">
							<input type="text" name="name" id="name" value="${up_user.name }">
						</div>
					</div>
					<div id="data_a">
						<div id="data_g">性别：</div>
						<div id="data_h">
						
						<c:if test="${up_user.sex == '男'}">
							<input type="radio" name="sex" id="sex" checked="checked" value="男">男 
							<input type="radio" name="sex" id="sex" value="女">女
						</c:if>
						<c:if test="${up_user.sex == '女'}">
							<input type="radio" name="sex" id="sex" value="男">男 
							<input type="radio" name="sex" id="sex" checked="checked" value="女">女
						</c:if>
						
						</div>
					</div>
					<div id="data_a">
						<div id="data_g">密码：</div>
						<div id="data_h">
							<input type="text" name="password" id="password" value="${up_user.password }">
						</div>
					</div>
					<div id="data_a">
						<div id="data_g">电话：</div>
						<div id="data_h">
							<input type="text" name="phone" id="phone" value="${up_user.phone }">
						</div>
					</div>
					<div id="data_a">
						<div id="data_g">邮箱：</div>
						<div id="data_h">
							<input type="text" name="email" id="email" value="${up_user.email }">
						</div>
					</div>
				</div>
				<input type="hidden" name="id" value="${up_user.id}"><br />
				<div id="money_button_4">
					<button type="submit" id="updateUser_2">确认修改</button>
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
		var sex = document.getElementById("sex").value;
		var password = document.getElementById("password").value;
		var phone = document.getElementById("phone").value;
		var email = document.getElementById("email").value;
		if (name == "") {
			alert("姓名不能为空！");
			return false;
		}
		if (sex == "") {
			alert("性别不能为空！");
			return false;
		}
		if (password == "") {
			alert("密码不能为空！");
			return false;
		}
		if (phone == "") {
			alert("手机号码不能为空！");
			return false;
		}
		if (email == "") {
			alert("邮箱不能为空！");
			return false;
		}
		
	}
</script>
<%@include file="common/footer.jsp"%>