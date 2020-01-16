package com.six.service;

import com.six.pojo.ShopComment;

public interface BuyUserShopCommentService {

	/**
	 * 插入评论信息
	 * 
	 * @param shopComment
	 * @return
	 */
	int userCommentInsert(ShopComment shopComment);

	/**
	 * 求评分的平均分
	 * 
	 * @param goods_id
	 * @return
	 */
	int selectScoreAvg(int goods_id);

}
