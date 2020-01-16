function delfile(id){
	$.ajax({
		type:"GET",//请求类型
		url:"delfile.json",//请求的url
		data:{id:id,flag:'apk'},//请求参数
		dataType:"json",//ajax接口（请求url）返回的数据类型
		success:function(data){//data：返回数据（json对象）
			if(data.result == "success"){
				alert("删除成功！");
				$("#uploadfile").show();
				$("#apkFile").html('');
			}else if(data.result == "failed"){
				alert("删除失败！");
			}
		},
		error:function(data){//当访问时候，404，500 等非200的错误状态码
			alert("请求错误！");
		}
	});  
}
var versionSize=null;
var versionInfo=null;
$(function(){  
	versionSize = $("#versionSize");
	versionInfo = $("#versionInfo");
	versionSize.bind("focus", function() {}).bind("blur", function() {
		if (versionSize.val() != null && versionSize.val() != '') {
			var versionSize1 = document.getElementById('versionSize1');
			versionSize1.innerHTML = '';
			versionSize1.style.color = 'red';
			return true;
		} else {
			var versionSize1 = document.getElementById('versionSize1');
			versionSize1.innerHTML = '请输入版本大小';
			versionSize1.style.color = 'red';
			return false;
		}
	});
	versionInfo.bind("focus", function() {}).bind("blur", function() {
		if (versionInfo.val() != null && versionInfo.val() != '') {
			var versionInfo1 = document.getElementById('versionInfo1');
			versionInfo1.innerHTML = '';
			versionInfo1.style.color = 'red';
			return true;
		} else {
			var versionInfo1 = document.getElementById('versionInfo1');
			versionInfo1.innerHTML = '请输入版本简介';
			versionInfo1.style.color = 'red';
			return false;
		}
	});
	$("#send").on("click",function(){
		window.location.href = "applist";
	});
	
	//上传APK文件---------------------
	var downloadLink = $("#downloadLink").val();
	var id = $("#id").val();
	var apkFileName = $("#apkFileName").val();
	if(downloadLink == null || downloadLink == "" ){
		$("#uploadfile").show();
	}else{
		$("#apkFile").append("<p>"+apkFileName+
							"&nbsp;&nbsp;<a href=\""+downloadLink+"?m="+Math.random()+"\" >下载</a> &nbsp;&nbsp;" +
							"<a href=\"javascript:;\" onclick=\"delfile('"+id+"');\">删除</a></p>");
	}

});
      
      
      