package com.six.dao;

import com.six.pojo.ShopComment;

public interface BuyUserShopCommentMapper {

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
