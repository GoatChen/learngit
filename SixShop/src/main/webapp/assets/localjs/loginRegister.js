var path = $("#path").val();
	
var code = $("#code");
var pwd = $("#pwd");
var phone = $("#phone");
var email = $("#email");
var name1 = $("#name1");
var birthday = $("#birthday");
var addBtn = $("#addBtn");

var flag1 = false;
var flag2 = false;
var flag3 = false;
var flag4 = false;
var flag5 = false;
var flag6 = false;
	
$(function(){
	/*
	 * 验证
	 * 失焦\获焦
	 * jquery的方法传递
	 */
	$("#code").bind("blur",function(){	/* 判空 后台判断重复 */
		
		//ajax后台验证--code是否已存在
		$.ajax({
			type:"GET",//请求类型
			url:path+"/shopLoginRegister/codeIsExist",//请求的url
			data:{code:code.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）
				if(data.d == "exist"){//账号已存在，错误提示
					$("#message1").html(" 用户名已存在");
					flag1 = false;
					return false;
				}
				else if(data.d == "" || data.d == null){//账号为空，错误提示
					$("#message1").html(" 用户名不能为空");
					flag1 = false;
					return false;
				}
				else{//账号可用，正确提示
					$("#message1").html(" √");
					flag1 = true;
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				$("#message1").html(" 错误状态");
				flag = false;
				return false;
			}
		}).bind("focus",function(){
			
		}).focus();
	});
	
	/*
	 * 验证
	 * 失焦\获焦
	 * jquery的方法传递
	 */
	$("#pwd").bind("blur",function(){	/* 判空 判断强度 */
	    var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g")  //强 8位及以上+字母大小写+数字+特殊字符 
	    var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g")  //中 7位及以上+(字母大小写 /字母大写+数字 /字母小写+数字)+特殊字符 
	    var enoughRegex = new RegExp("(?=.{6,}).*", "g") //弱 6位及以上+所有情况
		
		if(pwd.val() == "" || pwd.val() == null){//密码为空
			confirm(" 密码不能为空");
			$("#message2").html(" 密码不能为空");
			flag2 = false;
			return false;
		}
		else if(strongRegex.test(pwd.val())){//判断强度
			$("#message2").html(" 强");
			flag2 = true;
		}
		else if(mediumRegex.test(pwd.val())){//判断强度
			$("#message2").html(" 中");
			flag2 = true;
		}
		else if(enoughRegex.test(pwd.val())){//判断强度
			$("#message2").html("弱");
			flag2 = true;
		}
		else{//判断强度
//			validateTip(pwd.next(),{"color":"green"},"弱",true);
			$("#message2").html(" 弱");
			flag2 = true;
		}
	});
	
	$("#phone").bind("blur",function(){	/* 判空 判断格式 后台判断重复！！！！！！！！！！！ */
		var patrn=/^(13[0-9]|15[0-9]|18[0-9])\d{8}$/;
		
		$.ajax({
			type:"GET",//请求类型
			url:path+"/shopLoginRegister/phoneIsExist",//请求的url
			data:{phone:phone.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）
				if(data.d == "" || data.d == null){//电话为空，错误提示
//					validateTip(phone.next(),{"color":"red"},imgNo+" 电话不能为空",false);
					$("#message3").html(" 电话不能为空");
					flag3 = false;
					return false;
				}
				else if(data.d == "exist"){//电话已存在，错误提示
//					validateTip(phone.next(),{"color":"red"},imgNo+ " 电话已存在",false);
					$("#message3").html(" 电话已存在");
					flag3 = false;
					return false;
				}
				else if(!(phone.val().match(patrn))){
//					validateTip(phone.next(),{"color":"red"},imgNo + " 手机号格式不正确",false);
					$("#message3").html(" 手机号格式不正确");
					flag3 = false;
					return false;
				}
				else{//电话可用，正确提示
//					validateTip(phone.next(),{"color":"green"},imgYes+" 电话可以使用",true);
					$("#message3").html(" √");
					flag3 = true;
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
//				validateTip(phone.next(),{"color":"red"},imgNo+" 您访问的页面不存在",false);
				$("#message3").html(" 您访问的页面不存在");
				flag3 = false;
				return false;
			}
		});
		
	});
	
	$("#email").bind("blur",function(){	/* 判空 判断格式 后台判断重复！！！！！！！！！！！ */
		var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
		
		$.ajax({
			type:"GET",//请求类型
			url:path+"/shopLoginRegister/emailIsExist",//请求的url
			data:{email:email.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）
				if(data.d == "" || data.d == null){//账号为空，错误提示
//					validateTip(email.next(),{"color":"red"},imgNo+" 邮箱不能为空",false);
					$("#message4").html(" 邮箱不能为空");
					flag4 = false;
					return false;
				}
				else if(data.d == "exist"){//邮箱已存在，错误提示
//					validateTip(email.next(),{"color":"red"},imgNo+ " 邮箱已存在",false);
					$("#message4").html(" 邮箱已存在");
					flag4 = false;
					return false;
				}
				else if(!reg.test($("#email").val())){
//					validateTip(phone.next(),{"color":"red"},imgNo + " 邮箱格式不正确",false);
					$("#message4").html(" 邮箱格式不正确");
					flag4 = false;
					return false;
				}
				else{//邮箱可用，正确提示
//					validateTip(email.next(),{"color":"green"},imgYes+" 邮箱可以使用",true);
					$("#message4").html(" √");
					flag4 = true;
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
//				validateTip(email.next(),{"color":"red"},imgNo+" 您访问的页面不存在",false);
				$("#message4").html(" 您访问的页面不存在");
				flag4 = false;
				return false;
			}
		});
		
	});
	
	$("#name1").bind("blur",function(){	/* 判空 判断长度 */
		
		if((name1.val() != null && name1.val() != "") && (name1.val().length > 1
				&& name1.val().length <= 10)){
//			validateTip(name.next(),{"color":"green"},imgYes,true);
			$("#message5").html(" √");
			flag5 = true;
		}else{
//			validateTip(name.next(),{"color":"red"},imgNo+" 姓名输入不规范",false);
			$("#message5").html(" 姓名输入不规范（大于1小于等于10）");
			flag5 = false;
			return false;
		}
		
	});
	
	$("#birthday").bind("blur",function(){	/* 判空 后台判断是否大于当前日期 */
		
		$.ajax({
			type:"GET",//请求类型
			url:path+"/shopLoginRegister/birthdayValidate",//请求的url
			data:{birthday:birthday.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）
				if(data.d == null || data.d == ""){//日期为空，错误提示
//					validateTip(birthday.next(),{"color":"red"},imgNo+" 日期不能为空",false);
					$("#message6").html(" 日期不能为空");
					flag6 = false;
					return false;
				}
				else if(data.d == "bigger"){//日期大于当前时间，错误提示
//					validateTip(birthday.next(),{"color":"red"},imgNo+ " 日期大于当前时间",false);
					$("#message6").html(" 日期大于当前时间");
					flag6 = false;
					return false;
				}
				else{//日期可用，正确提示
//					validateTip(birthday.next(),{"color":"green"},imgYes,true);
					$("#message6").html(" √");
					flag6 = true;
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
//				validateTip(birthday.next(),{"color":"red"},imgNo+" 您访问的页面不存在",false);
				$("#message6").html(" 您访问的页面不存在");
				flag6 = false;
				return false;
			}
		});
		
	});
	
	$("#addBtn").on("click",function(){
		if(!flag1){
			$("#code").blur();
			return false;
	    }else if(!flag2){
			$("#pwd").blur();
			return false;
		}else if(!flag3){
			$("#phone").blur();
			return false;
		}else if(!flag4){
			$("#email").blur();
			return false;
		}else if(!flag5){
			$("#name1").blur();
			return false;
		}else if(!flag6){
			$("#birthday").blur();
			return false;
		}else{
			if(confirm("是否确认提交数据？")){
				$("#formRegister").submit();
			}
			else{
				return false;
			}
		}
	});
})