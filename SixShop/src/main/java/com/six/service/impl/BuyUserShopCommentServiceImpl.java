package com.six.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.BuyUserShopCommentMapper;
import com.six.pojo.ShopComment;
import com.six.service.BuyUserShopCommentService;

@Service
public class BuyUserShopCommentServiceImpl implements BuyUserShopCommentService {

	@Autowired
	private BuyUserShopCommentMapper mapper;

	/**
	 * 插入评论信息
	 */
	@Override
	public int userCommentInsert(ShopComment shopComment) {
		return mapper.userCommentInsert(shopComment);
	}

	/**
	 * 求评分的平均分
	 */
	@Override
	public int selectScoreAvg(int goods_id) {
		return mapper.selectScoreAvg(goods_id);
	}

}
