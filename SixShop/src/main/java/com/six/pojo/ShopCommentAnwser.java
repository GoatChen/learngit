package com.six.pojo;

import java.io.Serializable;
import java.util.Date;

public class ShopCommentAnwser implements Serializable {

	private Integer id;		//id
	private String content;	//内容
	
	private Integer goods_id;	//商品id
	private Integer comment_id;	//评论id
	private Integer buy_id;	//买家id
	private Integer sell_id;	//卖家id
	
	private Integer createdBy;	//创建者id
	private Date creationDate;	//创建日期
	private Integer modifyBy;	//更新者id
	private Date modifyDate;	//更新日期
	
	
	@Override
	public String toString() {
		return "ShopCommentAnwser [id=" + id + ", content=" + content + ", goods_id=" + goods_id + ", comment_id="
				+ comment_id + ", buy_id=" + buy_id + ", sell_id=" + sell_id + ", createdBy=" + createdBy
				+ ", creationDate=" + creationDate + ", modifyBy=" + modifyBy + ", modifyDate=" + modifyDate + "]";
	}
	
	public ShopCommentAnwser() {
		super();
	}
	public ShopCommentAnwser(Integer id, String content, Integer goods_id, Integer comment_id, Integer buy_id,
			Integer sell_id, Integer createdBy, Date creationDate, Integer modifyBy, Date modifyDate) {
		super();
		this.id = id;
		this.content = content;
		this.goods_id = goods_id;
		this.comment_id = comment_id;
		this.buy_id = buy_id;
		this.sell_id = sell_id;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
