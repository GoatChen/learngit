<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="/jsp/common/head.jsp"%>
    
<div class="main-header">
    <div class="container">
      <div class="row">
      
        <div class="col-xs-12 col-sm-12 col-md-3 logo-holder"> 
          <!-- ============================================================= 商城LOGO ============================================================= -->
          <div class="logo"> <a href="${pageContext.request.contextPath}/shopIndex/toIndex" title="SixShop主页"> <img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="logo"><!-- Logo图片待更改 --> </a> </div>
          <!-- /.logo --> 
          <!-- ============================================================= 商城LOGO : END ============================================================= --> </div>
        <!-- /.logo-holder -->
        
        <div class="col-lg-7 col-md-6 col-sm-8 col-xs-12 top-search-holder"> 
          <!-- /.contact-row --> 
          <!-- ============================================================= 商品查询框 ============================================================= -->
          <div class="search-area">
            <form action="${pageContext.request.contextPath}/shopIndex/selectShopGoods" method="post">
              <div class="control-group">
                <ul class="categories-filter animate-dropdown">
                  <li class="dropdown"> <a class="dropdown-toggle"  data-toggle="dropdown" href="WEB-INF/jsp/goodsSelect.jsp">类别 <b class="caret"></b></a>
                    <ul class="dropdown-menu" role="menu" >
                      <li class="menu-header">最新款</li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=1">- 衣服</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=2">- 裤子</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=3">- 裙子</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=4">- 鞋子</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=5">- 帽子</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=7">- 眼镜</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=6">- 背包</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=8">- 其他</a></li>
                    </ul>
                  </li>
                </ul>
                <input class="search-field" id="searchValue1" name="name" placeholder="男装" value="${name}" />
                <input type="submit" class="search-button" id="search1" value="搜索" />
              </div>
            </form>
          </div>
          <!-- /.search-area --> 
          <!-- ============================================================= 商品查询框 : END ============================================================= --> </div>
        <!-- /.top-search-holder -->
        
        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-12 animate-dropdown top-cart-row"> 
          <!-- ============================================================= 购物车下拉，简单信息、进入购物车 ============================================================= -->
          
          <div class="dropdown dropdown-cart"> <a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
            <div class="items-cart-inner">
              <div class="basket">
              <div class="basket-item-count"></div>   <!-- 购物车商品数量 -->
              <div class="total-price-basket"> <span class="lbl">我的购物车</span>  </div>  <!-- 购物车样式、商品总金额 -->
              </div>
            </div>
            </a>
            <ul class="dropdown-menu">
              <li>
                <div class="clearfix cart-total">
                  <div class="pull-left"></div>
                  <div class="clearfix"></div>
                  <hr>
                  <a href="${pageContext.request.contextPath}/shopcar/buyshopcar/${buyUserSession.id}" class="btn btn-upper btn-primary btn-block m-t-20">进入购物车</a> </div>
                <!-- /.cart-total--> 
                
              </li>
            </ul>
            <!-- /.dropdown-menu--> 
          </div>
          <!-- /.dropdown-cart --> 
          
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
                <li class="active dropdown"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/toIndex" data-hover="dropdown">主页</a> 
                </li>
                
                <li class="dropdown yamm mega-menu"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=1" data-hover="dropdown">衣服</a>
                </li>
                <li class="dropdown mega-menu"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=2" data-hover="dropdown">裤子 <span class="menu-label hot-menu hidden-xs">有热款</span> </a>
                </li>
                
                <li class="dropdown hidden-sm"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=3" data-hover="dropdown">裙子</a> 
                </li>
                <li class="dropdown hidden-sm"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=4" data-hover="dropdown">鞋子<span class="menu-label new-menu hidden-xs">有新款</span> </a> 
                </li>
                <li class="dropdown hidden-sm"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=5" data-hover="dropdown">帽子</a> 
                </li>
                <li class="dropdown hidden-sm"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=7" data-hover="dropdown">眼镜</a> 
                </li>
                <li class="dropdown mega-menu"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=6" data-hover="dropdown">背包</a>
                </li>
                <li class="dropdown hidden-sm"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=8" data-hover="dropdown">其他</a> 
                </li>
                
                <li class="dropdown  navbar-right special-menu"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">新用户购买立减50元</a> </li>
                
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
<!-- ============================================== HEADER : END ============================================== -->


<div class="body-content outer-top-xs">
  <div class='container'>
    <div class='row'>
      
      
      <div class="contain-row-sidebar">
	      <div class='col-xs-12 col-sm-12 col-md-3 sidebar' style="width:175px;"> 
	        <!-- ================================== TOP NAVIGATION ================================== -->
	        <div class="sidebar-module-container">
	          <div class="sidebar-filter"> 
	          </div>
	          <!-- /.sidebar-filter --> 
	        </div>
	        <!-- /.sidebar-module-container --> 
	      </div>
	      <!-- /.sidebar -->
      </div>
      
    
    <div class="content-right">
      <div class="col-xs-12 col-sm-12 col-md-9 rht-col"> 
      
        <!-- ========================================== SECTION – HERO广告板块 ========================================= -->
        <div id="category" class="category-carousel hidden-xs">
          <div class="item">
            <div class="image"> <img src="${pageContext.request.contextPath}/assets/images/banners/cat-banner-1.jpg" alt="" class="img-responsive"> </div>
            <div class="container-fluid">
              <div class="caption vertical-top text-left">
                <div class="big-text"> 清仓大甩卖 </div>
                <div class="excerpt hidden-sm hidden-md"> 折扣高达49% </div>
                <div class="excerpt-normal hidden-sm hidden-md"> 现在购买，还送床上三件套 </div>
                <div class="buy-btn"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" class="lnk btn btn-primary">立即购买</a></div>
              </div>
              <!-- /.caption --> 
            </div>
            <!-- /.container-fluid --> 
          </div>
        </div>
        <!-- ========================================== SECTION – HERO广告板块 : END ========================================= -->
        
     	<!-- ==============================页码栏============================== -->
        <div class="clearfix filters-container m-t-10">
          <div class="row">
            
            <!-- /.col -->
            <div class="col col-sm-12 col-md-5 col-lg-5 hidden-sm">
            
              <div class="col col-sm-6 col-md-6 no-padding" style="width:175px;">		<!-- ==========按标准排序========== -->
                <div class="lbl-cnt"> <span class="lbl">排序：</span>
                  <div class="fld inline">
                    <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                      <button data-toggle="dropdown" type="button" class="btn dropdown-toggle"> 方式 <span class="caret"></span> </button>
                      <ul role="menu" class="dropdown-menu">
                        <li role="presentation"><a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?name=${name}&category1_id=${category1_id}&category2_id=${category2_id}&category3_id=${category3_id}&currentPageNo=${currentPageNo}">日期（默认）</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?name=${name}&category1_id=${category1_id}&category2_id=${category2_id}&category3_id=${category3_id}&currentPageNo=${currentPageNo}&orderName=price&highOrLow=ASC">价格：从低到高</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?name=${name}&category1_id=${category1_id}&category2_id=${category2_id}&category3_id=${category3_id}&currentPageNo=${currentPageNo}&orderName=price&highOrLow=DESC">价格：从高到低</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?name=${name}&category1_id=${category1_id}&category2_id=${category2_id}&category3_id=${category3_id}&currentPageNo=${currentPageNo}&orderName=score">评分</a></li>
                      </ul>
                    </div>
                  </div>
                  <!-- /.fld --> 
                </div>
                <!-- /.lbl-cnt --> 
              </div>
              
            </div>
            <!-- /.col -->
            
            <div class="col col-sm-6 col-md-4 col-xs-6 col-lg-4 text-right" style="width:500px; left:13%;">	<!-- ==========分页========== -->
              <div class="pagination-container">
                <ul class="list-inline list-unstyled">
                  <li><span class="lbl">共 ${totalPageCount} 页，当前 ${currentPageNo} 页</span></li>
                  
				  <c:if test="${currentPageNo > 1}">
                  	<li class="prev"><a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?name=${name}&category1_id=${category1_id}&category2_id=${category2_id}&category3_id=${category3_id}&currentPageNo=1&orderName=${orderName}&highOrLow=${highOrLow}"><i>首页</i></a></li>
                  	<li class="prev"><a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?name=${name}&category1_id=${category1_id}&category2_id=${category2_id}&category3_id=${category3_id}&currentPageNo=${currentPageNo-1}&orderName=${orderName}&highOrLow=${highOrLow}"><i class="fa fa-angle-left">上一页</i></a></li>
                  </c:if>
                  
				  <c:if test="${totalPageCount > 1 }">
                  	<li>
						<input type="hidden" id="totalPageCount" value="${totalPageCount}" />
                  		<span class="lbl">跳到 <input type="text" id="inputPage" value="${currentPageNo}" size="1" maxlength="3" /> 页<a href='javascript:jump_to(document.getElementById("inputPage").value);'><i>Go！</i></a></span>
                  	</li>
                  </c:if>
                  
				  <c:if test="${currentPageNo < totalPageCount }">
                  	<li class="next"><a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?name=${name}&category1_id=${category1_id}&category2_id=${category2_id}&category3_id=${category3_id}&currentPageNo=${currentPageNo+1}&orderName=${orderName}&highOrLow=${highOrLow}"><i class="fa fa-angle-right">下一页</i></a></li>
                  	<li class="next"><a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?name=${name}&category1_id=${category1_id}&category2_id=${category2_id}&category3_id=${category3_id}&currentPageNo=${totalPageCount}&orderName=${orderName}&highOrLow=${highOrLow}"><i>尾页</i></a></li>
                  </c:if>
                </ul>
                <!-- /.list-inline --> 
              </div>
              <!-- /.pagination-container --> 
            </div>
            <!-- /.col --> 
          </div>
          <!-- /.row --> 
        </div>
        <!-- ==============================页码栏 : END============================== -->
        
        <!-- ==============================分页内容============================== -->
        <div class="search-result-container ">
          <div id="myTabContent" class="tab-content category-list">
            <div class="tab-pane active " id="grid-container">
            
              <div class="category-product">
                <div class="row">
                
	     		<c:forEach var="shopGoods" items="${shopGoodsList}" >
                  <!-- 商品单例 -->
                  <div class="col-sm-6 col-md-4 col-lg-3">
                  <div class="item">
                    <div class="products">
                      <div class="product">
                        
                        <!-- 商品图片 -->
                        <div class="product-image">
                          <div class="image"> 
	                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=${shopGoods.id}">
	                             <img src="${pageContext.request.contextPath}${shopGoods.picPojoPath}" title="${shopGoods.description}"> 
	                          </a> 
                          </div>
                          <!-- /.image -->
                        </div>
                        <!-- /.product-image --><!-- /.商品图片 -->
                        
                        <!-- 商品简略信息 -->
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=${shopGoods.id}">${shopGoods.name}</a></h3>
                          <div class="description"> </div>
                          <div class="product-price"> <span class="price"> ￥${shopGoods.price} </span> </div>
                          <!-- /.product-price --> <!-- /.商品简略信息 -->
                        </div>
                        
                        <!-- /.product-info --><!-- 商品操作 -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" title="Add to cart"> <i class="fa fa-shopping-cart"  id="bbbbbbb${shopGoods.id + 24}" goodsId="${shopGoods.id}">+购物车</i> </button> <!-- 李长城部分 -->
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=${shopGoods.id}" title="details"> <i class="icon fa fa-heart">详情</i> </a> </li>	<!-- 陈蔚星部分，去商品单例页 -->
                            </ul>
                          </div>
                          <!-- /.action --> 
                        </div>
                        <!-- /.cart --> 
                        
                      </div>
                      <!-- /.product -->
                    </div>
                    <!-- /.products --> 
                  </div>
                  <!-- /.item -->
                  </div>
                  <!-- /.col-sm-6 col-md-4 col-lg-3 -->
                  <!-- /.商品单例 -->
                </c:forEach>
                
                <c:if test="${shopGoodsList == null}">
                	<span class="lbl" style="font-size:25px;">抱歉，没有您要找的商品</span>
                </c:if>
                  
                </div>
                <!-- /.row --> 
              </div>
              <!-- /.category-product --> 
              
            </div>
            <!-- /.tab-pane -->
            
            
          </div>
          <!-- /.tab-content -->
          
          <div class="clearfix filters-container bottom-row">
            <div class="text-right">
              <div class="pagination-container">
                <ul class="list-inline list-unstyled">
                  <li><span class="lbl">共 ${totalPageCount} 页，当前 ${currentPageNo} 页</span></li>
                  
				  <c:if test="${currentPageNo > 1}">
                  	<li class="prev"><a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?name=${name}&currentPageNo=1"><i>首页</i></a></li>
                  	<li class="prev"><a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?name=${name}&currentPageNo=${currentPageNo-1}"><i class="fa fa-angle-left">上一页</i></a></li>
                  </c:if>
                  
				  <c:if test="${totalPageCount > 1 }">
                  	<li>
						<input type="hidden" id="totalPageCount" value="${totalPageCount}" />
                  		<span class="lbl">跳到 <input type="text" id="inputPage" value="${currentPageNo}" size="1" maxlength="3" /> 页<a href='javascript:jump_to(document.getElementById("inputPage").value);'><i>Go！</i></a></span>
                  	</li>
                  </c:if>
                  
				  <c:if test="${currentPageNo < totalPageCount }">
                  	<li class="next"><a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?name=${name}&currentPageNo=${currentPageNo+1}"><i class="fa fa-angle-right">下一页</i></a></li>
                  	<li class="next"><a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?name=${name}&currentPageNo=${totalPageCount}"><i>尾页</i></a></li>
                  </c:if>
                </ul>
                <!-- /.list-inline --> 
              </div>
              <!-- /.pagination-container --> 
            <!-- /.text-right --> 
            
          </div>
          <!-- /.filters-container --> 
          
        </div>
        <!-- ==============================分页内容 : END============================== -->
        <!-- /.search-result-container --> 
        
      </div>
      <!-- /.col-xs-12 col-sm-12 col-md-3 logo-holder --> 
    </div>
    <!-- /.content-right -->
      
      
    </div>
    <!-- /.row --> 
    </div>
  <!-- /.container --> 
  
</div>
<!-- /.body-content --> 

<!-- ============================================== BRANDS CAROUSEL合作商标logo广告 ============================================== -->
    <div id="brands-carousel" class="logo-slider">
      <div style="margin-left:45%;"><h2>合作商标</h2></div>
      <div class="logo-slider-inner">
        <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
          <div class="item m-t-15"> <a href="#" class="image"> <img data-echo="${pageContext.request.contextPath}/assets/images/brands/brand1.png" src="${pageContext.request.contextPath}/assets/images/blank.gif" alt=""> </a> </div>
          <!--/.item-->
          
          <div class="item m-t-10"> <a href="#" class="image"> <img data-echo="${pageContext.request.contextPath}/assets/images/brands/brand2.png" src="${pageContext.request.contextPath}/assets/images/blank.gif" alt=""> </a> </div>
          <!--/.item-->
          
          <div class="item"> <a href="#" class="image"> <img data-echo="${pageContext.request.contextPath}/assets/images/brands/brand3.png" src="${pageContext.request.contextPath}/assets/images/blank.gif" alt=""> </a> </div>
          <!--/.item-->
          
          <div class="item"> <a href="#" class="image"> <img data-echo="${pageContext.request.contextPath}/assets/images/brands/brand4.png" src="${pageContext.request.contextPath}/assets/images/blank.gif" alt=""> </a> </div>
          <!--/.item-->
          
          <div class="item"> <a href="#" class="image"> <img data-echo="${pageContext.request.contextPath}/assets/images/brands/brand5.png" src="${pageContext.request.contextPath}/assets/images/blank.gif" alt=""> </a> </div>
          <!--/.item-->
          
          <div class="item"> <a href="#" class="image"> <img data-echo="${pageContext.request.contextPath}/assets/images/brands/brand6.png" src="${pageContext.request.contextPath}/assets/images/blank.gif" alt=""> </a> </div>
          <!--/.item-->
          
          <div class="item"> <a href="#" class="image"> <img data-echo="${pageContext.request.contextPath}/assets/images/brands/brand2.png" src="${pageContext.request.contextPath}/assets/images/blank.gif" alt=""> </a> </div>
          <!--/.item-->
          
          <div class="item"> <a href="#" class="image"> <img data-echo="${pageContext.request.contextPath}/assets/images/brands/brand4.png" src="${pageContext.request.contextPath}/assets/images/blank.gif" alt=""> </a> </div>
          <!--/.item-->
          
          <div class="item"> <a href="#" class="image"> <img data-echo="${pageContext.request.contextPath}/assets/images/brands/brand1.png" src="${pageContext.request.contextPath}/assets/images/blank.gif" alt=""> </a> </div>
          <!--/.item-->
          
          <div class="item"> <a href="#" class="image"> <img data-echo="${pageContext.request.contextPath}/assets/images/brands/brand5.png" src="${pageContext.request.contextPath}/assets/images/blank.gif" alt=""> </a> </div>
          <!--/.item--> 
        </div>
        <!-- /.owl-carousel #logo-slider --> 
      </div>
      <!-- /.logo-slider-inner --> 
      
    </div>
    <!-- /.logo-slider --> 
    <!-- ============================================== BRANDS CAROUSEL合作商标logo广告 : END ============================================== -->

  <!-- ============================================== INFO BOXES我们承诺 ============================================== -->
  <div class="row our-features-box">
  	<div style="margin-top:-2%; margin-left:46%;"><h2>我们承诺</h2></div>
     <div class="container">
      <ul>
        <li>
          <div class="feature-box">
            <div class="icon-truck"></div>
            <div class="content-blocks">合法经营</div>
          </div>
        </li>
        <li>
          <div class="feature-box">
            <div class="icon-support"></div>
            <div class="content-blocks">投诉电话：020-3223-1258</div>
          </div>
        </li>
        <li>
          <div class="feature-box">
            <div class="icon-money"></div>
            <div class="content-blocks">退款保证</div>
          </div>
        </li>
        <li>
          <div class="feature-box">
            <div class="icon-return"></div>
            <div class="content">30天退货</div>
          </div>
        </li>
        
      </ul>
    </div>
  </div>
        <!-- /.info-boxes --> 
        <!-- ============================================== INFO BOXES : END ============================================== --> 

<%@include file="/jsp/common/foot.jsp"%>

