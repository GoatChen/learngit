<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
<div id="bod">

	<div id="whole">
		<%@include file="common/left.jsp"%>
		<div id="right">
			<div id="personal">积分</div>
			<div id="hr"></div>
			<div id="respect">尊敬的客户，您好！您的积分为：&nbsp;${points }</div>
		</div>
	</div>
</div>
<%@include file="common/footer.jsp"%>
