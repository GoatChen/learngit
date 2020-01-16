var path = $("#path").val();
	
$(function(){
	
	//点击搜索，根据关键字搜索商品
	$("#search").bind("click",function(){
		if($("#searchValue").val() == null || $("#searchValue").val() == ""){
			$("#searchValue").val('男装');
		}
	});
	//点击搜索，根据关键字搜索商品
	$("#search1").bind("click",function(){
		if($("#searchValue1").val() == null || $("#searchValue1").val() == ""){
			$("#searchValue1").val('男装');
		}
	});
	
	/*
	 * 验证
	 * 失焦\获焦
	 * jquery的方法传递
	 */
	//衣服类
	$("#clothersCategory").bind("click",function(){	/* 判空 后台判断重复 */
		var category_id1 = $("#clothersCategory1");
		
		//ajax后台验证--code是否已存在
		$.ajax({
			type:"GET",//请求类型
			url:path+"/shopIndex/getShopGoodsCategory",//请求的url
			data:{category_id:category_id1.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）		/* 实现获取category1的category2和category3对应对象 */
				if(data.shopGoodsCategory2List != null){
					$("#clothersCategoryItem").html("");
					
					for(var i=0; i<data.shopGoodsCategory2List.length; i++){
						var divUlLi = "<div class=\"col-sm-12 col-md-3\">"+
						  			  "<a href=\""+path+"/shopIndex/selectShopGoods?category2_id="+data.shopGoodsCategory2List[i].id+
						  			  "\" style=\"bold:bold;font-color:black;\">"+
						  			  data.shopGoodsCategory2List[i].categoryName+
						  			  "</a>"+
									  "<ul class=\"links list-unstyled\">";
						
						if(data.shopGoodsCategory3ListList[i] != null){
							for(var j=0; j<data.shopGoodsCategory3ListList[i].length; j++){
								divUlLi += "<li><a href=\""+path+"/shopIndex/selectShopGoods?category3_id="+data.shopGoodsCategory3ListList[i][j].id+
											"\">"+
											data.shopGoodsCategory3ListList[i][j].categoryName+
											"</a></li>";
							}
						}
						divUlLi += "</ul></div>";
						$("#clothersCategoryItem").html($("#clothersCategoryItem").html()+divUlLi);
					}
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				$("#clothersCategoryItem").html(" 查询失败，请重新查询");
			}
		}).bind("focus",function(){
			
		}).focus();
	});
	
	//裤子类
	$("#trouserCategory").bind("click",function(){	/* 判空 后台判断重复 */
		var category_id1 = $("#trouserCategory1");
		
		//ajax后台验证--code是否已存在
		$.ajax({
			type:"GET",//请求类型
			url:path+"/shopIndex/getShopGoodsCategory",//请求的url
			data:{category_id:category_id1.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）		/* 实现获取category1的category2和category3对应对象 */
				if(data.shopGoodsCategory2List != null){
					$("#trouserCategoryItem").html("");
					
					for(var i=0; i<data.shopGoodsCategory2List.length; i++){
						var divUlLi = "<div class=\"col-sm-12 col-md-3\">"+
						  			  "<a href=\""+path+"/shopIndex/selectShopGoods?category2_id="+data.shopGoodsCategory2List[i].id+
						  			  "\" style=\"bold:bold;font-color:black;\">"+
						  			  data.shopGoodsCategory2List[i].categoryName+
						  			  "</a>"+
									  "<ul class=\"links list-unstyled\">";
						
						if(data.shopGoodsCategory3ListList[i] != null){
							for(var j=0; j<data.shopGoodsCategory3ListList[i].length; j++){
								divUlLi += "<li><a href=\""+path+"/shopIndex/selectShopGoods?category3_id="+data.shopGoodsCategory3ListList[i][j].id+
											"\">"+
											data.shopGoodsCategory3ListList[i][j].categoryName+
											"</a></li>";
							}
						}
						divUlLi += "</ul></div>";
						$("#trouserCategoryItem").html($("#trouserCategoryItem").html()+divUlLi);
					}
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				$("#trouserCategoryItem").html(" 查询失败，请重新查询");
			}
		}).bind("focus",function(){
			
		}).focus();
	});
	
	//裙子类
	$("#skirtCategory").bind("click",function(){	/* 判空 后台判断重复 */
		var category_id1 = $("#skirtCategory1");
		
		//ajax后台验证--code是否已存在
		$.ajax({
			type:"GET",//请求类型
			url:path+"/shopIndex/getShopGoodsCategory",//请求的url
			data:{category_id:category_id1.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）		/* 实现获取category1的category2和category3对应对象 */
				if(data.shopGoodsCategory2List != null){
					$("#skirtCategoryItem").html("");
					
					for(var i=0; i<data.shopGoodsCategory2List.length; i++){
						var divUlLi = "<div class=\"col-sm-12 col-md-3\">"+
						  			  "<a href=\""+path+"/shopIndex/selectShopGoods?category2_id="+data.shopGoodsCategory2List[i].id+
						  			  "\" style=\"bold:bold;font-color:black;\">"+
						  			  data.shopGoodsCategory2List[i].categoryName+
						  			  "</a>"+
									  "<ul class=\"links list-unstyled\">";
						
						if(data.shopGoodsCategory3ListList[i] != null){
							for(var j=0; j<data.shopGoodsCategory3ListList[i].length; j++){
								divUlLi += "<li><a href=\""+path+"/shopIndex/selectShopGoods?category3_id="+data.shopGoodsCategory3ListList[i][j].id+
											"\">"+data.shopGoodsCategory3ListList[i][j].categoryName+"</a></li>";
							}
						}
						divUlLi += "</ul></div>";
						$("#skirtCategoryItem").html($("#skirtCategoryItem").html()+divUlLi);
					}
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				$("#skirtCategoryItem").html(" 查询失败，请重新查询");
			}
		}).bind("focus",function(){
			
		}).focus();
	});
	
	//鞋子类
	$("#shoesCategory").bind("click",function(){	/* 判空 后台判断重复 */
		var category_id1 = $("#shoesCategory1");
		
		//ajax后台验证--code是否已存在
		$.ajax({
			type:"GET",//请求类型
			url:path+"/shopIndex/getShopGoodsCategory",//请求的url
			data:{category_id:category_id1.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）		/* 实现获取category1的category2和category3对应对象 */
				if(data.shopGoodsCategory2List != null){
					$("#shoesCategoryItem").html("");
					
					for(var i=0; i<data.shopGoodsCategory2List.length; i++){
						var divUlLi = "<div class=\"col-sm-12 col-md-3\">"+
						  			  "<a href=\""+path+"/shopIndex/selectShopGoods?category2_id="+data.shopGoodsCategory2List[i].id+
						  			  "\" style=\"bold:bold;font-color:black;\">"+
						  			  data.shopGoodsCategory2List[i].categoryName+
						  			  "</a>"+
									  "<ul class=\"links list-unstyled\">";
						
						if(data.shopGoodsCategory3ListList[i] != null){
							for(var j=0; j<data.shopGoodsCategory3ListList[i].length; j++){
								divUlLi += "<li><a href=\""+path+"/shopIndex/selectShopGoods?category3_id="+data.shopGoodsCategory3ListList[i][j].id+
											"\">"+data.shopGoodsCategory3ListList[i][j].categoryName+"</a></li>";
							}
						}
						divUlLi += "</ul></div>";
						$("#shoesCategoryItem").html($("#shoesCategoryItem").html()+divUlLi);
					}
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				$("#shoesCategoryItem").html(" 查询失败，请重新查询");
			}
		}).bind("focus",function(){
			
		}).focus();
	});
	
	//鞋子类
	$("#shoesCategory").bind("click",function(){	/* 判空 后台判断重复 */
		var category_id1 = $("#shoesCategory1");
		
		//ajax后台验证--code是否已存在
		$.ajax({
			type:"GET",//请求类型
			url:path+"/shopIndex/getShopGoodsCategory",//请求的url
			data:{category_id:category_id1.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）		/* 实现获取category1的category2和category3对应对象 */
				if(data.shopGoodsCategory2List != null){
					$("#shoesCategoryItem").html("");
					
					for(var i=0; i<data.shopGoodsCategory2List.length; i++){
						var divUlLi = "<div class=\"col-sm-12 col-md-3\">"+
						  			  "<a href=\""+path+"/shopIndex/selectShopGoods?category2_id="+data.shopGoodsCategory2List[i].id+
						  			  "\" style=\"bold:bold;font-color:black;\">"+
						  			  data.shopGoodsCategory2List[i].categoryName+
						  			  "</a>"+
									  "<ul class=\"links list-unstyled\">";
						
						if(data.shopGoodsCategory3ListList[i] != null){
							for(var j=0; j<data.shopGoodsCategory3ListList[i].length; j++){
								divUlLi += "<li><a href=\""+path+"/shopIndex/selectShopGoods?category3_id="+data.shopGoodsCategory3ListList[i][j].id+
											"\">"+data.shopGoodsCategory3ListList[i][j].categoryName+"</a></li>";
							}
						}
						divUlLi += "</ul></div>";
						$("#shoesCategoryItem").html($("#shoesCategoryItem").html()+divUlLi);
					}
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				$("#shoesCategoryItem").html(" 查询失败，请重新查询");
			}
		}).bind("focus",function(){
			
		}).focus();
	});

	//帽子类
	$("#hatCategory").bind("click",function(){	/* 判空 后台判断重复 */
		var category_id1 = $("#hatCategory1");
		
		//ajax后台验证--code是否已存在
		$.ajax({
			type:"GET",//请求类型
			url:path+"/shopIndex/getShopGoodsCategory",//请求的url
			data:{category_id:category_id1.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）		/* 实现获取category1的category2和category3对应对象 */
				if(data.shopGoodsCategory2List != null){
					$("#hatCategoryItem").html("");
					
					for(var i=0; i<data.shopGoodsCategory2List.length; i++){
						var divUlLi = "<div class=\"col-sm-12 col-md-3\">"+
						  			  "<a href=\""+path+"/shopIndex/selectShopGoods?category2_id="+data.shopGoodsCategory2List[i].id+
						  			  "\" style=\"bold:bold;font-color:black;\">"+
						  			  data.shopGoodsCategory2List[i].categoryName+
						  			  "</a>"+
									  "<ul class=\"links list-unstyled\">";
						
						if(data.shopGoodsCategory3ListList[i] != null){
							for(var j=0; j<data.shopGoodsCategory3ListList[i].length; j++){
								divUlLi += "<li><a href=\""+path+"/shopIndex/selectShopGoods?category3_id="+data.shopGoodsCategory3ListList[i][j].id+
											"\">"+data.shopGoodsCategory3ListList[i][j].categoryName+"</a></li>";
							}
						}
						divUlLi += "</ul></div>";
						$("#hatCategoryItem").html($("#hatCategoryItem").html()+divUlLi);
					}
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				$("#hatCategoryItem").html(" 查询失败，请重新查询");
			}
		}).bind("focus",function(){
			
		}).focus();
	});

	//背包类
	$("#packageCategory").bind("click",function(){	/* 判空 后台判断重复 */
		var category_id1 = $("#packageCategory1");
		
		//ajax后台验证--code是否已存在
		$.ajax({
			type:"GET",//请求类型
			url:path+"/shopIndex/getShopGoodsCategory",//请求的url
			data:{category_id:category_id1.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）		/* 实现获取category1的category2和category3对应对象 */
				if(data.shopGoodsCategory2List != null){
					$("#packageCategoryItem").html("");
					
					for(var i=0; i<data.shopGoodsCategory2List.length; i++){
						var divUlLi = "<div class=\"col-sm-12 col-md-3\">"+
						  			  "<a href=\""+path+"/shopIndex/selectShopGoods?category2_id="+data.shopGoodsCategory2List[i].id+
						  			  "\" style=\"bold:bold;font-color:black;\">"+
						  			  data.shopGoodsCategory2List[i].categoryName+
						  			  "</a>"+
									  "<ul class=\"links list-unstyled\">";
						
						if(data.shopGoodsCategory3ListList[i] != null){
							for(var j=0; j<data.shopGoodsCategory3ListList[i].length; j++){
								divUlLi += "<li><a href=\""+path+"/shopIndex/selectShopGoods?category3_id="+data.shopGoodsCategory3ListList[i][j].id+
											"\">"+data.shopGoodsCategory3ListList[i][j].categoryName+"</a></li>";
							}
						}
						divUlLi += "</ul></div>";
						$("#packageCategoryItem").html($("#packageCategoryItem").html()+divUlLi);
					}
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				$("#packageCategoryItem").html(" 查询失败，请重新查询");
			}
		}).bind("focus",function(){
			
		}).focus();
	});

	//眼镜类
	$("#glassesCategory").bind("click",function(){	/* 判空 后台判断重复 */
		var category_id1 = $("#glassesCategory1");
		
		//ajax后台验证--code是否已存在
		$.ajax({
			type:"GET",//请求类型
			url:path+"/shopIndex/getShopGoodsCategory",//请求的url
			data:{category_id:category_id1.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）		/* 实现获取category1的category2和category3对应对象 */
				if(data.shopGoodsCategory2List != null){
					$("#glassesCategoryItem").html("");
					
					for(var i=0; i<data.shopGoodsCategory2List.length; i++){
						var divUlLi = "<div class=\"col-sm-12 col-md-3\">"+
						  			  "<a href=\""+path+"/shopIndex/selectShopGoods?category2_id="+data.shopGoodsCategory2List[i].id+
						  			  "\" style=\"bold:bold;font-color:black;\">"+
						  			  data.shopGoodsCategory2List[i].categoryName+
						  			  "</a>"+
									  "<ul class=\"links list-unstyled\">";
						
						if(data.shopGoodsCategory3ListList[i] != null){
							for(var j=0; j<data.shopGoodsCategory3ListList[i].length; j++){
								divUlLi += "<li><a href=\""+path+"/shopIndex/selectShopGoods?category3_id="+data.shopGoodsCategory3ListList[i][j].id+
											"\">"+data.shopGoodsCategory3ListList[i][j].categoryName+"</a></li>";
							}
						}
						divUlLi += "</ul></div>";
						$("#glassesCategoryItem").html($("#glassesCategoryItem").html()+divUlLi);
					}
				}
				else{
					$("#otherCategoryItem").html($("#otherCategoryItem").html()+" 敬请期待");
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				$("#glassesCategoryItem").html(" 查询失败，请重新查询");
			}
		}).bind("focus",function(){
			
		}).focus();
	});

	//其他类
	$("#otherCategory").bind("click",function(){	/* 判空 后台判断重复 */
		var category_id1 = $("#otherCategory1");
		
		//ajax后台验证--code是否已存在
		$.ajax({
			type:"GET",//请求类型
			url:path+"/shopIndex/getShopGoodsCategory",//请求的url
			data:{category_id:category_id1.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）		/* 实现获取category1的category2和category3对应对象 */
				if(data.shopGoodsCategory2List != null){
					$("#otherCategoryItem").html("");
					
					for(var i=0; i<data.shopGoodsCategory2List.length; i++){
						var divUlLi = "<div class=\"col-sm-12 col-md-3\">"+
						  			  "<a href=\""+path+"/shopIndex/selectShopGoods?category2_id="+data.shopGoodsCategory2List[i].id+
						  			  "\" style=\"bold:bold;font-color:black;\">"+
						  			  data.shopGoodsCategory2List[i].categoryName+
						  			  "</a>"+
									  "<ul class=\"links list-unstyled\">";
						
						if(data.shopGoodsCategory3ListList[i] != null){
							for(var j=0; j<data.shopGoodsCategory3ListList[i].length; j++){
								divUlLi += "<li><a href=\""+path+"/shopIndex/selectShopGoods?category3_id="+data.shopGoodsCategory3ListList[i][j].id+
											"\">"+data.shopGoodsCategory3ListList[i][j].categoryName+"</a></li>";
							}
						}
						divUlLi += "</ul></div>";
						$("#otherCategoryItem").html($("#otherCategoryItem").html()+divUlLi);
					}
				}
				else{
					$("#otherCategoryItem").html($("#otherCategoryItem").html()+" 敬请期待");
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				$("#otherCategoryItem").html(" 查询失败，请重新查询");
			}
		}).bind("focus",function(){
			
		}).focus();
	});
})