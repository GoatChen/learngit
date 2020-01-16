<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta content="0;url=${pageContext.request.contextPath}/shopIndex/toIndex">

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
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=1" target="blank">- 衣服</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=2" target="blank">- 裤子</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=3" target="blank">- 裙子</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=4" target="blank">- 鞋子</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=5" target="blank">- 帽子</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=7" target="blank">- 眼镜</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=6" target="blank">- 背包</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=8" target="blank">- 其他</a></li>
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
                <!-- 购物车中其他信息 -->
                <!-- <div class="cart-item product-summary">
                  <div class="row">
                    <div class="col-xs-4">
                      <div class="image"> <a href="detail.html"><img src="assets/images/products/p4.jpg" alt=""></a> </div>
                    </div>
                    <div class="col-xs-7">
                      <h3 class="name"><a href="detail.html">Simple Product</a></h3>
                      <div class="price">$600.00</div>
                    </div>
                    <div class="col-xs-1 action"> <a href="#"><i class="fa fa-trash"></i></a> </div>
                  </div>
                </div>
                /.cart-item
                <div class="clearfix"></div>
                <hr> -->
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
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=1" target="blank" data-hover="dropdown">衣服</a>
                </li>
                <li class="dropdown mega-menu"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=2" target="blank" data-hover="dropdown">裤子 <span class="menu-label hot-menu hidden-xs">有热款</span> </a>
                </li>
                
                <li class="dropdown hidden-sm"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=3" target="blank" data-hover="dropdown">裙子</a> 
                </li>
                <li class="dropdown hidden-sm"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=4" target="blank" data-hover="dropdown">鞋子<span class="menu-label new-menu hidden-xs">有新款</span> </a> 
                </li>
                <li class="dropdown hidden-sm"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=5" target="blank" data-hover="dropdown">帽子</a> 
                </li>
                <li class="dropdown hidden-sm"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=7" target="blank" data-hover="dropdown">眼镜</a> 
                </li>
                <li class="dropdown mega-menu"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=6" target="blank" data-hover="dropdown">背包</a>
                </li>
                <li class="dropdown hidden-sm"> 
                	<a href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category1_id=8" target="blank" data-hover="dropdown">其他</a> 
                </li>
                
                <li class="dropdown  navbar-right special-menu"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=1" target="blank">新用户购买立减50元</a> </li>
                
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


<div class="body-content outer-top-vs" id="top-banner-and-menu">
  <!-- container下端主要内容 -->
  <div class="container">
    <div class="row"> 
      <!-- ============================================== SIDEBAR ============================================== -->
      <div class="col-xs-12 col-sm-12 col-md-3 sidebar"> 
        
        <!-- ================================== TOP NAVIGATION全部分类 ================================== -->
        <div class="side-menu animate-dropdown outer-bottom-xs">
          <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> 全部类别</div>
          <nav class="yamm megamenu-horizontal">
          
            <ul class="nav">
            
              <!-- 衣服类 -->
              <li class="dropdown menu-item" id="clothersCategory"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-diamond"></i>衣服</a>
                <ul class="dropdown-menu mega-menu" style="min-width:150%; overflow:auto;">
                  <li class="yamm-content">
                    
                    <input type="hidden" id="clothersCategory1" value="1"/>
                    
                    <div class="row" id="clothersCategoryItem">
                    
                    </div>
                    <!-- /.row --> 
                    
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> 
              </li>
              <!-- /.menu-item -->
              
              <!-- 裤子类 -->
              <li class="dropdown menu-item" id="trouserCategory"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-clock-o"></i>裤子</a> 
                <!-- ================================== MEGAMENU VERTICAL ================================== -->
                <ul class="dropdown-menu mega-menu" style="min-width:150%; overflow:auto;">
                  <li class="yamm-content">
                      
                    <input type="hidden" id="trouserCategory1" value="2"/>
                    
                    <div class="row" id="trouserCategoryItem">
                      
                    </div>
                    <!-- /.row --> 
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> 
                <!-- ================================== MEGAMENU VERTICAL ================================== --> 
              </li>
              <!-- /.menu-item -->
              
              <!-- 裙子类 -->
              <li class="dropdown menu-item" id="skirtCategory"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-paper-plane"></i>裙子</a> 
                <!-- ================================== MEGAMENU VERTICAL ================================== -->
                <ul class="dropdown-menu mega-menu" style="min-width:150%; overflow-x:auto;">
                  <li class="yamm-content">
                  
                    <input type="hidden" id="skirtCategory1" value="3"/>
                    
                    <div class="row" id="skirtCategoryItem">
                      
                    </div>
                    <!-- /.row --> 
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> 
              </li>
              <!-- /.menu-item -->
              
              <!-- 鞋子类 -->
              <li class="dropdown menu-item" id="shoesCategory"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-paw" aria-hidden="true"></i>鞋子</a>
                <ul class="dropdown-menu mega-menu" style="min-width:150%; overflow:auto;">
                  <li class="yamm-content">
                  
                    <input type="hidden" id="shoesCategory1" value="4"/>
                  
                    <div class="row" id="shoesCategoryItem">
                      
                    </div>
                    <!-- /.row --> 
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> </li>
              <!-- /.menu-item -->
              
              <!-- 帽子类 -->
              <li class="dropdown menu-item" id="hatCategory"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-laptop" aria-hidden="true"></i>帽子</a>
                <ul class="dropdown-menu mega-menu" style="min-width:150%; overflow:auto;">
                  <li class="yamm-content">
                  
                    <input type="hidden" id="hatCategory1" value="5"/>
                  
                    <div class="row" id="hatCategoryItem">
                      
                    </div>
                    <!-- /.row --> 
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> </li>
              <!-- /.menu-item -->
              
              <!-- 背包类 -->
              <li class="dropdown menu-item" id="packageCategory"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-shopping-bag" aria-hidden="true"></i>背包</a>
                <ul class="dropdown-menu mega-menu" style="min-width:150%; overflow:auto;">
                  <li class="yamm-content">
                  
                    <input type="hidden" id="packageCategory1" value="6"/>
                  
                    <div class="row" id="packageCategoryItem">
                      
                    </div>
                    <!-- /.row --> 
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> </li>
              <!-- /.menu-item -->
              
              <!-- 眼镜类 -->
              <li class="dropdown menu-item" id="glassesCategory"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-heartbeat"></i>眼镜</a>
                <ul class="dropdown-menu mega-menu" style="min-width:150%; overflow:auto;">
                  <li class="yamm-content">
                  
                    <input type="hidden" id="glassesCategory1" value="7"/>
                  
                    <div class="row" id="glassesCategoryItem">
                      
                    </div>
                    <!-- /.row --> 
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> 
              </li>
              <!-- /.menu-item -->
              
              <!-- 其他类 -->
              <li class="dropdown menu-item" id="otherCategory"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-futbol-o">其他</i></a> 
                <!-- ================================== MEGAMENU VERTICAL ================================== --> 
                <ul class="dropdown-menu mega-menu" style="min-width:150%; overflow:auto;">
                  <li class="yamm-content">
                  
                    <input type="hidden" id="otherCategory1" value="8"/>
                  
                    <div class="row" id="otherCategoryItem">
                      
                    </div>
                    <!-- /.row --> 
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> 
                <!-- ================================== MEGAMENU VERTICAL ================================== --> 
              </li>
              <!-- /.menu-item -->
              
            </ul>
            <!-- /.nav --> 
            
          </nav>
          <!-- /.megamenu-horizontal --> 
        </div>
        <!-- /.side-menu --> 
        <!-- ================================== TOP NAVIGATION全部分类 : END ================================== --> 
        
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
            	<a class="item" title="牛仔衣" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=33">牛仔衣</a>	<!-- 陈蔚星部分，去查询页 -->
            	<a class="item active" title="卫衣" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=34">卫衣</a>	<!-- 陈蔚星部分，去查询页 -->
            	<a class="item" title="工装裤" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=47">工装裤</a>	<!-- 陈蔚星部分，去查询页 -->
            	<a class="item" title="哈伦裤" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=46">哈伦裤</a>	<!-- 陈蔚星部分，去查询页 -->
            	<a class="item" title="高腰裙" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=50">高腰裙</a>	<!-- 陈蔚星部分，去查询页 -->
            	<a class="item" title="篮球鞋" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=60">篮球鞋</a>	<!-- 陈蔚星部分，去查询页 -->
            	<a class="item" title="帆布鞋" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=63">帆布鞋</a>	<!-- 陈蔚星部分，去查询页 -->
            	<a class="item" title="电脑包" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category3_id=80">电脑包</a>	<!-- 陈蔚星部分，去查询页 -->
            	<a class="item" title="圆框眼镜" href="${pageContext.request.contextPath}/shopIndex/selectShopGoods?category2_id=26">圆框眼镜</a>	<!-- 陈蔚星部分，去查询页 -->
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
        
        <!-- ============================================== Testimonials证明书 ============================================== -->
        <%-- <div class="sidebar-widget outer-top-vs ">
          <div id="advertisement" class="advertisement">
            <div class="item">
              <div class="avatar"><img src="${pageContext.request.contextPath}/assets/images/testimonials/member1.png" alt="Image"></div>
              <div class="testimonials"><em>"</em> Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat.<em>"</em></div>
              <div class="clients_author">John Doe <span>Abc Company</span> </div>
              <!-- /.container-fluid --> 
            </div>
            <!-- /.item -->
            
            <div class="item">
              <div class="avatar"><img src="${pageContext.request.contextPath}/assets/images/testimonials/member3.png" alt="Image"></div>
              <div class="testimonials"><em>"</em>Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat.<em>"</em></div>
              <div class="clients_author">Stephen Doe <span>Xperia Designs</span> </div>
            </div>
            <!-- /.item -->
            
            <div class="item">
              <div class="avatar"><img src="${pageContext.request.contextPath}/assets/images/testimonials/member2.png" alt="Image"></div>
              <div class="testimonials"><em>"</em>Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat.<em>"</em></div>
              <div class="clients_author">Saraha Smith <span>Datsun &amp; Co</span> </div>
              <!-- /.container-fluid --> 
            </div>
            <!-- /.item --> 
            
          </div>
          <!-- /.owl-carousel --> 
        </div> --%>
        
        <!-- ============================================== Testimonials证明书: END ============================================== -->
        
      </div>
      <!-- /.sidemenu-holder --> 
      <!-- ============================================== SIDEBAR : END ============================================== --> 
      
      <!-- ============================================== 右边内容 ============================================== -->
      <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder"> 
        <!-- ========================================== 轮播图 ========================================= -->
        
        <div id="hero">
          <div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
            <div class="item" style="background-image: url(${pageContext.request.contextPath}/assets/images/sliders/01.jpg);">
              <div class="container-fluid">
                <div class="caption bg-color vertical-center text-left">
                  <div class="slider-header fadeInDown-1">尖端品牌</div>
                  <div class="big-text fadeInDown-1"> 最新发布 </div>
                  <div class="excerpt fadeInDown-2 hidden-xs"> <span>星边粉色卫衣，让你的少女心爆棚</span> </div>
                  <div class="button-holder fadeInDown-3"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=39" class="btn-lg btn btn-uppercase btn-primary shop-now-button">立即购买</a> </div>	<!-- 陈蔚星部分，去商品单例页 -->
                </div>
                <!-- /.caption --> 
              </div>
              <!-- /.container-fluid --> 
            </div>
            <!-- /.item -->
            
            <div class="item" style="background-image: url(${pageContext.request.contextPath}/assets/images/sliders/02.jpg);">
              <div class="container-fluid">
                <div class="caption bg-color vertical-center text-left">
                  <div class="slider-header fadeInDown-1">春季 2019</div>
                  <div class="big-text fadeInDown-1"> 时尚连衣裙 </div>
                  <div class="excerpt fadeInDown-2 hidden-xs"> <span>居家、旅游、购物的最佳选择</span> </div>
                  <div class="button-holder fadeInDown-3"> <a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=60" class="btn-lg btn btn-uppercase btn-primary shop-now-button">立即购买</a> </div>	<!-- 陈蔚星部分，去商品单例页 -->
                </div>
                <!-- /.caption --> 
              </div>
              <!-- /.container-fluid --> 
            </div>
            <!-- /.item --> 
            
          </div>
          <!-- /.owl-carousel --> 
        </div>
        
        <!-- ========================================= 轮播图 : END ========================================= --> 
        

        <!-- ============================================== SCROLL TABS商品标签分类模块 ============================================== -->
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
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb1" goodsId="4">购物车+</i> </button>
                                
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
                          <div class="product-price"> <span class="price"> ￥139.00 </span></div>
                          <!-- 商品价格 --> 
                          
                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb2" goodsId="5">购物车+</i> </button>
                                
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
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb3" goodsId="6">购物车+</i> </button>
                                
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
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb4" goodsId="7">购物车+</i> </button>
                                
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
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb5" goodsId="8">购物车+</i> </button>
                                
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
                          <h3 class="name"><a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=9">花花娘子女士短袖t...</a></h3>
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
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb6" goodsId="9">购物车+</i> </button>
                                
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
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" goodsId="10">购物车+</i> </button>
                                
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
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" goodsId="11">购物车+</i> </button>
                                
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
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" goodsId="12">购物车+</i> </button>
                                
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
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" goodsId="13">购物车+</i> </button>
                                
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
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" goodsId="14">购物车+</i> </button>
                                
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
                                <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" goodsId="15">购物车+</i> </button>
                                
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
                          <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$800</span> </div>
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
        <!-- ============================================== SCROLL TABS商品标签分类模块 : END ============================================== --> 
        
        
        <!-- ============================================== 三个圆角矩形广告 ============================================== -->
        <div class="wide-banners outer-bottom-xs">
          <div class="row">
            <div class="col-md-4 col-sm-4">
              <div class="wide-banner cnt-strip">
                <div class="image"> <img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/banners/home-banner1.jpg" alt=""> </div>
              </div>
              <!-- /.wide-banner --> 
            </div>
            
            <div class="col-md-4 col-sm-4">
              <div class="wide-banner cnt-strip">
                <div class="image"> <img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/banners/home-banner3.jpg" alt=""> </div>
              </div>
              <!-- /.wide-banner --> 
            </div>
            
            <!-- /.col -->
            <div class="col-md-4 col-sm-4">
              <div class="wide-banner cnt-strip">
                <div class="image"> <img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/banners/home-banner2.jpg" alt=""> </div>
              </div>
              <!-- /.wide-banner --> 
            </div>
            <!-- /.col --> 
          </div>
          <!-- /.row --> 
        </div>
        <!-- /.wide-banners --> 
        <!-- ============================================== 三个圆角矩形广告 : END ============================================== --> 
        
        
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
                          <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb7" goodsId="10">购物车+</i> </button>
                          
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
                          <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb8" goodsId="11">购物车+</i> </button>
                          
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
                          <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb9" goodsId="12">购物车+</i> </button>
                          
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
                          <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb10" goodsId="13">购物车+</i> </button>
                          
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
                          <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb11" goodsId="14">购物车+</i> </button>
                          
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
                          <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart" id="bbbbbbb12" goodsId="15">购物车+</i> </button>
                          
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
        
        <!-- ============================================== 矩形广告模块 ============================================== -->
        <div class="wide-banners outer-bottom-xs">
          <div class="row">
            <div class="col-md-8">
              <div class="wide-banner1 cnt-strip">
                <div class="image"> <img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/banners/home-banner.jpg" alt=""> </div>
                <div class="strip strip-text">
                  <div class="strip-inner">
                    <h2 class="text-right">爆炸太阳镜<br>
                      <span class="shopping-needs">立即购买直接打折40%</span></h2>
                  </div>
                </div>
                <div class="new-label">
                  <div class="text">最新款</div>
                </div>
                <!-- /.new-label --> 
              </div>
              <!-- /.wide-banner --> 
            </div>
            <!-- /.col --> 
            <div class="col-md-4">
              <div class="wide-banner cnt-strip">
                <div class="image"> <img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/banners/home-banner4.jpg" alt=""> </div>
                
                
                <!-- /.new-label --> 
              </div>
              <!-- /.wide-banner --> 
            </div>
            
          </div>
          <!-- /.row --> 
        </div>
        <!-- /.wide-banners --> 
        <!-- ============================================== 矩形广告模块 : END ============================================== --> 
        
        
        
        <!-- /.sidebar-widget --> 
        <!-- ============================================== BEST SELLER : END ============================================== --> 
        
        <!-- ============================================== BLOG博客文章广告模块 ============================================== -->
        <%-- <section class="section latest-blog outer-bottom-vs">
          <h3 class="section-title">Latest form Blog</h3>
          <div class="blog-slider-container outer-top-xs">
            <div class="owl-carousel blog-slider custom-carousel">
              <div class="item">
                <div class="blog-post">
                  <div class="blog-post-image">
                    <div class="image"> <a href="#"><img src="${pageContext.request.contextPath}/assets/images/blog-post/blog_big_01.jpg" alt=""></a> </div>
                  </div>
                  <!-- /.blog-post-image -->
                  
                  <div class="blog-post-info text-left">
                    <h3 class="name"><a href="#">Voluptatem accusantium doloremque laudantium</a></h3>
                    <span class="info">By Jone Doe &nbsp;|&nbsp; 21 March 2016 </span>
                    <p class="text">Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
                   </div>
                  <!-- /.blog-post-info --> 
                  
                </div>
                <!-- /.blog-post --> 
              </div>
              <!-- /.item -->
              
              <div class="item">
                <div class="blog-post">
                  <div class="blog-post-image">
                    <div class="image"> <a href="#"><img src="${pageContext.request.contextPath}/assets/images/blog-post/blog_big_02.jpg" alt=""></a> </div>
                  </div>
                  <!-- /.blog-post-image -->
                  
                  <div class="blog-post-info text-left">
                    <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla pariatur</a></h3>
                    <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                    <p class="text">Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
                   </div>
                  <!-- /.blog-post-info --> 
                  
                </div>
                <!-- /.blog-post --> 
              </div>
              <!-- /.item --> 
              
              <!-- /.item -->
              
              <div class="item">
                <div class="blog-post">
                  <div class="blog-post-image">
                    <div class="image"> <a href="#"><img src="${pageContext.request.contextPath}/assets/images/blog-post/blog_big_03.jpg" alt=""></a> </div>
                  </div>
                  <!-- /.blog-post-image -->
                  
                  <div class="blog-post-info text-left">
                    <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla pariatur</a></h3>
                    <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                    <p class="text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
                    </div>
                  <!-- /.blog-post-info --> 
                  
                </div>
                <!-- /.blog-post --> 
              </div>
              <!-- /.item -->
              
              <div class="item">
                <div class="blog-post">
                  <div class="blog-post-image">
                    <div class="image"> <a href="#"><img src="${pageContext.request.contextPath}/assets/images/blog-post/blog_big_01.jpg" alt=""></a> </div>
                  </div>
                  <!-- /.blog-post-image -->
                  
                  <div class="blog-post-info text-left">
                    <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla pariatur</a></h3>
                    <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                    <p class="text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
                    </div>
                  <!-- /.blog-post-info --> 
                  
                </div>
                <!-- /.blog-post --> 
              </div>
              <!-- /.item -->
              
              <div class="item">
                <div class="blog-post">
                  <div class="blog-post-image">
                    <div class="image"> <a href="#"><img src="${pageContext.request.contextPath}/assets/images/blog-post/blog_big_02.jpg" alt=""></a> </div>
                  </div>
                  <!-- /.blog-post-image -->
                  
                  <div class="blog-post-info text-left">
                    <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla pariatur</a></h3>
                    <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                    <p class="text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
                  </div>
                  <!-- /.blog-post-info --> 
                  
                </div>
                <!-- /.blog-post --> 
              </div>
              <!-- /.item --> 
              
            </div>
            <!-- /.owl-carousel --> 
          </div>
          <!-- /.blog-slider-container --> 
        </section> --%>
        <!-- /.section --> 
        <!-- ============================================== BLOG博客文章广告模块 : END ============================================== --> 
        
        
      </div>
      <!-- /.homebanner-holder --> 
      <!-- ============================================== 右边内容 : END ============================================== --> 
    </div>
    <!-- ============================================== 左边右边内容 : END ============================================== --> 
    
    <!-- /.row --> 
    
    
    <!-- ============================================== BRANDS CAROUSEL合作商标logo广告 ============================================== -->
    <div id="brands-carousel" class="logo-slider">
      <div style="margin-top:-2%; margin-left:45%;"><h2>合作商标</h2></div>
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
  </div>
  <!-- ============================================== container下端主要内容 : END ============================================== --> 
  
</div>
<!-- /#top-banner-and-menu顶部菜单及下端所有内容 --> 

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
