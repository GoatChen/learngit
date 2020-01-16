package com.six.pojo.myEntity;

import java.util.Date;

public class CommentAnswer {
	private Integer id;	//回复ID
	private String content;	//回复内容
	private Integer likeNum;	//点赞数
	private Integer goods_id;	//商品ID
	private Integer comment_id;	//评论ID
	private Integer	buy_id;	//买家ID
	private Integer sell_id;	//卖家ID
	private Integer createdBy;	//创建者
	private Integer modifyBy;	//更新者
	private Date creationDate;	//创建日期
	private Date modifyDate;	//更新日期
	
	public CommentAnswer() {
		super();
	}
	public CommentAnswer(Integer id, String content, Integer likeNum, Integer goods_id, Integer comment_id,
			Integer buy_id, Integer sell_id, Integer createdBy, Integer modifyBy, Date creationDate, Date modifyDate) {
		super();
		this.id = id;
		this.content = content;
		this.likeNum = likeNum;
		this.goods_id = goods_id;
		this.comment_id = comment_id;
		this.buy_id = buy_id;
		this.sell_id = sell_id;
		this.createdBy = createdBy;
		this.modifyBy = modifyBy;
		this.creationDate = creationDate;
		this.modifyDate = modifyDate;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(Integer likeNum) {
		this.likeNum = likeNum;
	}
	public Integer getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(Integer goods_id) {
		this.goods_id = goods_id;
	}
	public Integer getComment_id() {
		return comment_id;
	}
	public void setComment_id(Integer comment_id) {
		this.comment_id = comment_id;
	}
	public Integer getBuy_id() {
		return buy_id;
	}
	public void setBuy_id(Integer buy_id) {
		this.buy_id = buy_id;
	}
	public Integer getSell_id() {
		return sell_id;
	}
	public void setSell_id(Integer sell_id) {
		this.sell_id = sell_id;
	}
	public Integer getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}
	public Integer getModifyBy() {
		return modifyBy;
	}
	public void setModifyBy(Integer modifyBy) {
		this.modifyBy = modifyBy;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	@Override
	public String toString() {
		return "CommentAnswer [id=" + id + ", content=" + content + ", likeNum=" + likeNum + ", goods_id=" + goods_id
				+ ", comment_id=" + comment_id + ", buy_id=" + buy_id + ", sell_id=" + sell_id + ", createdBy="
				+ createdBy + ", modifyBy=" + modifyBy + ", creationDate=" + creationDate + ", modifyDate=" + modifyDate
				+ "]";
	}
}
