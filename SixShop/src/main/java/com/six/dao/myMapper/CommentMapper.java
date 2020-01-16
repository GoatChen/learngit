package com.six.dao.myMapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.six.pojo.myEntity.Comment;
import com.six.pojo.myEntity.CommentAnswer;

/**
 * 
 * @author 贝尔谦
 *
 */

public interface CommentMapper {
	// 查询所有评论信息
	public List<Comment> selectAllCommentBySellId(@Param("sell_id") Integer sell_id);

	// 查询相关卖家所有买家评论总数
	public int selectCommentAllCount(@Param("sell_id") Integer sell_id);

	// 通过buy_id查询买家评论信息
	public List<Comment> selectACommentById(@Param("buy_id") Integer buy_id);

	// 回复买家评论
	public int addCommentAnswer(@Param("buy_id") Integer buy_id, @Param("commentAnswer") CommentAnswer commentAnswer);

}
