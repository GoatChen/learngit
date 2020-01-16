<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="">
<meta name="robots" content="all">
<title>个人中心</title>
<!-- 界面优化设计 -->
<link rel="stylesheet"
	href="<%=basePath%>static/css/dataTable/jquery.dataTables.min.css">
<link rel="stylesheet"
	href="<%=basePath%>static/css/dataTable/form.css">
<link rel="stylesheet"
	href="<%=basePath%>static/css/dataTable/table.css">
<!-- 界面优化设计 -->
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="<%=basePath%>static/css/bootstrap.min.css">
<!-- Customizable CSS -->
<link rel="stylesheet" href="<%=basePath%>static/css/lightbox.css">
<link rel="stylesheet" href="<%=basePath%>static/css/main.css">
<link rel="stylesheet" href="<%=basePath%>static/css/blue.css">
<link rel="stylesheet" href="<%=basePath%>static/css/owl.carousel.css">
<link rel="stylesheet"
	href="<%=basePath%>static/css/owl.transitions.css">
<link rel="stylesheet" href="<%=basePath%>static/css/animate.min.css">
<link rel="stylesheet" href="<%=basePath%>static/css/rateit.css">
<link rel="stylesheet"
	href="<%=basePath%>static/css/bootstrap-select.min.css">

<!-- Icons/Glyphs -->
<link rel="stylesheet" href="<%=basePath%>/static/css/font-awesome.css">

<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Barlow:200,300,300i,400,400i,500,500i,600,700,800"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<header class="header-style-1">
		<!-- ============================================== TOP MENU ============================================== -->
		<div class="top-bar animate-dropdown">
			<div class="container">
				<div class="header-top-inner">
					<div class="cnt-account"></div>
					<!-- /.cnt-account -->

					<div class="cnt-block">
						<ul class="list-unstyled list-inline">
							<li class="dropdown dropdown-small"><a href="#"
								class="dropdown-toggle" data-hover="dropdown"
								data-toggle="dropdown"><span class="value">English </span><b
									class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">English</a></li>
									<li><a href="#">French</a></li>
									<li><a href="#">German</a></li>
								</ul></li>
						</ul>
						<!-- /.list-unstyled -->
					</div>
					<!-- /.cnt-cart -->
					<div class="clearfix"></div>
				</div>
				<!-- /.header-top-inner -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.header-top -->
		<!-- ============================================== TOP MENU : END ============================================== -->
		<div class="main-header">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
						<!-- ============================================================= LOGO ============================================================= -->
						<div class="logo">
							<a href="#"> <img src="<%=basePath%>static/images/logo.png"
								alt="logo">
							</a>
						</div>
						<!-- /.logo -->
						<!-- ============================================================= LOGO : END ============================================================= -->
					</div>
					<!-- /.logo-holder -->

					<div class="col-lg-7 col-md-6 col-sm-8 col-xs-12 top-search-holder">
						<!-- /.contact-row -->
						<!-- ============================================================= SEARCH AREA ============================================================= -->
						<div class="search-area"></div>
						<!-- /.search-area -->
						<!-- ============================================================= SEARCH AREA : END ============================================================= -->
					</div>
					<!-- /.top-search-holder -->

					<div
						class="col-lg-2 col-md-3 col-sm-4 col-xs-12 animate-dropdown top-cart-row">
						<!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->

						<div class="dropdown dropdown-cart">
							
							<a href="<%=basePath%>sellUser/toShop" style="font-weight: 600; font-size: 18px; color: white;">退出登录</a>
						</div>
						<!-- /.dropdown-cart -->

						<!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->
					</div>
					<!-- /.top-cart-row -->
				</div>
				<!-- /.row -->

			</div>
			<!-- /.container -->

		</div>
		<!-- /.main-header -->
		<!-- ============================================== NAVBAR ============================================== -->
		<div class="header-nav animate-dropdown">
			<div class="container">
				<div class="yamm navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button data-target="#mc-horizontal-menu-collapse"
							data-toggle="collapse" class="navbar-toggle collapsed"
							type="button">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="nav-bg-class">
						<div class="navbar-collapse collapse"
							id="mc-horizontal-menu-collapse">
							<div class="nav-outer">
								<ul class="nav navbar-nav">
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
		<!-- ============================================== NAVBAR : END ============================================== -->

	</header>

	<!-- ============================================== HEADER : END ============================================== -->

	<!-- ============================================== HEADER : END ============================================== -->
	<div class="breadcrumb">
		<div class="container">
			<div class="breadcrumb-inner">
				<ul class="list-inline list-unstyled">
				</ul>
			</div>
			<!-- /.breadcrumb-inner -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.breadcrumb -->
	<div class="body-content outer-top-xs">
		<div class='container'>
			<div class='row'>
				<div class='col-xs-12 col-sm-12 col-md-3 sidebar'>
					<!-- ================================== TOP NAVIGATION ================================== -->
					<div class="side-menu animate-dropdown outer-bottom-xs">
						<div class="head">
							<i class="icon fa fa-align-justify fa-fw"></i> 我的列表
						</div>
						<nav class="yamm megamenu-horizontal">
							<ul class="nav">
							<li class="dropdown menu-item"><a href="<%=basePath%>sellUser/toIndex"
									class="dropdown-toggle"><i class="icon fa fa-clock-o"></i>我的主页</a>
									<!-- /.dropdown-menu --></li>
									
								<li class="dropdown menu-item"><a
									href="<%=basePath%>sellUser/sellrun" class="dropdown-toggle"><i
										class="icon fa fa-shopping-bag" aria-hidden="true"></i>售后管理</a> <!-- ================================== MEGAMENU VERTICAL ================================== -->
									<!-- /.dropdown-menu --> <!-- ================================== MEGAMENU VERTICAL ================================== -->
								</li>

								<li class="dropdown menu-item"><a
									href="<%=basePath%>sellUser/rtorder" class="dropdown-toggle"><i
										class="icon fa fa-laptop" aria-hidden="true"></i>退货订单</a> <!-- ================================== MEGAMENU VERTICAL ================================== -->
									<!-- /.dropdown-menu --> <!-- ================================== MEGAMENU VERTICAL ================================== -->
								</li>
								<!-- /.menu-item -->

								<li class="dropdown menu-item"><a
									href="<%=basePath%>sellUser/storage" class="dropdown-toggle"><i
										class="icon fa fa-paw" aria-hidden="true"></i>我的库存</a> <!-- /.dropdown-menu --></li>
								<!-- /.menu-item -->

								<li class="dropdown menu-item"><a href="<%=basePath%>sellUser/selluserlist/${sellUserSession.id}"
									class="dropdown-toggle"><i class="icon fa fa-diamond"></i>个人信息</a>
									<!-- /.dropdown-menu --></li>
								<!-- /.menu-item -->
								<li class="dropdown menu-item"><a href="<%=basePath%>comment/commentlist"
									class="dropdown-toggle"><i class="icon fa fa-heartbeat"></i>商品评价
										</a> <!-- /.dropdown-menu --></li>
								<!-- /.menu-item -->

								<li class="dropdown menu-item"><a href="<%=basePath%>sellUser/orderlist"
									class="dropdown-toggle"><i class="icon fa fa-paper-plane"></i>成交订单</a> <!-- /.dropdown-menu --></li>
								<!-- /.menu-item -->
								<!-- /.menu-item -->

							</ul>
							<!-- /.nav -->
						</nav>
						<!-- /.megamenu-horizontal -->
					</div>
				</div>
				<!-- /.sidebar -->
				<div class="col-xs-12 col-sm-12 col-md-9 rht-col">
					<!-- ========================================== SECTION – HERO ========================================= -->

					<div id="category" class="category-carousel hidden-xs">