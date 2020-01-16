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
	//动态加载所属平台列表
	$.ajax({
		type:"GET",//请求类型
		url:"../app/findFlatform",//请求的url
		data:{tcode:"APP_FLATFORM"},//请求参数
		dataType:"json",//ajax接口（请求url）返回的数据类型
		success:function(data){//data：返回数据（json对象）
			$("#flatformId").html("");
			var options = "<option value=\"\">--请选择--</option>";
			for(var i = 0; i < data.length; i++){
				options += "<option value=\""+data[i].valueId+"\">"+data[i].valueName+"</option>";
			}
			$("#flatformId").html(options);
		},
		error:function(data){//当访问时候，404，500 等非200的错误状态码
			alert("加载平台列表失败！");
		}
	});  
	//动态加载一级分类列表
	$.ajax({
		type:"GET",//请求类型
		url:"../app/findCategoryLevel1",//请求的url
		data:{pid:null},//请求参数
		dataType:"json",//ajax接口（请求url）返回的数据类型
		success:function(data){//data：返回数据（json对象）
			$("#categoryLevel1").html("");
			var options = "<option value=\"\">--请选择--</option>";
			for(var i = 0; i < data.length; i++){
				options += "<option value=\""+data[i].id+"\">"+data[i].categoryName+"</option>";
			}
			$("#categoryLevel1").html(options);
		},
		error:function(data){//当访问时候，404，500 等非200的错误状态码
			alert("加载一级分类列表失败！");
		}
	});  
	//动态加载二级分类列表
	$("#categoryLevel1").change(function(){
		var categoryLevel1 = $("#categoryLevel1").val();
		if(categoryLevel1 != '' && categoryLevel1 != null){
			$.ajax({
				type:"GET",//请求类型
				url:"../app/findCategoryLevel2",//请求的url
				data:{pid:categoryLevel1},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){//data：返回数据（json对象）
					$("#categoryLevel2").html("");
					var options = "<option value=\"\">--请选择--</option>";
					for(var i = 0; i < data.length; i++){
						options += "<option value=\""+data[i].id+"\">"+data[i].categoryName

  +"</option>";
					}
					$("#categoryLevel2").html(options);
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("加载二级分类失败！");
				}
			});
		}else{
			$("#categoryLevel2").html("");
			var options = "<option value=\"\">--请选择--</option>";
			$("#categoryLevel2").html(options);
		}
		$("#categoryLevel3").html("");
		var options = "<option value=\"\">--请选择--</option>";
		$("#categoryLevel3").html(options);
	});
	//动态加载三级分类列表
	$("#categoryLevel2").change(function(){
		var categoryLevel2 = $("#categoryLevel2").val();
		if(categoryLevel2 != '' && categoryLevel2 != null){
			$.ajax({
				type:"GET",//请求类型
				url:"../app/findCategoryLevel3",//请求的url
				data:{pid:categoryLevel2},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){//data：返回数据（json对象）
					$("#categoryLevel3").html("");
					var options = "<option value=\"\">--请选择--</option>";
					for(var i = 0; i < data.length; i++){
						options += "<option value=\""+data[i].id+"\">"+data[i].categoryName

  +"</option>";
					}
					$("#categoryLevel3").html(options);
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("加载三级分类失败！");
				}
			});
		}else{
			$("#categoryLevel3").html("");
			var options = "<option value=\"\">--请选择--</option>";
			$("#categoryLevel3").html(options);
		}
	});
	
	$("#send").on("click",function(){
		window.location.href = "../dev/main";
	});
	$("#APKName").bind("blur", function() {
		//ajax后台验证--APKName是否已存在
		$.ajax({
			type : "GET", //请求类型
			url : "../app/findAPKName", //请求的url
			data : {
				APKName : $("#APKName").val()
			}, //请求参数
			dataType : "json", //ajax接口（请求url）返回的数据类型
			success : function(data) { //data：返回数据（json对象）
				if (data.APKName == "empty") { //参数APKName为空，错误提示
					alert("APK名称为不能为空！");
				} else if (data.APKName == "exist") { //账号不可用，错误提示
					alert("该APK名称已存在，不能使用！");
				} else if (data.APKName == "noexist") { //账号可用，正确提示
					alert("该APK名称可以使用！");
				}
			},
			error : function(data) { //当访问时候，404，500 等非200的错误状态码
				alert("请求错误！");
			}
		});
	});
});
      
      