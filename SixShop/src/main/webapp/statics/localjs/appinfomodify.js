function  loadCategoryLevel(pid,cl,categoryLevel){
	$.ajax({
		type:"GET",//请求类型
		url:"../update/findCategoryLevel2",//请求的url
		data:{pid:pid},//请求参数
		dataType:"json",//ajax接口（请求url）返回的数据类型
		success:function(data){//data：返回数据（json对象）
			
			$("#"+categoryLevel).html("");
			var options = "<option value=\"\">--请选择--</option>";
			for(var i = 0; i < data.length; i++){
				if(cl != null && cl != undefined && data[i].id == cl ){
					options += "<option selected=\"selected\" value=\""+data[i].id+"\" >"+data[i].categoryName+"</option>";
				}else{
					options += "<option value=\""+data[i].id+"\">"+data[i].categoryName+"</option>";
				}
			}
			$("#"+categoryLevel).html(options);
		},
		error:function(data){//当访问时候，404，500 等非200的错误状态码
			alert("加载分类列表失败！");
		}
	});
}   
function delfile(id){
	$.ajax({
		type:"GET",//请求类型
		url:"../update/delfile",//请求的url
		data:{id:id},//请求参数
		dataType:"json",//ajax接口（请求url）返回的数据类型
		success:function(data){//data：返回数据（json对象）
			if(data.result == "success"){
				alert("删除成功！");
				$("#logoFile").html('');
			}else if(data.result == "failed"){
				alert("删除失败！");
			}
		},
		error:function(data){//当访问时候，404，500 等非200的错误状态码
			alert("请求错误！");
		}
	});  
}

var softwareName = null; //软件名称
var supportROM = null; //支持ROM
var interfaceLanguage = null; //界面语言
var softwareSize = null; //软件大小（单位：M）
var downloads = null; //下载量（单位：次）
var statusName = null; //app状态名称
var appInfo = null; //应用简介
$(function() {
	softwareName = $("#softwareName");
	supportROM = $("#supportROM");
	interfaceLanguage = $("#interfaceLanguage");
	softwareSize = $("#softwareSize");
	downloads = $("#downloads");
	appInfo = $("#appInfo");
	softwareName.bind("focus", function() {}).bind("blur", function() {
		if (softwareName.val() != null && softwareName.val() != '') {
			var softwareName1 = document.getElementById('softwareName1');
			softwareName1.innerHTML = '';
			softwareName1.style.color = 'red';
			return true;
		} else {
			var softwareName1 = document.getElementById('softwareName1');
			softwareName1.innerHTML = '请输入软件名称';
			softwareName1.style.color = 'red';
			return false;
		}
	});
	supportROM.bind("focus", function() {}).bind("blur", function() {
		if (supportROM.val() != null && supportROM.val() != '') {
			var supportROM1 = document.getElementById('supportROM1');
			supportROM1.innerHTML = '';
			supportROM1.style.color = 'red';
			return true;
		} else {
			var supportROM1 = document.getElementById('supportROM1');
			supportROM1.innerHTML = '请输入支持的ROM';
			supportROM1.style.color = 'red';
			return false;
		}
	});
	interfaceLanguage.bind("focus", function() {}).bind("blur", function() {
		if (interfaceLanguage.val() != null && interfaceLanguage.val() != '') {
			var interfaceLanguage1 = document.getElementById('interfaceLanguage1');
			interfaceLanguage1.innerHTML = '';
			interfaceLanguage1.style.color = 'red';
			return true;
		} else {
			var interfaceLanguage1 = document.getElementById('interfaceLanguage1');
			interfaceLanguage1.innerHTML = '请输入软件支持的界面语言';
			interfaceLanguage1.style.color = 'red';
			return false;
		}
	});
	softwareSize.bind("focus", function() {}).bind("blur", function() {
		if (softwareSize.val() != null && softwareSize.val() != '') {
			if (isNaN(softwareSize.val())) {
				var softwareSize1 = document.getElementById('softwareSize1');
				softwareSize1.innerHTML = '请输入数字';
				softwareSize1.style.color = 'red';
				return false;
			} else {
				var softwareSize1 = document.getElementById('softwareSize1');
				softwareSize1.innerHTML = '';
				softwareSize1.style.color = 'red';
				return true;
			}
		} else {
			var softwareSize1 = document.getElementById('softwareSize1');
			softwareSize1.innerHTML = '请输入软件大小，单位为Mb';
			softwareSize1.style.color = 'red';
			return false;
		}
	});
	downloads.bind("focus", function() {}).bind("blur", function() {
		if (downloads.val() != null && downloads.val() != '') {
			if (isNaN(downloads.val())) {
				var downloads1 = document.getElementById('downloads1');
				downloads1.innerHTML = '请输入数字';
				downloads1.style.color = 'red';
				return false;
			} else {
				var downloads1 = document.getElementById('downloads1');
				downloads1.innerHTML = '';
				downloads1.style.color = 'red';
				return true;
			}
		} else {
			var downloads1 = document.getElementById('downloads1');
			downloads1.innerHTML = '请输入下载次数';
			downloads1.style.color = 'red';
			return false;
		}
	});
	appInfo.bind("focus", function() {}).bind("blur", function() {
		if (appInfo.val() != null && appInfo.val() != '') {
			var appInfo1 = document.getElementById('appInfo1');
			appInfo1.innerHTML = '';
			return false;
		} else {
			var appInfo1 = document.getElementById('appInfo1');
			appInfo1.innerHTML = '请输入应用简介';
			appInfo1.style.color = 'red';
			return false;
		}
	});
	$("#again").on("click", function() {
		document.getElementById('status').value=1;
		window.location.href= "../app/updateApk2";		
	});
	//动态加载所属平台列表
	$.ajax({
		type : "GET", //请求类型
		url : "../update/findFlatform", //请求的url
		data : {
			tcode : "APP_FLATFORM"
		}, //请求参数
		dataType : "json", //ajax接口（请求url）返回的数据类型
		success : function(data) { //data：返回数据（json对象）
			var fid = $("#fid").val();
			$("#flatformId").html("");
			var options = "<option value=\"\">--请选择--</option>";
			for (var i = 0; i < data.length; i++) {
				if (fid != null && fid != undefined && data[i].valueId == fid) {
					options += "<option selected=\"selected\" value=\"" + data[i].valueId + "\" >" + data[i].valueName + "</option>";
				} else {
					options += "<option value=\"" + data[i].valueId + "\">" + data[i].valueName + "</option>";
				}
			}
			$("#flatformId").html(options);
		},
		error : function(data) { //当访问时候，404，500 等非200的错误状态码
			alert("加载平台列表失败！");
		}
	});
	var cl1 = $("#cl1").val();
	var cl = $("#cl1").val();
	var cl2 = $("#cl2").val();
	var cl3 = $("#cl3").val();
	//动态加载一级分类列表
	$.ajax({
		type:"GET",//请求类型
		url:"../update/findCategoryLevel1",//请求的url
		data:{cl:cl},//请求参数
		dataType:"json",//ajax接口（请求url）返回的数据类型
		success:function(data){//data：返回数据（json对象）			
			$("#categoryLevel1").html("");
			var options = "<option value=\"\">--请选择--</option>";
			for(var i = 0; i < data.length; i++){
				if(cl != null && cl != undefined && data[i].id == cl ){
					options += "<option selected=\"selected\" value=\""+data[i].id+"\" >"+data[i].categoryName+"</option>";
				}else{
					options += "<option value=\""+data[i].id+"\">"+data[i].categoryName+"</option>";
				}
			}
			$("#categoryLevel1").html(options);
		},
		error:function(data){//当访问时候，404，500 等非200的错误状态码
			alert("加载一级列表失败！");
		}
	});
	//动态加载二级分类列表
	loadCategoryLevel(cl1,cl2,"categoryLevel2");
	//动态加载三级分类列表
	loadCategoryLevel(cl2,cl3,"categoryLevel3");
	
	//联动效果：动态加载二级分类列表
	$("#categoryLevel1").change(function(){
		var categoryLevel1 = $("#categoryLevel1").val();
		if(categoryLevel1 != '' && categoryLevel1 != null){
			loadCategoryLevel(categoryLevel1,cl2,"categoryLevel2");
		}else{
			$("#categoryLevel2").html("");
			var options = "<option value=\"\">--请选择--</option>";
			$("#categoryLevel2").html(options);
		}
		$("#categoryLevel3").html("");
		var options = "<option value=\"\">--请选择--</option>";
		$("#categoryLevel3").html(options);
	});
	//联动效果：动态加载三级分类列表
	$("#categoryLevel2").change(function(){
		var categoryLevel2 = $("#categoryLevel2").val();
		if(categoryLevel2 != '' && categoryLevel2 != null){
			loadCategoryLevel(categoryLevel2,cl3,"categoryLevel3");
		}else{
			$("#categoryLevel3").html("");
			var options = "<option value=\"\">--请选择--</option>";
			$("#categoryLevel3").html(options);
		}
	});
	$("#send").on("click", function() {
		window.location.href = "../applist.html";
	});
	//LOGO图片---------------------
	var logoPicPath = $("#logoPicPath").val();
	var id = $("#id").val();
	if(logoPicPath == null || logoPicPath == "" ){
		$("#logoFile").html('');
	}else{
		$("#logoFile").append("<p><img src=\""+logoPicPath+"?m="+Math.random()+"\" width=\"100px;\"/> &nbsp;&nbsp;"+
							"<a href=\"javascript:;\" onclick=\"delfile('"+id+"');\">删除</a></p>");		
	}
});