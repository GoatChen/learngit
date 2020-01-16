<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/head.jsp"%>
<div class="item">
	<table border="1px" width="100%" class="tablelist" id="example">
		<thead>
			<th>订单编号</th>
			<th>商品名称</th>
			<th>买家账号</th>
			<th>退货数量</th>
			<th>退货总价</th>
			<th>是否发货</th>
			<th>是否收货</th>
			<th>售后请求</th>
			<th>相关操作</th>
		</thead>
		<tbody>
			<c:forEach items="${rtorderList }" var="rtorderList">
				<tr>
					<td>${rtorderList.code }</td>
					<td>${rtorderList.getGoods().getName()}</td>
					<td>${rtorderList.getBuyUser().getCode() }</td>
					<td>${rtorderList.goodsNum }</td>
					<td>${rtorderList.totalPrice }</td>
					<td>${rtorderList.isSend==0?'没发货':'已发货' }</td>
					<td>${rtorderList.isReceive==0?'没收货':'已收货' }</td>
					<td>${rtorderList.afterSell==1?'请求退款':'已退款' }</td>
					<td><a href="javascript:;" class="apply"
						status="${rtorderList.afterSell}" code="${rtorderList.code  }">同意退款</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<%@ include file="common/foot.jsp"%>
<!-- ============================================================= FOOTER : END============================================================= -->

<!-- For demo purposes – can be removed on production -->

<!-- For demo purposes – can be removed on production : End -->
<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="<%=basePath%>static/js/jquery-1.11.1.min.js"></script>
<script src="<%=basePath%>static/js/bootstrap.min.js"></script>
<script src="<%=basePath%>static/js/bootstrap-hover-dropdown.min.js"></script>
<script src="<%=basePath%>static/js/bootstrap-hover-dropdown.min.js"></script>
<script src="<%=basePath%>static/js/owl.carousel.min.js"></script>
<script src="<%=basePath%>static/js/echo.min.js"></script>
<script src="<%=basePath%>static/js/jquery.easing-1.3.min.js"></script>
<script src="<%=basePath%>static/js/bootstrap-slider.min.js"></script>
<script src="<%=basePath%>static/js/jquery.rateit.min.js"></script>
<script src="<%=basePath%>static/js/lightbox.min.js"></script>
<script src="<%=basePath%>static/js/bootstrap-select.min.js"></script>
<script src="<%=basePath%>static/js/wow.min.js"></script>
<script src="<%=basePath%>static/js/scripts.js"></script>
<script src="<%=basePath%>static/js/dataTable/jquery.dataTables.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    //申请退款
    $(".apply").on("click", function() {
        var obj = $(this);
        var code = obj.attr("code");
        if (confirm("亲,真的要同意退款吗?")) {
            $.ajax({
                type: "GET",
                url: "<%=basePath%>sellUser/queryAfterSell",
                data: {
                    "code": code,
                },
                dataType: "json",
                success: function(data) {
                    if (data.delResult == "true") {
                        alert("亲,同意退款成功了");
                        window.location.href = "<%=basePath%>sellUser/sellrun";
                    } else if (data.delResult == "false") {
                        alert("对不起，同意退款失败了");
                    }
                },
                error: function(data) {
                    alert("对不起，同意退款失败了");
                }
            });
        }
    });
    //前端处理分页
    $('#example').removeClass('display').addClass('table table-striped table-bordered');
    $("#example").dataTable({
        "bProcessing": true, //DataTables载入数据时，是否显示‘进度’提示
        "aLengthMenu": [5, 10, 15], //更改显示记录数选项
        "sPaginationType": "full_numbers", //详细分页组，可以支持直接跳转到某页
        "bAutoWidth": true, //是否自适应宽度
        //"bJQueryUI" : true,
        "oLanguage": { //国际化配置  
            "sProcessing": "正在获取数据，请稍后...",
            "sLengthMenu": "显示 _MENU_ 条",
            "sZeroRecords": "没有您要搜索的内容",
            "sInfo": "从 _START_ 到  _END_ 条记录 总记录数为 _TOTAL_ 条",
            "sInfoEmpty": "记录数为0",
            "sInfoFiltered": "(全部记录数 _MAX_ 条)",
            "sInfoPostFix": "",
            "sSearch": "搜索",
            "sUrl": "",
            "oPaginate": {
                "sFirst": "第一页&nbsp;&nbsp;",
                "sPrevious": "&nbsp;&nbsp;上一页&nbsp;&nbsp;&nbsp;",
                "sNext": "&nbsp;&nbsp;&nbsp;下一页&nbsp;&nbsp;",
                "sLast": "&nbsp;&nbsp;最后一页&nbsp;&nbsp;"
            }
        },
    });
});
</script>
</body>
</html>
