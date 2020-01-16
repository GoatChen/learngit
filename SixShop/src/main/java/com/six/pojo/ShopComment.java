package com.six.pojo;

import java.io.Serializable;
import java.util.Date;

public class ShopComment implements Serializable {
	private Integer id;		//id
	private String content;	//内容
	private float score;	//评分
	private Integer likeNum;	//点赞数
	private String picPath;		//评论图片路径
	
	private Integer goods_id;	//商品id
	private Integer buy_id;	//买家id
	
	private Integer createdBy;	//创建者id
	private Date creationDate;	//创建日期
	private Integer modifyBy;	//更新者id
	private Date modifyDate;	//更新日期

	private String buyCode;	//买家用户名
	private String commentDate;	//评论时间
	private Integer isLike;	//是否点赞

	
	@Override
	public String toString() {
		return "ShopComment [id=" + id + ", content=" + content + ", score=" + score + ", likeNum=" + likeNum
				+ ", picPath=" + picPath + ", goods_id=" + goods_id + ", buy_id=" + buy_id + ", createdBy=" + createdBy
				+ ", creationDate=" + creationDate + ", modifyBy=" + modifyBy + ", modifyDate=" + modifyDate
				+ ", buyCode=" + buyCode + ", commentDate=" + commentDate + ", isLike=" + isLike + "]";
	}

	public ShopComment() {
		super();
	}

	public ShopComment(Integer id, String content, float score, Integer likeNum, String picPath, Integer goods_id,
			Integer buy_id, Integer createdBy, Date creationDate, Integer modifyBy, Date modifyDate, String buyCode,
			String commentDate, Integer isLike) {
		super();
		this.id = id;
		this.content = content;
		this.score = score;
		this.likeNum = likeNum;
		this.picPath = picPath;
		this.goods_id = goods_id;
		this.buy_id = buy_id;
		this.createdBy = createdBy;
		this.creationDate = creationDate;
		this.modifyBy = modifyBy;
		this.modifyDate = modifyDate;
		this.buyCode = buyCode;
		this.commentDate = commentDate;
		this.isLike = isLike;
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
	public float getScore() {
		return score;
	}
	public void setScore(float score) {
		this.score = score;
	}
	public Integer getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(Integer likeNum) {
		this.likeNum = likeNum;
	}
	public String getPicPath() {
		return picPath;
	}
	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}
	public Integer getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(Integer goods_id) {
		this.goods_id = goods_id;
	}
	public Integer getBuy_id() {
		return buy_id;
	}
	public void setBuy_id(Integer buy_id) {
		this.buy_id = buy_id;
	}
	public Integer getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public Integer getModifyBy() {
		return modifyBy;
	}
	public void setModifyBy(Integer modifyBy) {
		this.modifyBy = modifyBy;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getBuyCode() {
		return buyCode;
	}
	public void setBuyCode(String buyCode) {
		this.buyCode = buyCode;
	}

	public String getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}

	public Integer getIsLike() {
		return isLike;
	}

	public void setIsLike(Integer isLike) {
		this.isLike = isLike;
	}
	
}
