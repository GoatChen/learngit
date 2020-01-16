<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="left">
	<div id="account">
		<font id="management">账号管理</font>
		<div id="listing">
			<li id="listing_li"><a id="listing_li_a"
				href="${pageContext.request.contextPath}/shopBuyUser/shopSellUserIndex">个人资料</a></li>
			<li id="listing_li"><a id="listing_li_a"
				href="${pageContext.request.contextPath }/shopBuyUser/shopBuyUserUpdateMoney">余额</a></li>
			<li id="listing_li"><a id="listing_li_a"
				href="${pageContext.request.contextPath }/shopBuyUser/shopBuyUserUpdatePoints?id=${buyUserSession.id}">积分</a></li>
			<li id="listing_li"><a id="listing_li_a"
				href="${pageContext.request.contextPath }/shopBuyUser/getAllShopOrder">历史订单</a></li>
			<li id="listing_li"><a id="listing_li_a"
				href="${pageContext.request.contextPath }/shopBuyUser/getIsReceive">未发货订单</a></li>
			<li id="listing_li"><a id="listing_li_a"
				href="${pageContext.request.contextPath }/shopBuyUser/getIsReceiveAlready">已收货订单</a></li>
			<li id="listing_li"><a id="listing_li_a"
				href="${pageContext.request.contextPath }/shopBuyUser/toAddress">收货地址</a></li>
		</div>

	</div>
</div>