<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
<div id="bod">
	<div id="whole">
		<%@include file="common/left.jsp"%>
		<div id="right">
			<div id="personal">未发货订单</div>
			<div id="hr"></div>
			<table id="one-column-emphasis">
				<colgroup>
					<col class="oce-first" />
				</colgroup>
				<thead>
					<tr>
						<th scope="col">商品</th>
						<th scope="col">收件人</th>
						<th scope="col">联系电话</th>
						<th scope="col">收货地址</th>
						<th scope="col">操作</th>
					</tr>
				</thead>
				<c:forEach var="shop_Order" items="${list }">
					<tr>
						<td>${shop_Order.goods_name}</td>
						<td>${shop_Order.name}</td>
						<td>${shop_Order.phone}</td>
						<td>${shop_Order.address}</td>
						<td><a
							href="${pageContext.request.contextPath }/shopBuyUser/getRetreat?id=${shop_Order.id} ">退货</a></td>
					</tr>
				</c:forEach>

			</table>
			<div id="paging">
				共 ${totalPageCount} 页，当前 ${currentPageNo} 页
				<c:if test="${currentPageNo > 1}">
					<a
						href="${pageContext.request.contextPath}/shopBuyUser/getIsReceive?currentPageNo=1">首页</a>
					<a
						href="${pageContext.request.contextPath}/shopBuyUser/getIsReceive?&currentPageNo=${currentPageNo-1}">上一页</a>
				</c:if>
				<c:if test="${currentPageNo < totalPageCount }">
					<a
						href="${pageContext.request.contextPath}/shopBuyUser/getIsReceive?currentPageNo=${currentPageNo+1}">下一页</a>
					<a
						href="${pageContext.request.contextPath}/shopBuyUser/getIsReceive?currentPageNo=${totalPageCount}">尾页</a>
				</c:if>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.js"></script>

<script type="text/javascript">
	function page(currentPageNo) {
		location.href = "${pageContext.request.contextPath }/shopBuyUser/getIsReceive?currentPageNo="
				+ currentPageNo
	}
</script>
<%@include file="common/footer.jsp"%>