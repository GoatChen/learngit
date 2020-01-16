<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	    

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="">
<meta name="robots" content="all">
<title>SixShop${viewName}</title>

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
</head>
<body class="cnt-home">

<input type="hidden" id="path" value="${pageContext.request.contextPath}" />
<input type="hidden" id="orderName" value="${orderName}" />
<input type="hidden" id="highOrLow" value="${highOrLow}" />
<input type="hidden" id="category1_id" value="${category1_id}" />
<input type="hidden" id="category2_id" value="${category2_id}" />
<input type="hidden" id="category3_id" value="${category3_id}" />

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
            <li class="login"><a href="${pageContext.request.contextPath}/shopLoginRegister/toLogin"><span>登录</span></a></li>
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