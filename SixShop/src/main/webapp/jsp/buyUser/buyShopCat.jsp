<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@include file="common/head.jsp"%>

  <!-- body内容 -->
  <div>
    <center>
          <h3>购物车商品信息</h3>          
		  <table border="1px solid black" width="1100">
			<tr>
			    <td width="50" align ="center">选择</td>
				<td width="180" align ="center">商品图片</td>
				<td width="170" align ="center">商品详情</td>
				<td width="120" align ="center">商品类型</td>
				<td width="100" align ="center">商品单价</td>
				<td width="160" align ="center">商品数量</td>
				<td width="120" align ="center">金额</td>
				<td width="100" align ="center">操作</td>
			</tr>
			<c:forEach var="goods" items="${shopGoodslist }" varStatus="st">
				<tr>
				    <td align ="center" class="a1">
				        <input type="checkbox" id='${shopCarlist[st.count-1].id}' name='info' class="info" value=${shopCarlist[st.count-1].id}  onclick="checkOne()" />
				    </td>
					<td align ="center">
                        <span>
                            </br>
                            <img width="100" height="100" src="${pageContext.request.contextPath }/${goods.picPojoPath}" /></br></br>
                        </span>
                    </td>
					<td>
					    <span>描述：${goods.description}</span>
					</td>
					<td>
					        类型：${goods.name}</br>颜色：${goods.color}</br>尺寸：${goods.size}
					</td>
					<td class="a2">
						<a name='priceOne' id=${goods.price} class="goodsPrice" value=${goods.price} >¥:${goods.price}</a>
					</td>
					<td>
					    <div class="shopcargoodnum">
					        <input type="button" name="minus" value="-" class="numberMinus" shopcarid="${shopCarlist[st.count-1].id }" shopcarprice="${goods.price}"/>
					        <input type="text" id="${shopCarlist[st.count-1].id}" name='number1' value=${shopCarlist[st.count-1].car_gnum} class="textNum" style="width:50" readonly="readonly"/>
					        <input type="button" name="add" value="+" class="numberPlus" shopcarid="${shopCarlist[st.count-1].id }" shopcarprice="${goods.price}"/>
					    </div>
					</td>
					<td>
					    <span id="shopprice${shopCarlist[st.count-1].id}" name='priceSum' value=${goods.price * shopCarlist[st.count-1].car_gnum}>总额¥：${goods.price * shopCarlist[st.count-1].car_gnum}</span>
					</td>
					<td>
					    <a href="${pageContext.request.contextPath }/shopIndex/toGoodsDetail?goodsId=${shopCarlist[st.count-1].goods_id}">商品详情</a></br></br>
					    <a class="delectshopcar" href="javascript:;"  shopcarid="${shopCarlist[st.count-1].id }" shopcarname="${goods.name }">移除</a>
					</td>
				</tr>
			</c:forEach>
		  </table>
		  </br></br>
		  <table border="2px solid black" width="1100">
		      <tr>
			    <td width="50"><input type="checkbox" class="i-checks" id="checkall" name="checkall" onclick="checkAll(checkall)" />全选</td>
			    <td width="50"></td>
				<td width="50">
				    <button class="delectAllShopCar" href="javascript:;" >移除</button>
				    <!-- 全部删除按钮
				    <input class="btnBlue mL10 ygDelRow" value="移除" onclick="deleteShopCar();" type="button">
				     -->
				</td>
				<td width="500"></td>
				<td width="150">已选商品：<span id="shopNumSum" >0</span>件</td>
				<td width="220">合计（不含运费）¥：<span id="shopPriceSum" >0</span></td>
				<td width="52"><button class="delectAllShopCarAndInsert" href="javascript:;" >结算</button></td>
			  </tr>
		  </table>
		  </br></br></br>
      </center>
  </div>
  
<script type="text/javascript">

    //单个按钮js函数
    function checkOne() {
	    arr = document.getElementsByName('info');
	    num = document.getElementsByName('number1');
	    price = document.getElementsByName('priceOne');
	    checkall = document.getElementsByName('checkall');
        sum= 0;
        pricesum = 0;
        flag =  true;
	        for(i=0;i<arr.length;i++){
	            if (arr[i].checked == false) {
	                flag = false;
	            }
	        }
	        checkall[0].checked = flag;
	        //window.location.reload();
	        
	        for(i=0;i<num.length;i++){
	            if (arr[i].checked == true) {   
	                sum = sum-num[i].value;
	            }
	        }
	        sum = 0-sum;
	        for(i=0;i<price.length;i++){
		        if (arr[i].checked == true) {
		            pricesum = pricesum-(price[i].id*num[i].value);
		        }
	        }
	        pricesum = 0-pricesum;
	        
	        $("#shopNumSum").html(sum);  
	        $("#shopPriceSum").html(pricesum); 
	}

    //全选按钮js函数
	function checkAll(checkall) { 
	    arr = document.getElementsByName('info');
	    num = document.getElementsByName('number1');
	    price = document.getElementsByName('priceOne');
        sum= 0;
        pricesum = 0;
	    if (checkall.checked == true) {   
	        for(i=0;i<arr.length;i++){   
	            arr[i].checked = true;
	        }
	        for(i=0;i<num.length;i++){   
	            sum = sum-num[i].value;
	        }
	        sum = 0-sum;
	        for(i=0;i<price.length;i++){
	            pricesum = pricesum-(price[i].id*num[i].value);
	        }
	        pricesum = 0-pricesum;
	    }else{  
	        for(i=0;i<arr.length;i++){  
	            arr[i].checked = false;
	         }
	         window.location.reload(); 
	     }
	     $("#shopNumSum").html(sum);  
	     $("#shopPriceSum").html(pricesum); 
	}
	
    //删除购物车
    function deleteShopCar(){
	var empId="";
    var sel=document.getElementsByName("info");//获取checkbox的值
    alert("id:"+sel);
    for( var i=0;i<sel.length;i++){
        if(sel[i].checked==true){
            alert("id:"+sel[i].value);
        	empId+=sel[i].value+"~";
        }
     }
	    if(empId === undefined || empId === ''){
		  alert("请至少选择一条移除的商品！");
		  return ;
	    }
	 }

	
</script>
<%@include file="common/footer.jsp"%>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/localjs/shopcatlist.js"></script>
