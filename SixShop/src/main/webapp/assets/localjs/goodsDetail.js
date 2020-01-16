var path = $("#path").val();
	
$(function(){
	
	/*
	 * 验证
	 * 失焦\获焦
	 * jquery的方法传递
	 */
	//点赞判断
	/*$(".likeImg"+comment.val()).bind("click",function(){	
		var comment_id = $("#comment_id");
		var clickLike = $(".clickLike"+comment.val());

		confirm($(".clickLike"+comment.val()).val());
		
		if(clickLike.val() == 0){	//点赞
			$(".likeImg"+comment.val()).attr('src',path+'/assets/images/like.png'); 
		}
		else{	//取消赞
			$(".likeImg"+comment.val()).attr('src',path+'/assets/images/noLike.png');
		}
		
		//ajax后台验证--code是否已存在
		$.ajax({
			type:"GET",//请求类型
			url:path+"/shopGoodsDetail/isOrNotLike",//请求的url
			data:{comment_id:comment_id.val(), isLike:clickLike.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）		//实现获取category1的category2和category3对应对象 
				if(data.d != null){
					$(".likeNum"+comment.val()).html(data.d);
				}
				if(data.l != null){ 
					$(".clickLike"+comment.val()).val(data.l);
					confirm($(".clickLike"+comment.val()).val());
				}
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				$(".likeNum"+comment.val()).html("点赞出错！");
			}
		}).bind("focus",function(){
			
		}).focus();
		
	});*/
	
	//单例页
	//减少商品数量
	$("#addGoods").on("click",function(){
		var goodsNum = $("#goodsNum").val();
		if(goodsNum < 99999){
			goodsNum++;
			$("#goodsNum").val(goodsNum);
		}
	});
	//增加商品数量
	$("#subGoods").on("click",function(){
		var goodsNum = $("#goodsNum").val();
		if(goodsNum > 1){
			goodsNum--;
			$("#goodsNum").val(goodsNum);
		}
	});
	//点击立即购买
	$("#buyNow").on("click",function(){
		var obj = $(this);
		var goodsNum = $("#goodsNum").val();
		window.location.href=path+"/shopGoodsDetail/toGoodsBuy?goodsId="+obj.attr("goodsId")+"&goodsNum="+goodsNum;
	});
	
	//点击直接加入购物车
    var i = 2;
	for(i=2;i<100;i++){
		$("#bbbbbbb"+i).on("click",function(){
			var obj = $(this);
			if(confirm("确定要加入购物车吗？")){
				$.ajax({
					type:"GET",
					url:"../shopcar/insertShopCarOne",
					data:{goodsId:obj.attr("goodsId")},
					dataType:"json",
					success:function(data){
						if(data.result == "success"){//操作成功
							alert("加入购物车成功");
						}else if(data.result == "failed"){//删除失败
							alert("对不起，加入购物车操作失败");
						}
					},
					error:function(data){
						alert("请先登录！");
					}
				});
			}
		});
	}
	
	//商品名直接加入购物车
	$("#bbbbbbb1").on("click",function(){
		var obj = $(this);
		if(confirm("确定要加入购物车吗？")){
			$.ajax({
				type:"GET",
				url:"../shopcar/insertShopCarOne",
				data:{goodsId:obj.attr("goodsId")},
				dataType:"json",
				success:function(data){
					if(data.result == "success"){//操作成功
						alert("加入购物车成功");
					}else if(data.result == "failed"){//删除失败
						alert("对不起，加入购物车操作失败");
					}
				},
				error:function(data){
					alert("请先登录！");
				}
			});
		}
	});
	
	//商品单例中加入购物车
	$("#bbshopcar").on("click",function(){
		var obj = $(this);
		var goodsNum = $("#goodsNum").val();
		if(confirm("确定要加入购物车吗？")){
			
			$.ajax({
				type:"GET",
				url:"../shopcar/insertShopCar",
				data:{goodsId:obj.attr("goodsId"),goodsNum:goodsNum},
				dataType:"json",
				success:function(data){
					if(data.result == "success"){//操作成功
						alert("加入购物车成功");
					}else if(data.result == "failed"){//删除失败
						alert("对不起，加入购物车操作失败");
					}
				},
				error:function(data){
					alert("请先登录！");
				}
			});
		}
	});
	
	
	//购买页
	//减少商品数量
	$("#addG").on("click",function(){
		var obj = $(this);
		var goodsNum = $("#goodsN").val();
		var totalP = $("#totalPrice").attr("data-totalP");
		if(goodsNum < 99999){
			goodsNum++;
			$("#goodsN").val(goodsNum);
			$("#totalPrice").html(goodsNum * totalP);
		}
	});
	//增加商品数量
	$("#subG").on("click",function(){
		var obj = $(this);
		var goodsNum = $("#goodsN").val();
		var totalP = $("#totalPrice").attr("data-totalP");
		if(goodsNum > 1){
			goodsNum--;
			$("#goodsN").val(goodsNum);
			$("#totalPrice").html(goodsNum * totalP);
		}
	});
	
	//提交订单
	$("#buyN").on("click",function(){
		var obj = $(this);
		var shopAddressList = $("#shopAddressList").val();
		if(shopAddressList != null && shopAddressList != ""){
			if(confirm("确定要购买吗？")){
				alert("购买成功！");
				$("#buyNowId").submit();
			}
			else{
				return false;
			}
		}
		else{
			alert("地址不能为空");
			return false;
		}
	});
	
})