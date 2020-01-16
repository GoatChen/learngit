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
          <!-- ============================================================= 商城LOGO : END ============================================================= --> 
        </div>
        <!-- /.logo-holder -->
        
        <div class="col-lg-7 col-md-6 col-sm-8 col-xs-12 top-search-holder"> 
          <!-- /.contact-row --> 
          <!-- ============================================================= 商品查询框 ============================================================= -->
          <div class="search-area">
            <form action="${pageContext.request.contextPath}/shopIndex/selectShopGoods" method="post">
              <div class="control-group">
                
                
              </div>
            </form>
          </div>
          <!-- /.search-area --> 
          <!-- ============================================================= 商品查询框 : END ============================================================= --> 
        </div>
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
  
  
</header>

<!-- ============================================== 顶部 : END ============================================== -->
<!-- ============================================== HEADER : END ============================================== -->


<div class="body-content outer-top-xs">
  <div class='container'>
    <div class='row'>
      
      <form action="${pageContext.request.contextPath}/shopGoodsDetail/goodsBuy" id="buyNowId" method="post">	<!-- 下订单请求表单 -->
      
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
      
        
     	<!-- ==============================选择收货地址栏============================== -->
        <div class="clearfix filters-container m-t-10">
          <div class="row">
            
            <!-- /.col -->
            <div class="col col-sm-12 col-md-5 col-lg-5 hidden-sm">
            
              <div class="col col-sm-6 col-md-6 no-padding" style="width:175px;">		<!-- ==========按标准排序========== -->
                <div class="lbl-cnt">
                  <div class="fld inline">
                    <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                      <span>选择收货地址</span>
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
                <span><a href="#">管理我的地址</a></span>	<!-- 张友登部分，买家收货地址管理 -->
              </div>
              <!-- /.pagination-container --> 
            </div>
            <!-- /.col --> 
          </div>
          <!-- /.row --> 
        </div>
        <!-- ==============================选择收货地址栏 : END============================== -->
        
        <!-- ==============================地址列表分页内容============================== -->
        <div class="search-result-container ">
          <div id="myTabContent" class="tab-content category-list">
            <div class="tab-pane active " id="grid-container">
            
              <div class="category-product">
                <div class="row">
                
	     		<input type="hidden" id="shopAddressList" value="${shopAddressList}" />
                <c:if test="${shopAddressList != null}">
					<table class="table" style="table-layout:fixed;">
	                  <!-- 地址单例 -->
	                  <tbody>
					  
						  <c:forEach var="shopAddress" items="${shopAddressList}">	<!-- 地址列表 -->
							<tr style="border-bottom:1px solid #A9A9A9;">
							    <td style="word-wrap:break-word; text-align:left; width:20px;">
							    	<input type="radio" name="addressId" value ="${shopAddress.id}" <c:if test="${shopAddress.isDefault == 1}">checked="checked"</c:if> />
							    </td>
								<td style="word-wrap:break-word; text-align:left;">${shopAddress.address}</td>
								<td style="word-wrap:break-word; text-align:left;">${shopAddress.name}</td>
								<td style="word-wrap:break-word; text-align:left;">${shopAddress.phone}</td>
								<c:if test="${shopAddress.isDefault == 1}"><td style="word-wrap:break-word; text-align:left;">默认地址</td></c:if>
							</tr>
						  </c:forEach>
						  
					  </tbody>
	                  <!-- /.地址单例 -->
					</table>
				</c:if>
                
                <c:if test="${shopAddressList == null}">
                	<span class="lbl" style="font-size:25px;">你还没有收货地址，添加地址后可下订单</span>
                </c:if>
                  
                </div>
                <!-- /.row --> 
              </div>
              <!-- /.category-product --> 
              
            </div>
            <!-- /.tab-pane -->
            
          </div>
          <!-- /.tab-content -->
          
      </div>
      <!-- /.col-xs-12 col-sm-12 col-md-3 logo-holder --> 
      <!-- ==============================地址列表分页内容 : END============================== -->
      
      <!-- ==============================确认订单信息栏============================== -->
        <div class="clearfix filters-container m-t-10">
          <div class="row">
            
            <!-- /.col -->
            <div class="col col-sm-12 col-md-5 col-lg-5 hidden-sm">
            
              <div class="col col-sm-6 col-md-6 no-padding" style="width:175px;">		<!-- ==========按标准排序========== -->
                <div class="lbl-cnt">
                  <div class="fld inline">
                    <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                      <span>确认订单信息</span>
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
              
              </div>
              <!-- /.pagination-container --> 
            </div>
            <!-- /.col --> 
          </div>
          <!-- /.row --> 
        </div>
        <!-- ==============================确认订单信息栏 : END============================== -->
        
        <!-- ==============================订单信息table内容============================== -->
        <div class="search-result-container ">
          <div id="myTabContent" class="tab-content category-list">
            <div class="tab-pane active " id="grid-container">
            
              <div class="category-product">
                <div class="row">
                
                	<table class="table" style="table-layout:fixed;">
		                  <!-- 订单信息 -->
		                  <tbody>
					  	  	<tr style="border-bottom:1px solid #A9A9A9;">
								<td style="word-wrap:break-word; text-align:left;">商品名</td>
								<td style="word-wrap:break-word; text-align:left;">商品属性</td>
								<td style="word-wrap:break-word; text-align:left;">单价</td>
								<td style="word-wrap:break-word; text-align:left;">数量</td>
								<td style="word-wrap:break-word; text-align:left;">总计</td>
							</tr>
					  
							<tr>
								<td style="word-wrap:break-word; text-align:left;">${shopGoods.name}<input type="hidden" name="goodsId" value="${shopGoods.id}" /></td>
								<td style="word-wrap:break-word; text-align:left;"><p>颜色：${shopGoods.color}</p><p>尺寸：${shopGoods.size}</p></td>
								<td style="word-wrap:break-word; text-align:left;">${shopGoods.price}</td>
								<td style="word-wrap:break-word; text-align:left;">
									<input type="button" id="subG" value="-" />
										<input type="text" id="goodsN" name="goodsNum" value="${goodsNum}" size="1" maxlength="5" />
									<input type="button" id="addG" value="+" />
								</td>
								<td style="word-wrap:break-word; text-align:left;"><span id="totalPrice" data-totalP="${totalPrice}">${totalPrice}</span></td>
							</tr>
							
							<tr style="border-bottom:1px solid #A9A9A9;">
								<td style="word-wrap:break-word; text-align:left;"></td>
								<td style="word-wrap:break-word; text-align:left;"></td>
								<td style="word-wrap:break-word; text-align:left;"></td>
								<td style="word-wrap:break-word; text-align:left;"></td>
								<td style="word-wrap:break-word; text-align:left; width:100px;">
									<div class="add-btn">
										<a href="${pageContext.request.contextPath}/shopIndex/toGoodsDetail?goodsId=${shopGoods.id}" class="btn btn-primary">返回</a>	<!-- 陈蔚星部分，返回 -->
		                            	<input type="submit" id="buyN" value="下订单" class="btn-lg btn btn-uppercase btn-primary shop-now-button" style="background-color:#4169E1; color:white;">	<!-- 陈蔚星部分，购买 -->
									</div>
								</td>
							
							</tr>
							  
						  </tbody>
		                  <!-- /.订单信息 -->
					</table>
                  
                </div>
                <!-- /.row --> 
              </div>
              <!-- /.category-product --> 
              
            </div>
            <!-- /.tab-pane -->
            
          </div>
          <!-- /.tab-content -->
          
      </div>
      <!-- /.col-xs-12 col-sm-12 col-md-3 logo-holder --> 
      <!-- ==============================订单信息table内容 : END============================== -->
        
      
    </div>
    <!-- /.content-right -->
      
      
    </div>
    <!-- /.row --> 
    
    </form>
    
    </div>
    <!-- /.container --> 
    
</div>
<!-- /.body-content --> 



<%@include file="/jsp/common/foot.jsp"%>