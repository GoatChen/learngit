//模糊查询操作
$(".aa").on("click",function(){
	var obj = $(this);
	var category1_id = obj.attr("category1_id");
	if(true){ //验证用户是否登录
		window.location.href="../../shopcar/getshopcartype/"+ obj.attr("category1_id");
		//window.location.href="../jsp/buyUser/buyShopCat.jsp";
	}else{
		alert("请先登录！");
	}
});

//商品名称模糊查询操作
$("#shopcar111").on("click",function(){
	var obj = $(this);
	var goodsNum = $("#goodsNum").val();
	if(true){ //验证用户是否登录
		//window.location.href="../../shopcar/getshopcartype/"+ obj.attr("category1_id");
		window.location.href="../../shopcar/insertShopCar?goodsId="+obj.attr("goodsId")+"&goodsNum="+goodsNum;
	}else{
		alert("请先登录！");
	}
});



    //加号操作
	$(".numberPlus").on("click",function(){
		    var num = $(this).siblings(".textNum").val();
		    var obj = $(this);
		    var shopcarid = obj.attr("shopcarid");
		    var shopcarprice = obj.attr("shopcarprice");
		    
		    num++;
		    $(this).siblings(".textNum").val(num);
		    
		    var arr = document.getElementsByName('info');
		    var number1 = document.getElementsByName('number1');
		    var price = document.getElementsByName('priceOne');
		    sum= 0;
		    pricesum = 0;
	        flag =  true;
		        for(i=0;i<number1.length;i++){
		            if (arr[i].checked == true) {   
		                sum = sum-number1[i].value;
		            }
		        }
		        for(i=0;i<price.length;i++){
			        if (arr[i].checked == true) {
			            pricesum = pricesum-(price[i].id*number1[i].value);
			        }
		        }
		        sum = 0-sum;
		        pricesum = 0-pricesum;
		        //alert("数据库修改一次！"+pricesum);
		    
			$.ajax({
				type:"GET",
				url:"../../shopcar/numberPlusMinusById",
				data:{id:obj.attr("shopcarid"),num:num,shopcarprice:obj.attr("shopcarprice")},
				dataType:"json",
				success:function(data){
					if(data.result == "success"){//操作成功
						//alert("数量【"+num+"】操作成功");
						$("#shopNumSum").html(sum);  
				        $("#shopPriceSum").html(pricesum); 
						$("#shopprice"+obj.attr("shopcarid")).html("总额¥："+num*obj.attr("shopcarprice"));
					}else if(data.result == "failed"){//删除失败
						alert("对不起，【"+num+"】操作失败");
					}
				},
				error:function(data){
					alert("对不起，增加失败");
				}
			});
	});
	
	//减号操作
	$(".numberMinus").on("click",function(){
		var num = $(this).siblings(".textNum").val();
		var obj = $(this);
	    var shopcarid = obj.attr("shopcarid");
	    var shopcarprice = obj.attr("shopcarprice");
	    if(num<=1){
	        alert("商品数量不能为0");
	        //$(this).prop("disabled",true);
	    }	
	    if(num>1){
	        num--;
		}
	    $(this).siblings(".textNum").val(num);
	    
	    var arr = document.getElementsByName('info');
	    var number1 = document.getElementsByName('number1');
	    var price = document.getElementsByName('priceOne');
	    sum= 0;
	    pricesum = 0;
        flag =  true;
	        for(i=0;i<number1.length;i++){
	            if (arr[i].checked == true) {   
	                sum = sum-number1[i].value;
	            }
	        }
	        for(i=0;i<price.length;i++){
		        if (arr[i].checked == true) {
		            pricesum = pricesum-(price[i].id*number1[i].value);
		        }
	        }
	        sum = 0-sum;
	        pricesum = 0-pricesum;
	        //alert("数据库修改一次！"+pricesum);
	    
		$.ajax({
			type:"GET",
			url:"../../shopcar/numberPlusMinusById",
			data:{id:obj.attr("shopcarid"),num:num},
			dataType:"json",
			success:function(data){
				if(data.result == "success"){//操作成功
					//alert("数量【"+num+"】操作成功");
					$("#shopNumSum").html(sum);  
			        $("#shopPriceSum").html(pricesum); 
					$("#shopprice"+obj.attr("shopcarid")).html("总额¥："+num*obj.attr("shopcarprice"));
				}else if(data.result == "failed"){//删除失败
					alert("对不起，【"+num+"】操作失败");
				}
			},
			error:function(data){
				alert("对不起，删除失败");
			}
		});
	});

//查看购物车信息
$(".buyshopCatlist").on("click",function(){
	var obj = $(this);
	var status = obj.attr("status");
	if(true){ //验证用户是否登录
		window.location.href="./shopcar/buyshopcar/"+ obj.attr("userid");
		//window.location.href="../jsp/buyUser/buyShopCat.jsp";
	}else{
		alert("请先登录！");
	}
});

//删除购物车商品，异步刷新
$(".delectshopcar").on("click",function(){
	var obj = $(this);
	var shopcarid = obj.attr("shopcarid");
	if(confirm("是否对选中的【"+obj.attr("shopcarname")+"】商品进行【移除】?")){
	$.ajax({
		type:"GET",
		url:"../../shopcar/delectShopCarById",
		data:{id:obj.attr("shopcarid")},
		dataType:"json",
		success:function(data){
			if(data.result == "success"){//操作成功
				alert("SixShop的顾客，【"+obj.attr("shopcarname")+"】的【移除】操作成功");				
				window.location.reload();
			}else if(data.result == "failed"){//删除失败
				alert("对不起，【"+obj.attr("shopcarname")+"】的【移除】操作失败");
			}
		},
		error:function(data){
			alert("对不起，删除失败");
		}
	});
	}
});

//批量删除购物车
$(".delectAllShopCar").on("click",function(){
if(confirm("是否对选中的商品进行【移除】?")){
var empId="";
var sel=document.getElementsByName("info");//获取checkbox的值
for( var i=0;i<sel.length;i++){
    if(sel[i].checked==true){
        //alert("id:"+sel[i].value);
    	empId+=sel[i].value+"~";
    	//调用删除单个案例
    	var obj = $(this);
    	var shopcarid = sel[i].value;
    	$.ajax({
    		type:"GET",
    		url:"../../shopcar/delectShopCarById",
    		data:{id:shopcarid},
    		dataType:"json",
    		success:function(data){
    			if(data.result == "success"){//操作成功
    				//alert("SixShop的顾客，【批量移除】操作成功");
    				window.location.reload();
    			}else if(data.result == "failed"){//删除失败
    				//alert("对不起，【移除】操作失败");
    			}
    		},
    		error:function(data){
    			//alert("对不起，删除失败");
    		}
    	});

    }
 }
    if(empId === undefined || empId === ''){
	  alert("请至少选择一条移除的商品！");
	  return ;
    }
}
});


//批量结算购物车和加入订单表
$(".delectAllShopCarAndInsert").on("click",function(){
if(confirm("是否对选中的【商品】进行【结算】?")){
var empId="";
var sel=document.getElementsByName("info");//获取checkbox的值
for( var i=0;i<sel.length;i++){
  if(sel[i].checked==true){
    //alert("id:"+sel[i].value);
  	empId+=sel[i].value+"~";
  	//调用删除单个案例
  	var obj = $(this);
  	var shopcarid = sel[i].value;
  	$.ajax({
  		type:"GET",
  		url:"../../shopcar/delectAllShopCarAndInsert",
  		data:{id:shopcarid},
  		dataType:"json",
  		success:function(data){
  			if(data.result == "success"){//操作成功
  				//alert("SixShop的顾客，【结算】操作成功");
  				window.location.reload();
  			}else if(data.result == "failed"){//删除失败
  				//alert("对不起，【结算】操作失败");
  			}
  		},
  		error:function(data){
  			//alert("对不起，删除失败");
  		}
  	});
    //实现跳转到订单显示页面
  	if(true){ //验证用户是否登录
		window.location.href="../../shopBuyUser/getAllShopOrder";
	}
  }
}
  if(empId === undefined || empId === ''){
	  alert("请至少选择一条结算的商品！");
  }
}
});


	
