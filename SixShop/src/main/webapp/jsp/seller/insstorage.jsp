<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/head.jsp"%>
<div class="item">
	<form action="<%=basePath%>sellUser/insStorage" method="post"
		enctype="multipart/form-data" id="form1">
		<h1>增加库存</h1>
		<br /> <input type="hidden" id="picPath" name="picPath" /> <span
			style="float: left;"> 上传logo : </span> <input type="hidden"
			id="picPath" name="picPath" /> <br /> <br />
		<div id="queryImg" style="float: left;"></div>
		<input type="file" id="thisPicPath" name="thisPicPath"
			style="float: left; margin-left: 3px; margin-top: 10px;" /><br /> <br />
		<br /> <br /> <span style="float: left;"> 一级分类 : </span><br /> <br />
		<select name="category1_id" id="category1_id">
		</select><br /> <br /> <span style="float: left;"> 二级分类 : </span><br /> <br />
		<select name="category2_id" id="category2_id">
		</select><br /> <br /> <span style="float: left;"> 三级分类 : </span><br /> <br />
		<select name="category3_id" id="category3_id">
		</select><br /> <br /> <br /> <span style="float: left; font-size: 12px;">
			商品名称 : </span><br /> <br /> <input type="text" id="name" name="name" placeholder="请填写商品名称"/><br />
		<br /> <span style="float: left;"> 商品尺寸 : </span><br /> <br /> <input
			type="text" name="size" id="size" placeholder="请填写商品尺寸"/><br /> <br /> <span
			style="float: left;"> 商品颜色 : </span><br /> <br /> <input
			type="text" name="color" id="color" placeholder="请填写商品颜色"/><br /> <br /> <span
			style="float: left;"> 商品价格 : </span><br /> <br /> <input
			type="text" name="price" id="price" placeholder="请填写商品价格"/><br /> <br /> <span
			style="float: left;"> 剩余数量 : </span><br /> <br /> <input
			type="text" name="number" id="number" placeholder="请填写剩余数量"/><br /> <br /> <input
			type="submit" value="增加" class="button" />&nbsp;&nbsp; <input
			type="reset" value="重置" class="button" />
	</form>
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
    var category1Id = $("#category1Id").val();
    var category2Id = $("#category2Id").val();
    var category3Id = $("#category3Id").val();
    var flag = false;
    var flag2 = false;
    // 验证库存名是否重复
    $("#name").bind("blur", function() {
        if ($("#name").val() == "" || $("#name").val() == null) {
            flag=false;
        } else {
            // ajax后台验证--name是否已存在
            $.ajax({
                type: "GET", // 请求类型
                url: "<%=basePath%>sellUser/findName",
                data: {
                    "name": $("#name").val()
                }, // 请求参数
                dataType: "json", // ajax接口（请求url）返回的数据类型
                success: function(data) {
                    if (data.delResult == "true") {
                        flag = true;
                        flag2 = true;
                    } else {
                    	flag = true;
                    	flag2 = false;
                    	alert("亲,该商品名称已经存在了哟,请更换商品名称!");
                    }
                },
                error: function(data) {
                    alert("亲,请求错误!");
                }
            });
        }
    });
    // 上传图片
    $("#thisPicPath").change(function() {
        var animateimg = $("#thisPicPath").val(); // 获取上传的图片路径
        var imgarr = animateimg.split('\\'); // 分割
        var myimg = imgarr[imgarr.length - 1]; // 去掉
        // //
        // 获取图片名
        var houzui = myimg.lastIndexOf('.'); // 获取 .
        // 出现的位置
        var ext = myimg.substring(houzui, myimg.length).toUpperCase(); // 切割 .
        // 获取文件后缀
        var file = $('#thisPicPath').get(0).files[0]; // 获取上传的文件
        var fileSize = file.size; // 获取上传的文件大小
        var maxSize = 1048576;
        if (ext != '.PNG' && ext != '.GIF' && ext != '.JPG' && ext != '.JPEG' && ext != '.BMP') {
            alert('文件类型错误,请上传图片类型');
            return false;
        } else if (parseInt(fileSize) >= parseInt(maxSize)) {
            alert('上传的文件不能超过1MB');
            return false;
        } else {
            // 上传请求
            var formData = new FormData();
            var picPath = document.getElementById("picPath");
            formData.append("file", $('#thisPicPath').get(0).files[0]);
            $.ajax({
                type: "POST", // 请求类型
                url: "<%=basePath%>sellUser/insImg",
                data: formData, // 请求参数
                contentType: false,
                processData: false, // 这个很有必要，不然不行
                success: function(data) {
                    if (picPath.value == "") {
                        picPath.value = data.delResult;
                        $("#queryImg").append("<img src=\"" + "<%=basePath%>static" + data.delResult + "\" width=\"50px;\" height=\"50px;\"/>");
                    } else {
                    	//$("#queryImg").remove();
                    	picPath.value = data.delResult;
                    }
                },
                error: function(data) { // 当访问时候，404，500
                    // 等非200的错误状态码
                    alert("亲,上传图片失败了");
                }
            });
        }
    });
    // 加载一级分类
    findCategoryLevel(0, category1Id, "category1_id");
    // 加载二级分类
    findCategoryLevel(category1Id, category2Id, "category2_id");
    // 加载三级分类
    findCategoryLevel(category2Id, category3Id, "category3_id");
    // 联动效果：动态加载二级分类列表
    $("#category1_id").change(function() {
        var category1_id = $("#category1_id").val();
        if (category1_id != '' && category1_id != null) {
            findCategoryLevel(category1_id, category2Id, "category2_id");
        } else {
            $("#category2_id").html("");
            var options = "<option value=\"\">--请选择--</option>";
            $("#category2_id").html(options);
        }
        $("#category3_id").html("");
        var options = "<option value=\"\">--请选择--</option>";
        $("#category3_id").html(options);
    });
    // 联动效果：动态加载三级分类列表
    $("#category2_id").change(function() {
        var category2_id = $("#category2_id").val();
        if (category2_id != '' && category2_id != null) {
            findCategoryLevel(category2_id, category3Id, "category3_id");
        } else {
            $("#category3_id").html("");
            var options = "<option value=\"\">--请选择--</option>";
            $("#category3_id").html(options);
        }
    });

    function findCategoryLevel(parentValue, value, level) {
        $.ajax({
            type: "GET", // 请求类型
            url: "<%=basePath%>sellUser/findCategoryLevel",
            data: {
                parentValue: parentValue
            }, // 请求参数
            dataType: "json", // ajax接口（请求url）返回的数据类型
            success: function(data) { // data：返回数据（json对象）
                $("#" + level).html("");
                var options = "<option value=\"\">--请选择--</option>";
                for (var i = 0; i < data.length; i++) {
                    if (value != null && value != undefined && value == data[i].id) {
                        options += "<option selected=\"selected\" value=\"" + data[i].id + "\" >" + data[i].categoryName + "</option>";
                    } else {
                        options += "<option value=\"" + data[i].id + "\">" + data[i].categoryName + "</option>";
                    }
                }
                $("#" + level).html(options);
            },
            error: function(data) { // 当访问时候，404，500
                // 等非200的错误状态码
                alert("加载分类列表失败！");
            }
        });
    }
    $("#form1").submit(function() {
        var picPath = $("#picPath").val();
        var category1_id = $("#category1_id").val();
        var category2_id = $("#category2_id").val();
        var category3_id = $("#category3_id").val();
        var size = $("#size").val();
        var color = $("#color").val();
        var price = $("#price").val();
        var number = $("#number").val();
        if (picPath == "" || picPath == null) {
            alert("亲,请上传商品logo");
            return false;
        }
        if (category1_id == "" || category1_id == null) {
            alert("亲,请选择商品的一级分类");
            return false;
        }
        if (category2_id == "" || category2_id == null) {
            alert("亲,请选择商品的二级分类");
            return false;
        }
        if (category3_id == "" || category3_id == null) {
            alert("亲,请选择商品的三级分类");
            return false;
        }
        if (flag == false) {
            alert("亲,请填写商品名称");
            return false;
        }
        if (flag2 == false) {
            alert("亲,该商品名称已经存在了哟,请更换商品名称");
            return false;
        }
        if (size == "" || size == null) {
            alert("亲,请填写商品尺寸");
            return false;
        }
        if (color == "" || color == null) {
            alert("亲,请填写商品颜色");
            return false;
        }
        if (price == "" || price == null) {
            alert("亲,请填写商品价格");
            return false;
        }
        if (number == "" || number == null) {
            alert("亲,请填写剩余数量");
            return false;
        }
        return true;
    });
});		
</script>
</body>
</html>
