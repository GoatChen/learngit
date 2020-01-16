<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>SixShop登录页</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

  
</head>

<body>

<input type="hidden" id="path" value="${pageContext.request.contextPath}" />

<script type="text/javascript">

	function validateLogin() {
		var sUserName = document.formLogin.codeOrPhone.value;
		var sPassword = document.formLogin.password.value;
		if(sUserName == "") {
			alert("请输入用户名/电话!");
			return false;
		}
	
		if(sPassword == "") {
			alert("请输入密码!");
			return false;
		}
		return true;
	}

</script>
  
<!-- Form Mixin-->
<!-- Input Mixin-->
<!-- Button Mixin-->
<!-- Pen Title-->
<div class="pen-title">
  <h1>登录后进入SixShop主页</h1><span>Pen <i class='fa fa-paint-brush'></i> by <a href=''>cwx</a></span>
</div>
<!-- Form Module-->
<div class="module form-module">
  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
    <div class="tooltip">切换注册/登录</div>
  </div>
  <div class="form">
    <h2>账号密码登录</h2>
    <form action="${pageContext.request.contextPath}/shopLoginRegister/login" name="formLogin" method="post">
      <input type="text" id="codeOrPhone" name="codeOrPhone" placeholder="用户名/手机号" maxlength="20"/>
      <input type="password" id="password" name="password" placeholder="密码" maxlength="20"/>
      <input type="submit" class="login" value="登录" onclick="validateLogin()" />
      <span style="color:red; bold:bold;">${message }</span>
    </form>
  </div>
  
  <div class="form">
    <h2>注册用户</h2>
    <form name="formRegister" action="${pageContext.request.contextPath}/shopLoginRegister/register" method="post">
      <font id="message1" color="red"></font>
      <input type="text" id="code" name="code" placeholder="用户名" maxlength="20"/>
      <font id="message2" color="red"></font>
      <input type="password" id="pwd" name="password" placeholder="密码" maxlength="20"/>
      <font id="message3" color="red"></font>
      <input type="text" id="phone" name="phone" placeholder="电话号码" maxlength="11"/>
      <font id="message4" color="red"></font>
      <input type="text" id="email" name="email" placeholder="邮箱地址" maxlength="20"/>
      <font id="message5" color="red"></font>
      <input type="text" id="name1" name="name" placeholder="姓名" maxlength="10"/>
      <input type="radio" name="sex" value="男" checked="checked" />男	<input type="radio" name="sex" value="女"/>女
      <font id="message6" color="red"></font>
      <input type="date" id="birthday" name="birthday" placeholder="出生日期"/>
      <input type="radio" name="userType" value="买家" checked="checked" />买家	<input type="radio" name="userType" value="卖家"/>卖家
      <input type="submit" id="addBtn" class="register" value="注册" />
    </form>
  </div>
</div>

 	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src='https://codepen.io/andytran/pen/vLmRVp.js'></script>
  
    <script  src="${pageContext.request.contextPath}/assets/js/login.js"></script>
	<script  src="${pageContext.request.contextPath}/assets/localjs/loginRegister.js"></script>

</body>

</html>