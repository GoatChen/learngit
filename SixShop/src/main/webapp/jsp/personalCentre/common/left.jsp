<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="left">
	<div id="account">
		<font id="management">账号管理</font>
		<div id="listing">
			<li id="listing_li"><a id="listing_li_a"
				href="${pageContext.request.contextPath}/shopBuyUser/shopSellUserIndex">个&nbsp;&nbsp;人&nbsp;资&nbsp;料</a></li>
			<li id="listing_li"><a id="listing_li_a"
				href="${pageContext.request.contextPath }/shopBuyUser/shopBuyUserUpdateMoney">余&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;额</a></li>
			<li id="listing_li"><a id="listing_li_a"
				href="${pageContext.request.contextPath }/shopBuyUser/shopBuyUserUpdatePoints?id=${buyUserSession.id}">积&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分</a></li>
			<li id="listing_li"><a id="listing_li_a"
				href="${pageContext.request.contextPath }/shopBuyUser/getAllShopOrder">历&nbsp;&nbsp;史&nbsp;订&nbsp;单</a></li>
			<li id="listing_li"><a id="listing_li_a"
				href="${pageContext.request.contextPath }/shopBuyUser/getIsReceive">未发货订单</a></li>
			<li id="listing_li"><a id="listing_li_a"
				href="${pageContext.request.contextPath }/shopBuyUser/getIsReceiveAlready">已收货订单</a></li>
			<li id="listing_li"><a id="listing_li_a"
				href="${pageContext.request.contextPath }/shopBuyUser/toAddress">收&nbsp;&nbsp;货&nbsp;地&nbsp;址</a></li>
		</div>

	</div>
</div>