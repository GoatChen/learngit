<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html lang="en">
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="">
<meta name="robots" content="all">
<title>SixShop - 个人中心</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">

<!-- Customizable CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/blue.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.transitions.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/rateit.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-select.min.css">

<!-- Icons/Glyphs -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.css">

<!-- Fonts -->
<link href="https://fonts.googleapis.com/css?family=Barlow:200,300,300i,400,400i,500,500i,600,700,800" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/personalCentre.css">
<style type="text/css">
    div.shopcargoodnum input {
        border: solid 1px #AAAAAA;
        width: 50px;
        display: inline-block;
    }
</style>

</head>
<body class="cnt-home">
<!-- ============================================== 顶端 ============================================== -->
<header class="header-style-1"> 
  
  <!-- ============================================== 顶端菜单 ============================================== -->
  <div class="top-bar animate-dropdown">
    <div class="container">
      <div class="header-top-inner">
        <div class="cnt-account">
          <ul class="list-unstyled">
            <li class="myaccount"><a href="${pageContext.request.contextPath}/shopIndex/toIndex"><span>首页</span></a></li>
            <li class="myaccount"><a href="${pageContext.request.contextPath}/shopBuyUser/shopSellUserIndex"><span>个人中心</span></a></li>
            <li class="header_cart hidden-xs"><a href="${pageContext.request.contextPath}/shopcar/buyshopcar/${buyUserSession.id}"><span>购物车</span></a></li>
            <li class="header_cart hidden-xs"><a href="${pageContext.request.contextPath}/shopBuyUser/getAllShopOrder"><span>历史订单</span></a></li>
            <li class="login"><a href="${pageContext.request.contextPath}/jsp/login.jsp"><span>注销</span></a></li>
          </ul>
        </div>
        <!-- /.cnt-account -->
        <!-- 菜单左上角，已删除 -->
        
        <!-- /.cnt-cart -->
        <div class="clearfix"></div>
      </div>
      <!-- /.header-top-inner --> 
    </div>
    <!-- /.container --> 
  </div>
  <!-- /.header-top --> 
  <!-- ============================================== 顶端菜单 : END ============================================== -->
  <div class="main-header">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-3 logo-holder"> 
          <!-- ============================================================= 商城LOGO ============================================================= -->
          <div class="logo"> <a href="${pageContext.request.contextPath}/jsp/index.jsp" title="SixShop主页"> <img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="logo"><!-- Logo图片待更改 --> </a> </div>
          <!-- /.logo --> 
          <!-- ============================================================= 商城LOGO : END ============================================================= --> </div>
        <!-- /.logo-holder -->
        
        <div class="col-lg-7 col-md-6 col-sm-8 col-xs-12 top-search-holder"> 
          <!-- /.contact-row --> 
          <!-- ============================================================= 商品查询框 ============================================================= -->
          <div class="search-area">
            <%-- <form method="post" action="${pageContext.request.contextPath }/shopcar/getShopCarByName">
            <input name="method" value="query" class="search-field" type="hidden">
              <div class="control-group">
                <ul class="categories-filter animate-dropdown">
                  <li class="dropdown"> <a class="dropdown-toggle"  data-toggle="dropdown" href="WEB-INF/jsp/category.jsp">类别 <b class="caret"></b></a>
                    <ul class="dropdown-menu" role="menu" >
                      <!--  -->
                      <li class="menu-header">类型款式</li>
                      <c:forEach var="catlist" items="${categoryLevel1List }" >
	                      <li role="presentation"><a role="menuitem" tabindex="-1" class="aa" href="javascript:;" category1_id="${catlist.id }">- ${catlist.categoryName }</a></li>
                      </c:forEach>
                    </ul>
                  </li>
                </ul>
                <input type="text" name="goodsName" class="search-field" placeholder="输入关键字..." value="${goodsName }" >
                <input	value="查 询" type="submit" id="checkName" class="search-button">
              </div>
            </form> --%>
          </div>        
          <!-- ============================================================= 购物车下拉，简单信息、进入购物车 : END============================================================= --> </div>
        <!-- /.top-cart-row --> 
      </div>
      <!-- /.row --> 
      
    </div>
    <!-- /.container --> 
    
  </div>
  <!-- /.main-header --> 
  
  <!-- ============================================== 上端分类菜单、活动广告 ============================================== -->
  <div class="header-nav animate-dropdown">
    <div class="container">
      <div class="yamm navbar navbar-default" role="navigation">
        <div class="navbar-header">
       <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> 
       <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        </div>
        <div class="nav-bg-class">
          <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
            <div class="nav-outer">
              <ul class="nav navbar-nav">
                <li class="active dropdown"> <a href="">个人中心</a> </li>
                <li class="dropdown yamm mega-menu"> <a href="#" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown"></a> </li>
                <li class="dropdown yamm mega-menu"> <a href="#" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown"></a> </li>
                	
                </li>
                <li class="dropdown  navbar-right special-menu"> <a href="#">立即领取200元新用户红包</a> </li>
              </ul>
              <!-- /.navbar-nav -->
              <div class="clearfix"></div>
            </div>
            <!-- /.nav-outer --> 
          </div>
          <!-- /.navbar-collapse --> 
          
        </div>
        <!-- /.nav-bg-class --> 
      </div>
      <!-- /.navbar-default --> 
    </div>
    <!-- /.container-class --> 
    
  </div>
  <!-- /.header-nav --> 
  <!-- ============================================== 上端分类菜单、活动 : END ============================================== --> 
  
</header>

<!-- ============================================== 顶部 : END ============================================== -->
