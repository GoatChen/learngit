package com.six.service.myService.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.myMapper.CommentMapper;
import com.six.pojo.myEntity.Comment;
import com.six.pojo.myEntity.CommentAnswer;
import com.six.service.myService.CommentService;


/**
 * 评论页业务逻辑实现类
 * 
 * @author 贝尔谦
 *
 */
@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentMapper commentMapper;
	
	@Override
	public List<Comment> selectAllCommentBySellId(Integer sell_id) {
		
		return commentMapper.selectAllCommentBySellId(sell_id);
	}

	@Override
	public List<Comment> selectACommentById(Integer buy_id) {

		return commentMapper.selectACommentById(buy_id);
	}
	
	
	@Override
	public int selectCommentAllCount(Integer sell_id) {

		return commentMapper.selectCommentAllCount(sell_id);
	}

	@Override
	public int addCommentAnswer(Integer buy_id, CommentAnswer commentAnswer) {
		return commentMapper.addCommentAnswer(buy_id, commentAnswer);
	}

}
