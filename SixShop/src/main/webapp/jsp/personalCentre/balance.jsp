<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
<div id="bod">

	<div id="whole">
		<%@include file="common/left.jsp"%>
		<div id="right">
			<div id="personal">余额</div>
			<div id="hr"></div>
			<div id="respect">尊敬的客户，您的余额只剩下${money }元</div>
			<div id="remind">
				如需充值请点击下面&nbsp;<a href="${pageContext.request.contextPath}/shopBuyUser/updateBalance"><span id="remind_span">充值</span></a>
			</div>
		</div>
	</div>
</div>
<%@include file="common/footer.jsp"%>
