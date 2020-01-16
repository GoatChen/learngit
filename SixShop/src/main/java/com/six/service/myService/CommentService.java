package com.six.service.myService;

import java.util.List;



import com.six.pojo.myEntity.Comment;
import com.six.pojo.myEntity.CommentAnswer;

/**
 * 评论表业务的相关操作
 * 
 * @author 贝尔谦
 *
 */
public interface CommentService {
	// 查询所有评论信息
	public List<Comment> selectAllCommentBySellId(Integer sell_id);

	// 通过buy_id查询买家评论信息
	public List<Comment> selectACommentById(Integer buy_id);

	// 查询相关卖家所有买家评论总数
	public int selectCommentAllCount(Integer sell_id);

	// 回复买家评论
	public int addCommentAnswer(Integer buy_id, CommentAnswer commentAnswer);

}
