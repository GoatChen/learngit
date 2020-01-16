package com.six.service.myService;

import com.six.pojo.myEntity.Goods;

public interface GoodsService {

	// 增加商品信息
	public boolean insGoods(Goods goods);

	// 删除商品信息
	public boolean delGoods(String name);
	
}
