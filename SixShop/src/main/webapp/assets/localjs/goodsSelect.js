var path=document.getElementById("path").value;

function jump_to(num){
    //alert(num);
	//验证用户的输入
	var regexp=/^[1-9]\d*$/;
	var totalPageCount = document.getElementById("totalPageCount").value;
	//alert(totalPageCount);
	if(!regexp.test(num)){
		alert("请输入大于0的正整数！");
		return false;
	}else if((num-totalPageCount) > 0){
		alert("请输入小于总页数的页码");
		return false;
	}else{
		window.location.href=path+"/shopIndex/selectShopGoods?category1_id="+document.getElementById("category1_id").value
		 						 +"&category2_id="+document.getElementById("category2_id").value
		 						 +"&category3_id="+document.getElementById("category3_id").value
								 +"&currentPageNo="+num
								 +"&orderName="+document.getElementById("orderName").value
								 +"&highOrLow="+document.getElementById("highOrLow").value;
	}
}