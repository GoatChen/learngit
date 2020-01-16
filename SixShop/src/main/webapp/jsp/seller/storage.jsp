<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/head.jsp"%>
<div class="item">
	<br /> <input style="height: 30px; float: left;"
		class="btn btn-danger" type="button" value="批量删除" id="batcheDel" />&nbsp;&nbsp;&nbsp;
	<input type="button" style="height: 30px; float: left; width: 85px; margin-left: 20px;"
		class="btn btn-danger insGoodsStorage" value="增加库存" /> <br /> <br />
	<br />
	<table border="1px" width="100%" class="tablelist" id="example">
		<thead>
			<th>选择</th>
			<th>商品图片</th>
			<th>商品名称</th>
			<th>商品类型</th>
			<th>商品价格</th>
			<th>剩余数量</th>
			<th>成交数量</th>
			<th>退货数量</th>
			<th>当前状态</th>
			<th>有关操作</th>
		</thead>
		<tbody>
			<c:forEach items="${goodsStorageList }" var="goodsStorageList">
				<tr>
					<td align="center"><input type="checkbox" name="id"
						value="${goodsStorageList.id }"
						status="${goodsStorageList.status}"></td>
					<td><img src="<%=basePath%>static${goodsStorageList.picPath }"
						width="50" height="50"></td>
					<td>${goodsStorageList.name }</td>
					<td>${goodsStorageList.categoryName3}</td>
					<td>${goodsStorageList.price }</td>
					<td>${goodsStorageList.number }</td>
					<td>${goodsStorageList.overNum}</td>
					<td>${goodsStorageList.backNum }</td>
					<td><c:if test="${goodsStorageList.status == 1 }">
	                      						待审核			
                                    		</c:if> <c:if
							test="${goodsStorageList.status == 2 }">
	                                  			审核通过			
                                    		</c:if> <c:if
							test="${goodsStorageList.status == 3 }">
	                                  			审核未通过			
                                    		</c:if> <c:if
							test="${goodsStorageList.status == 4 }">
	                                  			未上架			
                                    		</c:if> <c:if
							test="${goodsStorageList.status == 5 }">
	                                  			已上架			
                                    		</c:if></td>
					<td>
						<div class="btn-group">
							<button style="height: 30px" type="button" class="btn btn-danger">操作</button>
							<button style="height: 30px" type="button"
								class="btn btn-danger dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false">
								<span class="caret"></span> <span class="sr-only">Toggle
									Dropdown</span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<c:if test="${goodsStorageList.status == 1 }">
									<li><a href="javascript:;">无操作</a></li>
								</c:if>
								<c:if test="${goodsStorageList.status == 2 }">
									<li><a href="javascript:;" class="grounding"
										status="${goodsStorageList.status}"
										goodsStorageId="${goodsStorageList.id }">上架</a></li>
								</c:if>
								<c:if test="${goodsStorageList.status == 3 }">
									<li><a href="javascript:;" class="queryGoodsStorage"
										status="${goodsStorageList.status}"
										goodsStorageId="${goodsStorageList.id }">修改</a></li>
									<li><a href="javascript:;" class="delGoodsStorage"
										status="${goodsStorageList.status}"
										goodsStorageId="${goodsStorageList.id }">删除</a></li>
								</c:if>
								<c:if test="${goodsStorageList.status == 4 }">
									<li><a href="javascript:;" class="apply"
										status="${goodsStorageList.status}"
										goodsStorageId="${goodsStorageList.id }">上架</a></li>
									<li><a href="javascript:;" class="queryGoodsStorage"
										status="${goodsStorageList.status}"
										goodsStorageId="${goodsStorageList.id }">修改</a></li>
									<li><a href="javascript:;" class="delGoodsStorage"
										status="${goodsStorageList.status}"
										goodsStorageId="${goodsStorageList.id }">删除</a></li>
								</c:if>
								<c:if test="${goodsStorageList.status == 5 }">
									<li><a href="javascript:;" class="undercarriage"
										status="${goodsStorageList.status}"
										goodsStorageId="${goodsStorageList.id }">下架</a></li>
								</c:if>
							</ul>
						</div>
					</td>
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
<script src="<%=basePath%>static/dataTable/jquery.js"></script>
<script src="<%=basePath%>static/dataTable/bootstrap.min.js"></script>
<script src="<%=basePath%>static/js/dataTable/jquery.dataTables.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    //申请审核
    $(".apply").on("click", function() {
        var obj = $(this);
        var status = obj.attr("status");
        var goodsStorageId = obj.attr("goodsStorageId");
        if (status == 1) {
            alert("亲,该商品待审核中!!!");
        } else {
            if (confirm("亲,真的要申请上架吗?")) {
                $.ajax({
                    type: "GET",
                    url: "<%=basePath%>sellUser/queryStatus1",
                    data: {
                        "goodsStorageId": goodsStorageId,
                        "status": status
                    },
                    dataType: "json",
                    success: function(data) {
                        if (data.delResult == "true") {
                            alert("亲,已经向管理员发送了审核请求,该商品待审核中");
                            window.location.href = "<%=basePath%>sellUser/storage";
                        } else if (data.delResult == "false") {
                            alert("对不起，向管理员发送了审核请求失败了");
                        }
                    },
                    error: function(data) {
                        alert("对不起，向管理员发送了审核请求失败了");
                    }
                });
            }
        }
    });
    //商品上架
    $(".grounding").on("click", function() {
        var obj = $(this);
        var goodsStorageId = obj.attr("goodsStorageId");
        var status = obj.attr("status");
        if (status == 5) {
            alert("亲,该商品已上架!!!");
        } else {
            if (confirm("亲,真的要上架吗?")) {
                $.ajax({
                    type: "GET",
                    url: "<%=basePath%>sellUser/queryStatus5",
                    data: {
                        "goodsStorageId": goodsStorageId,
                        "status": status
                    },
                    dataType: "json",
                    success: function(data) {
                        if (data.delResult == "true") {
                            alert("亲,上架成功了");
                            window.location.href = "<%=basePath%>sellUser/storage";
                        } else if (data.delResult == "false") {
                            alert("对不起，上架失败了");
                        }
                    },
                    error: function(data) {
                        alert("对不起，上架失败了");
                    }
                });
            }
        }
    });
    //商品下架
    $(".undercarriage").on("click", function() {
        var obj = $(this);
        var status = obj.attr("status");
        var goodsStorageId = obj.attr("goodsStorageId");
        if (status == 4) {
            alert("亲,该商品已下架!!!");
        } else {
            if (confirm("亲,真的要下架吗?")) {
                $.ajax({
                    type: "GET",
                    url: "<%=basePath%>sellUser/queryStatus4",
                    data: {
                        "goodsStorageId": goodsStorageId,
                        "status": status
                    },
                    dataType: "json",
                    success: function(data) {
                        if (data.delResult == "true") {
                            alert("亲,下架成功了");
                            window.location.href = "<%=basePath%>sellUser/storage";
                        } else if (data.delResult == "false") {
                            alert("对不起，下架失败了");
                        }
                    },
                    error: function(data) {
                        alert("对不起，下架失败了");
                    }
                });
            }
        }
    });
    //增加库存信息
    $(".insGoodsStorage").click(function() {
        window.location.href = "<%=basePath%>sellUser/insGoodsStorage";
    });
    //修改库存信息
    $(".queryGoodsStorage").click(function() {
        var obj = $(this);
        var goodsStorageId = obj.attr("goodsStorageId");
        var status = obj.attr("status");
        if (status == 1) {
            alert("亲,上架的商品不可修改!!!");
        } else {
            window.location.href = "<%=basePath%>sellUser/queryGoodsStorage?goodsStorageId=" + goodsStorageId;
        }
    });
    //删除单个库存信息
    $(".delGoodsStorage").click(function() {
        var obj = $(this);
        var goodsStorageId = obj.attr("goodsStorageId");
        var status = obj.attr("status");
        if (status != 3 && status != 4) {
            alert("亲,只有未上架和审核未通过的商品才可删除呦!!!");
        } else {
            if (confirm("真的要删除它吗?")) {
                $.ajax({
                    type: "GET",
                    url: "<%=basePath%>sellUser/delGoodsStorage",
                    data: {
                        "goodsStorageId": goodsStorageId,
                    },
                    dataType: "json",
                    success: function(data) {
                        if (data.delResult == "true") {
                            alert("亲,恭喜您删除成功了");
                            window.location.href = "<%=basePath%>sellUser/storage";
                        } else if (data.delResult == "false") {
                            alert("对不起，删除失败了");
                        }
                    },
                    error: function(data) {
                        alert("对不起，删除失败了");
                    }
                });
            }
        }
    });
    //批量删除
    $("#batcheDel").click(function() {
        var flag = true;
        var $cks = $("input[name=id]:checked");
        if ($cks.size() == 0) {
            alert("亲,请选择要删除的库存数据");
        } else {
            if (flag) {
                $cks.each(function(index, dom) {
                    var status = $(dom).attr("status");
                    if (status != 3 && status != 4) {
                        alert("亲,只有未上架和审核未通过的商品才可删除呦!!!");
                        flag = false;
                        return flag;
                    }
                });
            }
            if (flag) {
                var idStr = "";
                $cks.each(function(index, dom) {
                    var id = $(dom).val();
                    idStr += id + ",";
                });
                if (confirm("真的要删除它们吗?")) {
                    $.ajax({
                        type: "GET",
                        url: "<%=basePath%>sellUser/delSomeStorage",
                        data: {
                            "idStr": idStr
                        },
                        dataType: "json",
                        success: function(data) {
                            if (data.delResult == "true") {
                                alert("亲,恭喜您删除成功了");
                                window.location.href = "<%=basePath%>sellUser/storage";
                            } else if (data.delResult == "false") {
                                alert("对不起, 删除失败了");
                            }
                        },
                        error: function(data) {
                            alert("对不起，删除失败了");
                        }
                    });
                }
            }
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
