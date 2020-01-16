<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/head.jsp"%>
<div class="item">
	<form action="<%=basePath%>sellUser/queryStorage" method="post"
		enctype="multipart/form-data" id="form1">
		<h1>修改库存</h1>
		<br /> <span style="float: left; font-size: 16px;"> <input
			type="hidden" id="name" name="name" value="${goodsStorage.name}" />
			商品名称 :&nbsp;&nbsp;${goodsStorage.name}
		</span><br /> <br /> <br /> <span style="float: left;"> 商品logo : </span> <input
			type="hidden" id="picPath" name="picPath"
			value="${goodsStorage.picPath }" /> <br /> <br />
		<div id="queryImg" style="float: left;"></div>
		<span style="float: left; margin-left: 200px; margin-top: -30px;">
			修改logo : </span><br /> <br /> <input type="file" id="thisPicPath"
			name="thisPicPath"
			style="float: left; margin-left: 250px; margin-top: -40px;" /><br />
		<br /> <br /> <input type="hidden" id="goodsStorageId" name="id"
			value="${goodsStorage.id}" /> <span
			style="float: left;"> 一级分类 : </span><br /> <br /> <input
			type="hidden" id="category1Id" value="${goodsStorage.category1_id}" />
		<select name="category1_id" id="category1_id">
		</select><br /> <br /> <span style="float: left;"> 二级分类 : </span><br /> <br />
		<input type="hidden" id="category2Id"
			value="${goodsStorage.category2_id}" /> <select name="category2_id"
			id="category2_id">
		</select><br /> <br /> <span style="float: left;"> 三级分类 : </span><br /> <br />
		<input type="hidden" id="category3Id"
			value="${goodsStorage.category3_id}" /> <select name="category3_id"
			id="category3_id">
		</select><br /> <br /> <span style="float: left;"> 商品尺寸 : </span><br /> <br />
		<input type="text" name="size" id="size" value="${goodsStorage.size}" /><br />
		<br /> <span style="float: left;"> 商品颜色 : </span><br /> <br /> <input
			type="text" name="color" id="color" value="${goodsStorage.color}" /><br />
		<br /> <span style="float: left;"> 商品价格 : </span><br /> <br /> <input
			type="text" name="price" id="price" value="${goodsStorage.price}" /><br />
		<br /> <span style="float: left;"> 剩余数量 : </span><br /> <br /> <input
			type="text" name="number" id="number" value="${goodsStorage.number}" /><br />
		<br /><br /> <input
			type="submit" value="修改" class="button" />&nbsp;&nbsp; <input
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
<script src="<%=basePath%>static/js/dataTable/form2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    var category1Id = $("#category1Id").val();
    var category2Id = $("#category2Id").val();
    var category3Id = $("#category3Id").val();
    //LOGO图片---------------------
    var picPath = $("#picPath").val();
    if (picPath == null || picPath == "") {
        $("#queryImg").html('');
    } else {
        $("#queryImg").append("<img src=\"" + "<%=basePath%>static" + picPath + "\" width=\"50px;\" height=\"50px;\"/>");
    }
    //修改图片
    $("#thisPicPath").change(function() {
        var animateimg = $("#thisPicPath").val(); //获取上传的图片路径
        var imgarr = animateimg.split('\\'); //分割
        var myimg = imgarr[imgarr.length - 1]; //去掉 // 获取图片名
        var houzui = myimg.lastIndexOf('.'); //获取 . 出现的位置
        var ext = myimg.substring(houzui, myimg.length).toUpperCase(); //切割 . 获取文件后缀
        var file = $('#thisPicPath').get(0).files[0]; //获取上传的文件
        var fileSize = file.size; //获取上传的文件大小
        var maxSize = 1048576;
        if (ext != '.PNG' && ext != '.GIF' && ext != '.JPG' && ext != '.JPEG' && ext != '.BMP') {
            alert('文件类型错误,请上传图片类型');
            return false;
        } else if (parseInt(fileSize) >= parseInt(maxSize)) {
            alert('上传的文件不能超过1MB');
            return false;
        } else {
            //上传请求
            var formData = new FormData();
            formData.append("file", file);
            formData.append("goodsStorageId", $("#goodsStorageId").val());
            $.ajax({
                type: "POST", //请求类型
                url: "<%=basePath%>sellUser/queryImg",
                data: formData, //请求参数
                contentType: false,
                processData: false, //这个很有必要，不然不行
                success: function(data) {
                    if (data == true) {
                        location.reload();
                    }
                    if (data == false) {
                        alert("亲,修改图片失败了");
                    }
                },
                error: function(data) { //当访问时候，404，500 等非200的错误状态码
                    alert("亲,修改图片失败了");
                }
            });
        }
    });
    //加载一级分类
    findCategoryLevel(0, category1Id, "category1_id");
    //加载二级分类
    findCategoryLevel(category1Id, category2Id, "category2_id");
    //加载三级分类
    findCategoryLevel(category2Id, category3Id, "category3_id");
    //联动效果：动态加载二级分类列表
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
    //联动效果：动态加载三级分类列表
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
            type: "GET", //请求类型
            url: "<%=basePath%>sellUser/findCategoryLevel",
            data: {
                parentValue: parentValue
            }, //请求参数
            dataType: "json", //ajax接口（请求url）返回的数据类型
            success: function(data) { //data：返回数据（json对象）	
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
            error: function(data) { //当访问时候，404，500 等非200的错误状态码
                alert("加载分类列表失败！");
            }
        });
    }
    $("#form1").submit(function(){
    	var picPath=$("#picPath").val();
    	var category1_id=$("#category1_id").val();
    	var category2_id=$("#category2_id").val();
    	var category3_id=$("#category3_id").val();
    	var name=$("#name").val();
    	var size=$("#size").val();
    	var color=$("#color").val();
    	var price=$("#price").val();
    	var number=$("#number").val();
    	if(picPath==""||picPath==null){
    		alert("亲,请上传商品logo");
    		return false;
    	}
    	if(category1_id==""||category1_id==null){
    		alert("亲,请选择商品的一级分类");
    		return false;
    	}
    	if(category2_id==""||category2_id==null){
    		alert("亲,请选择商品的二级分类");
    		return false;
    	}
    	if(category3_id==""||category3_id==null){
    		alert("亲,请选择商品的三级分类");
    		return false;
    	}
    	if(name==""||name==null){
    		alert("亲,请填写商品名称");
    		return false;
    	}
    	if( size==""|| size==null){
    		alert("亲,请填写商品尺寸");
    		return false;
    	}
    	if(color==""||color==null){
    		alert("亲,请填写商品颜色");
    		return false;
    	}
    	if(price==""||price==null){
    		alert("亲,请填写商品价格");
    		return false;
    	}
    	if(number==""||number==null){
    		alert("亲,请填写剩余数量");
    		return false;
    	}
    	return true;
    });
});
</script>
</body>
</html>
