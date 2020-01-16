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
                <input class="search-field" id="searchValue" name="name" placeholder="男装" value="${name}" />
                <input type="submit" class="search-button" id="search" value="搜索" />
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
                  <div class="pull-left"> </div>
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


	<div class="breadcrumb">
		<div class="container">
		
		</div><!-- /.container -->
	</div><!-- /.breadcrumb -->
	<div class="body-content outer-top-xs">
		<div class='container'>
			<div class='row single-product'>
				<div class='col-xs-12 col-sm-12 col-md-3 sidebar'>
					<div class="sidebar-module-container">
    
		<!-- ============================================== NEWSLETTER公告栏模块 ============================================== -->
        <!-- <div class="sidebar-widget newsletter outer-bottom-small">
          <h3 class="section-title">公告栏</h3>
          <div class="sidebar-widget-body outer-top-xs">
            <ul>
                <li><a href="#">净化购买坏境通知</a></li>  <p></p>
                <li><a href="#">双十全场半价</a></li>  <p></p>
                <li><a href="#">2020年一月维护更新</a></li>  <p></p>
            </ul>
            <form>
              <div class="form-group">
                <label class="sr-only" for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="您的意见...">
              </div>
              <button class="btn btn-primary">提交</button>=
            </form>
          </div>
          /.sidebar-widget-body 
        </div> -->
        <!-- /.sidebar-widget --> 
        <!-- ============================================== NEWSLETTER公告栏模块 : END ============================================== --> 				

		<!-- ============================================== SPECIAL OFFER特别推出模块 ============================================== -->
        
        <div class="sidebar-widget outer-bottom-small">
          <h3 class="section-title">特别推出</h3>
          <div class="sidebar-widget-body outer-top-xs">
            <div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
            
              <!-- 子模块1 -->
              <div class="item">
                <div class="products special-product">
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1"> <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt1.jpg" alt=""> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">纯棉t恤男短袖T恤...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥69.00 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                  </div>
                  
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=2"> <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt2.jpg" alt=""> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=2">夏短袖T恤男潮牌...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥69.00 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                  </div>
                  
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=3"> <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt3.jpg" alt=""> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=3">纯棉白色t恤女短袖女...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥128.00 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                  </div>
                </div>
              </div>
              
              <!-- 子模块2 -->
              <div class="item">
                <div class="products special-product">
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=17"> <img src="${pageContext.request.contextPath}/assets/images/products/shortshirt/shortshirt1.jpg" alt=""> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=17">男士修身短袖衬衫韩...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥119.00 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=18"> <img src="${pageContext.request.contextPath}/assets/images/products/shortshirt/shortshirt2.jpg" alt=""> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=18">森马男士短袖衬衫青...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥59.00 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=19"> <img src="${pageContext.request.contextPath}/assets/images/products/shortshirt/shortshirt3.jpg" alt=""> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=19">花花公子短袖衬衫男夏...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥299.00 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                </div>
              </div>
              
              <!-- 子模块3 -->
              <div class="item">
                <div class="products special-product">
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=21"> <img src="${pageContext.request.contextPath}/assets/images/products/beixin/beixin1.jpg"  alt=""> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=21">三枪男士背心纯棉t...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥69.00 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=22"> <img src="${pageContext.request.contextPath}/assets/images/products/beixin/beixin2.jpg" alt=""> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=22">浪莎男士背心纯棉青年...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥69.00 </span> </div>
                            <!-- /.product-price --> 
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=23"> <img src="${pageContext.request.contextPath}/assets/images/products/beixin/beixin3.jpg" alt=""> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=23">迪卡侬运动背心男夏...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥128.00 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                </div>
              </div>
              
              
              
            </div>
          </div>
          <!-- /.sidebar-widget-body --> 
        </div>
        <!-- /.sidebar-widget --> 
        <!-- ============================================== SPECIAL OFFER特别推出模块 : END ============================================== -->

		<!-- ============================================== PRODUCT TAGS商品推荐详细类型 ============================================== -->
        <div class="sidebar-widget product-tag">
          <h3 class="section-title">商品推荐类型</h3>
          <div class="sidebar-widget-body outer-top-xs">
            <div class="tag-list"> 
            	<a class="item" title="牛仔衣" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=33">牛仔衣</a> 
            	<a class="item active" title="卫衣" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=34">卫衣</a> 
            	<a class="item" title="工装裤" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=47">工装裤</a> 
            	<a class="item" title="哈伦裤" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=46">哈伦裤</a> 
            	<a class="item" title="高腰裙" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=50">高腰裙</a> 
            	<a class="item" title="篮球鞋" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=60">篮球鞋</a> 
            	<a class="item" title="帆布鞋" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=63">帆布鞋</a> 
            	<a class="item" title="电脑包" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=80">电脑包</a> 
            	<a class="item" title="圆框眼镜" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category2_id=26">圆框眼镜</a> 
            </div>
            <!-- /.tag-list --> 
          </div>
          <!-- /.sidebar-widget-body --> 
        </div>
        <!-- /.sidebar-widget --> 
        <!-- ============================================== PRODUCT TAGS商品推荐详细类型 : END ============================================== --> 
        
        
        <!-- ============================================== Special Deals特价甩卖模块 ============================================== -->
        
        <div class="sidebar-widget outer-bottom-small">
          <h3 class="section-title">特价甩卖</h3>
          <div class="sidebar-widget-body outer-top-xs">
            <div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
            
              <!-- 模块1 -->
              <div class="item">
                <div class="products special-product">
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=26"> <img src="${pageContext.request.contextPath}/assets/images/products/cowboy/cowboy1.jpg"  alt=""> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=26">森马牛仔外套男春秋装...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥179.90 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=27"> <img src="${pageContext.request.contextPath}/assets/images/products/cowboy/cowboy2.jpg"  alt=""> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=27">破洞牛仔外套男春季...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥137 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=28"> <img src="${pageContext.request.contextPath}/assets/images/products/cowboy/cowboy3.jpg"  alt="image"> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=28">美国calvin klein jeans...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥108 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                </div>
              </div>
              
              <!-- 模块2 -->
              <div class="item">
                <div class="products special-product">
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=33"> <img src="${pageContext.request.contextPath}/assets/images/products/weiyi/weiyi1.jpg" alt=""> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=33">森马卫衣男连帽2019...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥139.90 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=34"> <img src="${pageContext.request.contextPath}/assets/images/products/weiyi/weiyi2.jpg" alt=""> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=34">ONLY夏季新款宽松...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥199.00 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=35"> <img src="${pageContext.request.contextPath}/assets/images/products/weiyi/weiyi3.jpg" alt=""> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=35">森马卫衣男潮ins连...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥139.90 </span> </div>
                            <!-- /.product-price --> 
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                </div>
              </div>
              
              <!-- 模块3 -->
              <div class="item">
                <div class="products special-product">
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=40"> <img src="${pageContext.request.contextPath}/assets/images/products/gongzhuangku/gongzhuangku1.jpg" alt="images">
                              <div class="zoom-overlay"></div>
                              </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=40">森马男士休闲裤九分...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥139.90 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=41"> <img src="${pageContext.request.contextPath}/assets/images/products/gongzhuangku/gongzhuangku2.jpg"  alt="">
                              <div class="zoom-overlay"></div>
                              </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=41">花花公子男装裤子男...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥139.00 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                  <div class="product">
                    <div class="product-micro">
                      <div class="row product-micro-row">
                        <div class="col col-xs-5">
                          <div class="product-image">
                            <div class="image"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=42"> <img src="${pageContext.request.contextPath}/assets/images/products/gongzhuangku/gongzhuangku3.jpg" alt="image"> </a> </div>
                            <!-- /.image --> 
                            
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-xs-7">
                          <div class="product-info">
                            <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=42">夏季裤子男宽松束脚...</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ￥88.00 </span> </div>
                            <!-- /.product-price --> 
                            
                          </div>
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-micro-row --> 
                    </div>
                    <!-- /.product-micro --> 
                    
                  </div>
                </div>
              </div>
              
              
              
            </div>
          </div>
          <!-- /.sidebar-widget-body --> 
        </div>
        <!-- /.sidebar-widget --> 
        <!-- ============================================== SPECIAL DEALS特价甩卖模块 : END ============================================== -->

		</div>
		</div><!-- /.sidebar -->
		
	
	<!-- ============================================== 右边整体内容 ============================================== -->
	<div class='col-xs-12 col-sm-12 col-md-9 rht-col'>
   	<div class="detail-block">
	<div class="row">
                
	<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 gallery-holder">
    <div class="product-item-holder size-big single-product-gallery small-gallery">

		<!-- 上端大图片 -->
        <div id="owl-single-product">
            <div class="single-product-gallery-item" id="slide1">
                <a data-lightbox="image-1" data-title="Gallery" href="${pageContext.request.contextPath}${shopGoods.picPojoPath}">
                    <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}${shopGoods.picPojoPath}" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <%-- <div class="single-product-gallery-item" id="slide2">
                <a data-lightbox="image-1" data-title="Gallery" href="${pageContext.request.contextPath}/assets/images/products/p2.jpg">
                    <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p2.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide3">
                <a data-lightbox="image-1" data-title="Gallery" href="${pageContext.request.contextPath}/assets/images/products/p3.jpg">
                    <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p3.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide4">
                <a data-lightbox="image-1" data-title="Gallery" href="${pageContext.request.contextPath}/assets/images/products/p4.jpg">
                    <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p4.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide5">
                <a data-lightbox="image-1" data-title="Gallery" href="${pageContext.request.contextPath}/assets/images/products/p5.jpg">
                    <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p5.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide6">
                <a data-lightbox="image-1" data-title="Gallery" href="${pageContext.request.contextPath}/assets/images/products/p6.jpg">
                    <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p6.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide7">
                <a data-lightbox="image-1" data-title="Gallery" href="${pageContext.request.contextPath}/assets/images/products/p7.jpg">
                    <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p7.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide8">
                <a data-lightbox="image-1" data-title="Gallery" href="${pageContext.request.contextPath}/assets/images/products/p8.jpg">
                    <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p8.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide9">
                <a data-lightbox="image-1" data-title="Gallery" href="${pageContext.request.contextPath}/assets/images/products/p9.jpg">
                    <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p9.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item --> --%>
        </div><!-- /.single-product-slider -->

		<!-- 下端滑动小图片 -->
        <%-- <div class="single-product-gallery-thumbs gallery-thumbs">
            <div id="owl-single-product-thumbnails">
                <div class="item">
                    <a class="horizontal-thumb active" data-target="#owl-single-product" data-slide="1" href="#slide1">
                        <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p1.jpg" />
                    </a>
                </div>

                <div class="item">
                    <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="2" href="#slide2">
                        <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p2.jpg">
                    </a>
                </div>
                <div class="item">

                    <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="3" href="#slide3">
                        <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p3.jpg" />
                    </a>
                </div>
                <div class="item">

                    <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="4" href="#slide4">
                        <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p4.jpg" />
                    </a>
                </div>
                <div class="item">

                    <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="5" href="#slide5">
                        <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p5.jpg" />
                    </a>
                </div>
                <div class="item">

                    <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="6" href="#slide6">
                        <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p6.jpg" />
                    </a>
                </div>
                <div class="item">

                    <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="7" href="#slide7">
                        <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p7.jpg" />
                    </a>
                </div>
                <div class="item">

                    <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="8" href="#slide8">
                        <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p8.jpg" />
                    </a>
                </div>
                <div class="item">

                    <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="9" href="#slide9">
                        <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/assets/images/blank.gif" data-echo="${pageContext.request.contextPath}/assets/images/products/p9.jpg" />
                    </a>
                </div>
            </div><!-- /#owl-single-product-thumbnails -->
        </div><!-- /.gallery-thumbs --> --%>

    </div><!-- /.single-product-gallery -->
	</div><!-- /.gallery-holder -->      
  		
  		<!-- ============================================== 商品单例信息 ============================================== -->
		<div class='col-sm-12 col-md-8 col-lg-8 product-info-block'>
			<div class="product-info">
				<h1 class="name">${shopGoods.name}</h1>		<!-- 商品名 -->
				
				<div class="rating-reviews m-t-20">
					<div class="row">
                        <div class="col-lg-12">
						<div class="pull-left">
							<span style="font-size:18px;">尺码 ：</span>
						</div>
						<div class="pull-left">
							<span style="font-size:18px;">
								 ${shopGoods.size}
							</span>
						</div>
                        </div>
					</div><!-- /.row -->		
				</div><!-- /.rating-reviews -->

				<div class="stock-container info-container m-t-10">
					<div class="row">
                             <div class="col-lg-12">
						<div class="pull-left">
							<div class="stock-box">
								<span class="label" style="font-size:18px;">颜色 ：</span>
							</div>	
						</div>
						<div class="pull-left">
							<div class="stock-box">
								<span class="value" style="font-size:14px;">${shopGoods.color}</span>
							</div>	
						</div>
                                 </div>
					</div><!-- /.row -->	
				</div><!-- /.stock-container -->

				<div class="description-container m-t-20">
					<p>评分 ： ${shopGoods.score}</p>
				</div><!-- /.description-container -->

				<div class="description-container m-t-20">
					<p>店家 ：${sellName}</p>
				</div><!-- /.description-container -->

				<div class="price-container info-container m-t-30">
					<div class="row">
						

						<div class="col-sm-6 col-xs-6">
							<div class="price-box">
								<span class="price"> ￥${shopGoods.price}</span>
							</div>
						</div>

					</div><!-- /.row -->
				</div><!-- /.price-container -->

				<div class="quantity-container info-container">
					<div class="row">
						
						<div class="qty">
							<span class="label">数量 :</span>
						</div>
						
						<div class="qty-count">
							<div class="cart-quantity">
								<div class="quant-input">
									<!-- 增加/减少该商品数量（在jquery中） -->
					                <div class="arrows">
					                  <div id="addGoods" onclick="add();" class="arrow plus gradient"><span class="ir"><i class="icon fa fa-sort-asc"></i></span></div>
					                  <div id="subGoods" onclick="sub();" class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
					                </div>
					                <input type="text" id="goodsNum" value="1" maxlength="5">
				              </div>
				            </div>
						</div>

						<div class="add-btn">
                            <a id="buyNow" goodsId="${shopGoods.id}" onclick="buy();" class="btn-lg btn btn-uppercase btn-primary shop-now-button" style="background-color:#4169E1; color:white;">立即购买</a>	<!-- 陈蔚星部分，去购买页 -->
							<a id="bbshopcar" goodsId="${shopGoods.id}"  onclick="shopcar();" class="btn btn-primary" ><i class="fa fa-shopping-cart inner-right-vs"></i> 加入购物车</a>
						</div>

					</div><!-- /.row -->
				</div><!-- /.quantity-container -->
				
			</div><!-- /.product-info -->
		</div><!-- /.col-sm-7 -->
  		<!-- ============================================== 商品单例信息 : END ============================================== -->
		
	</div><!-- /.row -->
	</div>
				
	<!-- ============================================== 商品详情和评论 ============================================== -->
	<div class="product-tabs inner-bottom-xs">
		<div class="row">
			<div class="col-sm-12 col-md-3 col-lg-3">
				<ul id="product-tabs" class="nav nav-tabs nav-tab-cell">
					<li class="active"><a data-toggle="tab" href="#description">详情</a></li>	<!-- 左边详情选项 -->
					<li><a data-toggle="tab" href="#review">评论</a></li>		<!-- 左边评论选项 -->
				</ul><!-- /.nav-tabs #product-tabs -->
			</div>
			<div class="col-sm-12 col-md-9 col-lg-9">

				<div class="tab-content">
					
					<!-- 右边详情信息 -->
					<div id="description" class="tab-pane in active">
						<div class="product-tab">
							<p class="text">类型：${category1}-->${category2}-->${category3}</p>
							<p class="text">${shopGoods.description}</p>
						</div>	
					</div><!-- /.tab-pane -->

					<!-- 右边评论信息 -->
					<div id="review" class="tab-pane">
					
						<div class="product-tab">
							<div class="product-add-review">
							
								<div class="review-table">
									<div class="table-responsive">
										<table class="table" style="table-layout:fixed;">
										
											<tbody>
											
											  <c:if test="${shopCommentList != null}">
											  	  <c:if test="${shopCommentList.size() == 0}">
											  	  	<tr>
														<td>该商品还没有评论</td>
													</tr>
											  	  </c:if>
											  
												  <c:forEach var="shopComment" items="${shopCommentList}">
												  
												  	<input type="hidden" id="comment_id" value="${shopComment.id}" />
												  	
													<tr style="border-bottom:1px solid #A9A9A9;">
														<td style="width:60%; word-wrap:break-word; text-align:left;">.${shopComment.content}</td>
														<td style="width:20%;">.${shopComment.commentDate}</td>
														<td style="width:20%;">${shopComment.buyCode}</td>
													</tr>
												  </c:forEach>
											  </c:if>
											  
											  <c:if test="${shopCommentList == null}">
											  	<tr>
													<td>该商品还没有评论</td>
												</tr>
											  </c:if>
											  
											</tbody>
											
										</table><!-- /.table .table-bordered -->
									</div><!-- /.table-responsive -->
								</div><!-- /.review-table -->

							</div><!-- /.product-add-review -->
				        </div><!-- /.product-tab -->
				        
					</div><!-- /.tab-pane -->

				</div><!-- /.tab-content -->
			</div><!-- /.col -->
		</div><!-- /.row -->
	</div><!-- /.product-tabs -->
	<!-- ============================================== 商品详情和评论 : END ============================================== -->

		<!-- ============================================== SCROLL TABS商品广告模块 新鲜出炉 ============================================== -->
        <div id="product-tabs-slider" class="scroll-tabs outer-top-vs">
          <div class="more-info-tab clearfix ">
            <h3 class="new-product-title pull-left">新鲜出炉</h3>
            <ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
              <!-- 一个带超链接的类型列表，已删除 -->
            </ul>
            <!-- /.nav-tabs --> 
          </div>
          <div class="tab-content outer-top-xs">
            <div class="tab-pane in active" id="all">
              <div class="product-slider">
                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
                
                  <div class="item item-carousel">		<!-- 一 -->
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=4">
                             <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt4.jpg" alt=""> 
                          </a> 
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <!-- 商品图片 -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=4">Dickies短袖男美国蒂...</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> ￥148.00 </span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- 商品信息 -->
                        
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb13" goodsId="4">购物车+</i> </button>
                                
                              </li>
                              <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=4" title="detail"> <i class="icon fa fa-heart">详情</i> </a> </li>
                            </ul>
                          </div>
                          <!-- 商品操作 --> 
                        </div>
                        <!-- /.cart --> 
                      </div>
                      <!-- /.product --> 
                      
                    </div>
                    <!-- /.products --> 
                  </div>
                  <!-- 商品单例 -->
                  
                  <!--二 -->
                  <div class="item item-carousel">		
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=5">
                             <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt5.jpg" alt=""> 
                          </a>
                           </div>
                          <!-- /.image -->
                          
                          
                        </div>
                        <!-- 商品图片 -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=5">林俊杰同款夏季ins...</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> ￥139.90 </span></div>
                          <!-- 商品价格 --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb14" goodsId="5">购物车+</i> </button>
                                
                              </li>
                              <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=5" title="detail"> <i class="icon fa fa-heart">详情</i> </a> </li>
                            </ul>
                          </div>
                          <!-- 商品操作 --> 
                        </div>
                        <!-- /.cart --> 
                      </div>
                      <!-- /.product --> 
                      
                    </div>
                    <!-- /.products --> 
                  </div>
                  <!-- /.item -->
                  
                  <div class="item item-carousel">		
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=6">
                             <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt6.jpg" alt=""> 
                          </a>
                           </div>
                          <!-- /.image -->
                          
                        </div>
                        <!-- 商品图片 -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=6">余文乐短袖男港风t恤...</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> ￥89.00 </span></div>
                          <!-- 商品价格 --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb15" goodsId="6">购物车+</i> </button>
                                
                              </li>
                              <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=6" title="detail"> <i class="icon fa fa-heart">详情</i> </a> </li>
                            </ul>
                          </div>
                          <!-- 商品操作 --> 
                        </div>
                        <!-- /.cart --> 
                      </div>
                      <!-- /.product --> 
                      
                    </div>
                    <!-- /.products --> 
                  </div>
                  <!-- /.item -->
                  
                  <div class="item item-carousel">		
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=7">
                             <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt7.jpg" alt=""> 
                          </a>
                           </div>
                          <!-- /.image -->
                          
                        </div>
                        <!-- 商品图片 -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=7">2019新款夏季体桖短...</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> ￥99.00 </span></div>
                          <!-- 商品价格 --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb16" goodsId="7">购物车+</i> </button>
                                
                              </li>
                              <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=7" title="detail"> <i class="icon fa fa-heart">详情</i> </a> </li>
                            </ul>
                          </div>
                          <!-- 商品操作 --> 
                        </div>
                        <!-- /.cart --> 
                      </div>
                      <!-- /.product --> 
                      
                    </div>
                    <!-- /.products --> 
                  </div>
                  <!-- /.item -->
                  
                  <div class="item item-carousel">		
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=8">
                             <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt8.jpg" alt=""> 
                          </a>
                           </div>
                          <!-- /.image -->
                          
                        </div>
                        <!-- 商品图片 -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=8">夏季短袖t恤男士潮流...</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> ￥78.90 </span></div>
                          <!-- 商品价格 --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb17" goodsId="8">购物车+</i> </button>
                                
                              </li>
                              <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=8" title="detail"> <i class="icon fa fa-heart">详情</i> </a> </li>
                            </ul>
                          </div>
                          <!-- 商品操作 --> 
                        </div>
                        <!-- /.cart --> 
                      </div>
                      <!-- /.product --> 
                      
                    </div>
                    <!-- /.products --> 
                  </div>
                  <!-- /.item -->
                  
                  <div class="item item-carousel">		
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=9">
                             <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt9.jpg" alt=""> 
                          </a>
                           </div>
                          <!-- /.image -->
                          
                        </div>
                        <!-- 商品图片 -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=9">花花公子男士短袖t...</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> ￥99.00 </span></div>
                          <!-- 商品价格 --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb18" goodsId="9">购物车+</i> </button>
                                
                              </li>
                              <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=9" title="detail"> <i class="icon fa fa-heart">详情</i> </a> </li>
                            </ul>
                          </div>
                          <!-- 商品操作 --> 
                        </div>
                        <!-- /.cart --> 
                      </div>
                      <!-- /.product --> 
                      
                    </div>
                    <!-- /.products --> 
                  </div>
                  <!-- /.item -->
                  
                  
                </div>
                <!-- /.home-owl-carousel --> 
              </div>
              <!-- /.product-slider --> 
            </div>
            <!-- /.tab-pane -->
            
            <div class="tab-pane" id="smartphone">
              <div class="product-slider">
                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p7.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p7_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag sale"><span>sale</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p8.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p8_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p9.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p9_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag sale"><span>sale</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p10.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p10_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p11.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p11_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag hot"><span>hot</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p12.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p12_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag hot"><span>hot</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                <!-- /.home-owl-carousel --> 
              </div>
              <!-- /.product-slider --> 
            </div>
            <!-- /.tab-pane -->
            
            <div class="tab-pane" id="laptop">
              <div class="product-slider">
                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p15.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p15_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p2.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p2_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p8.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p8_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag sale"><span>sale</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p14.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p14_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p12.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p12_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag hot"><span>hot</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p9.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p9_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag sale"><span>sale</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Apple Iphone 5s 32GB</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                <!-- /.home-owl-carousel --> 
              </div>
              <!-- /.product-slider --> 
            </div>
            <!-- /.tab-pane -->
            
            <div class="tab-pane" id="apple">
              <div class="product-slider">
                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p13.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p13_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag sale"><span>sale</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p11.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p11_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag hot"><span>hot</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p4.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p4_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag sale"><span>sale</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p1.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p1_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p10.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p10_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Floral Print Buttoned</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                  
                  <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> 
                          <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">
                             <img src="${pageContext.request.contextPath}/assets/images/products/p6.jpg" alt=""> 
                              <img src="${pageContext.request.contextPath}/assets/images/products/p6_hover.jpg" alt="" class="hover-image">
                          </a>
                          
                          </div>
                          <!-- /.image -->
                          
                          <div class="tag hot"><span>hot</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1">Samsung Galaxy S4</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
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
                <!-- /.home-owl-carousel --> 
              </div>
              <!-- /.product-slider --> 
            </div>
            <!-- /.tab-pane --> 
            
          </div>
          <!-- /.tab-content --> 
        </div>
        <!-- /.scroll-tabs --> 
        <!-- ============================================== SCROLL TABS商品广告模块 新鲜出炉 : END ============================================== --> 
        
        <!-- ============================================== Featured特色商品模块 ============================================== -->
        <section class="section new-arriavls">
          <h3 class="section-title">特色商品</h3>
          <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">
          
            <div class="item item-carousel">		
              <div class="products">
                <div class="product">
                  <div class="product-image">
                    <div class="image"> 
                    <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=10">
                       <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt10.jpg" alt=""> 
                    </a>
                     </div>
                    <!-- /.image -->
                    
                  </div>
                  <!-- 商品图片 -->
                  
                  <div class="product-info text-left">
                    <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=10">夏装莫代尔棉短袖t...</a></h3>
                    <div class="rating rateit-small"></div>
                    <div class="description"></div>
                    <div class="product-price"> <span class="price"> ￥105.00 </span></div>
                    <!-- 商品价格 --> 
                    
                  </div>
                  <!-- /.product-info -->
                  <div class="cart clearfix animate-effect">
                    <div class="action">
                      <ul class="list-unstyled">
                        <li class="add-cart-button btn-group">
                          <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb19" goodsId="10">购物车+</i> </button>
                          
                        </li>
                        <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=10" title="detail"> <i class="icon fa fa-heart">详情</i> </a> </li>
                      </ul>
                    </div>
                    <!-- 商品操作 --> 
                  </div>
                  <!-- /.cart --> 
                </div>
                <!-- /.product --> 
                
              </div>
              <!-- /.products --> 
            </div>
            <!-- /.item -->
            
            <div class="item item-carousel">		
              <div class="products">
                <div class="product">
                  <div class="product-image">
                    <div class="image"> 
                    <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=11">
                       <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt11.jpg" alt=""> 
                    </a>
                     </div>
                    <!-- /.image -->
                    
                    <div class="tag sale"><span>sale</span></div>
                  </div>
                  <!-- 商品图片 -->
                  
                  <div class="product-info text-left">
                    <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=11">太平鸟男装短袖T恤...</a></h3>
                    <div class="rating rateit-small"></div>
                    <div class="description"></div>
                    <div class="product-price"> <span class="price"> ￥66.00 </span></div>
                    <!-- 商品价格 --> 
                    
                  </div>
                  <!-- /.product-info -->
                  <div class="cart clearfix animate-effect">
                    <div class="action">
                      <ul class="list-unstyled">
                        <li class="add-cart-button btn-group">
                          <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb20" goodsId="11">购物车+</i> </button>
                          
                        </li>
                        <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=11" title="detail"> <i class="icon fa fa-heart">详情</i> </a> </li>
                      </ul>
                    </div>
                    <!-- 商品操作 --> 
                  </div>
                  <!-- /.cart --> 
                </div>
                <!-- /.product --> 
                
              </div>
              <!-- /.products --> 
            </div>
            <!-- /.item -->
            
            <div class="item item-carousel">		
              <div class="products">
                <div class="product">
                  <div class="product-image">
                    <div class="image"> 
                    <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=12">
                       <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt12.jpg" alt=""> 
                    </a>
                     </div>
                    <!-- /.image -->
                    
                  </div>
                  <!-- 商品图片 -->
                  
                  <div class="product-info text-left">
                    <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=12">森马短袖T恤男士夏季...</a></h3>
                    <div class="rating rateit-small"></div>
                    <div class="description"></div>
                    <div class="product-price"> <span class="price"> ￥87.00 </span></div>
                    <!-- 商品价格 --> 
                    
                  </div>
                  <!-- /.product-info -->
                  <div class="cart clearfix animate-effect">
                    <div class="action">
                      <ul class="list-unstyled">
                        <li class="add-cart-button btn-group">
                          <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb21" goodsId="12">购物车+</i> </button>
                          
                        </li>
                        <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=12" title="detail"> <i class="icon fa fa-heart">详情</i> </a> </li>
                      </ul>
                    </div>
                    <!-- 商品操作 --> 
                  </div>
                  <!-- /.cart --> 
                </div>
                <!-- /.product --> 
                
              </div>
              <!-- /.products --> 
            </div>
            <!-- /.item -->
            
            <div class="item item-carousel">		
              <div class="products">
                <div class="product">
                  <div class="product-image">
                    <div class="image"> 
                    <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=13">
                       <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt13.jpg" alt=""> 
                    </a>
                     </div>
                    <!-- /.image -->
                    
                  </div>
                  <!-- 商品图片 -->
                  
                  <div class="product-info text-left">
                    <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=13">短袖男士t恤夏季2019...</a></h3>
                    <div class="rating rateit-small"></div>
                    <div class="description"></div>
                    <div class="product-price"> <span class="price"> ￥86.50 </span></div>
                    <!-- 商品价格 --> 
                    
                  </div>
                  <!-- /.product-info -->
                  <div class="cart clearfix animate-effect">
                    <div class="action">
                      <ul class="list-unstyled">
                        <li class="add-cart-button btn-group">
                          <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb22" goodsId="13">购物车+</i> </button>
                          
                        </li>
                        <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=13" title="detail"> <i class="icon fa fa-heart">详情</i> </a> </li>
                      </ul>
                    </div>
                    <!-- 商品操作 --> 
                  </div>
                  <!-- /.cart --> 
                </div>
                <!-- /.product --> 
                
              </div>
              <!-- /.products --> 
            </div>
            <!-- /.item -->
            
            <div class="item item-carousel">		
              <div class="products">
                <div class="product">
                  <div class="product-image">
                    <div class="image"> 
                    <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=14">
                       <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt14.jpg" alt=""> 
                    </a>
                     </div>
                    <!-- /.image -->
                    
                  </div>
                  <!-- 商品图片 -->
                  
                  <div class="product-info text-left">
                    <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=14">男士夏季短袖t恤韩...</a></h3>
                    <div class="rating rateit-small"></div>
                    <div class="description"></div>
                    <div class="product-price"> <span class="price"> ￥113.00 </span></div>
                    <!-- 商品价格 --> 
                    
                  </div>
                  <!-- /.product-info -->
                  <div class="cart clearfix animate-effect">
                    <div class="action">
                      <ul class="list-unstyled">
                        <li class="add-cart-button btn-group">
                          <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb23" goodsId="14">购物车+</i> </button>
                          
                        </li>
                        <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=14" title="detail"> <i class="icon fa fa-heart">详情</i> </a> </li>
                      </ul>
                    </div>
                    <!-- 商品操作 --> 
                  </div>
                  <!-- /.cart --> 
                </div>
                <!-- /.product --> 
                
              </div>
              <!-- /.products --> 
            </div>
            <!-- /.item -->
            
            <div class="item item-carousel">		
              <div class="products">
                <div class="product">
                  <div class="product-image">
                    <div class="image"> 
                    <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=15">
                       <img src="${pageContext.request.contextPath}/assets/images/products/T-shirt/t-shirt15.jpg" alt=""> 
                    </a>
                     </div>
                    <!-- /.image -->
                    
                  </div>
                  <!-- 商品图片 -->
                  
                  <div class="product-info text-left">
                    <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=15">FILA斐乐官方男子短...</a></h3>
                    <div class="rating rateit-small"></div>
                    <div class="description"></div>
                    <div class="product-price"> <span class="price"> ￥99.00 </span></div>
                    <!-- 商品价格 --> 
                    
                  </div>
                  <!-- /.product-info -->
                  <div class="cart clearfix animate-effect">
                    <div class="action">
                      <ul class="list-unstyled">
                        <li class="add-cart-button btn-group">
                          <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb24" goodsId="15">购物车+</i> </button>
                          
                        </li>
                        <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=15" title="detail"> <i class="icon fa fa-heart">详情</i> </a> </li>
                      </ul>
                    </div>
                    <!-- 商品操作 --> 
                  </div>
                  <!-- /.cart --> 
                </div>
                <!-- /.product --> 
                
              </div>
              <!-- /.products --> 
            </div>
            <!-- /.item -->
                  
          </div>
          <!-- /.home-owl-carousel --> 
        </section>
        <!-- /.section --> 
        <!-- ============================================== Featured特色商品模块 : END ============================================== -->
			
	</div><!-- /.col -->
	<!-- ============================================== 右边整体内容 : END ============================================== -->
		
  	</div>
  	<!-- ============================================== container下端主要内容 : END ============================================== --> 
	</div>
	<!-- /#top-banner-and-menu顶部菜单及下端所有内容 --> 
</div>

	
	<!-- ============================================== BRANDS CAROUSEL合作商标logo广告 ============================================== -->
    <div id="brands-carousel" class="logo-slider">
      <div class="logo-slider-inner">
      	<div style="margin-left:45%;"><h2>合作商标</h2></div>
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
