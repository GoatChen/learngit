package com.six.pojo;

import java.io.Serializable;
import java.util.Date;

public class ShopLike implements Serializable {

	private Integer id;		//id
	private Integer isLike;	//是否点赞 0:没点 1:点了
	
	private Integer buy_id;	//买家id
	private Integer comment_id;	//评论id
	
	private Integer createdBy;	//创建者id
	private Date creationDate;	//创建日期
	private Integer modifyBy;	//更新者id
	private Date modifyDate;	//更新日期
	
	@Override
	public String toString() {
		return "ShopLike [id=" + id + ", isLike=" + isLike + ", buy_id=" + buy_id + ", comment_id=" + comment_id
				+ ", createdBy=" + createdBy + ", creationDate=" + creationDate + ", modifyBy=" + modifyBy
				+ ", modifyDate=" + modifyDate + "]";
	}
	
	public ShopLike() {
		super();
	}
	public ShopLike(Integer id, Integer isLike, Integer buy_id, Integer comment_id, Integer createdBy,
			Date creationDate, Integer modifyBy, Date modifyDate) {
		super();
		this.id = id;
		this.isLike = isLike;
		this.buy_id = buy_id;
		this.comment_id = comment_id;
		this.createdBy = createdBy;
		this.creationDate = creationDate;
		this.modifyBy = modifyBy;
		this.modifyDate = modifyDate;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getIsLike() {
		return isLike;
	}
	public void setIsLike(Integer isLike) {
		this.isLike = isLike;
	}
	public Integer getBuy_id() {
		return buy_id;
	}
	public void setBuy_id(Integer buy_id) {
		this.buy_id = buy_id;
	}
	public Integer getComment_id() {
		return comment_id;
	}
	public void setComment_id(Integer comment_id) {
		this.comment_id = comment_id;
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
	
}
