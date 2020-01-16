package com.six.pojo.myEntity;

import java.util.Date;
/**
 * 评论表
 * @author 贝尔谦
 *
 */
public class Comment {
	private Integer id; // 评论id
	private String content; // 买家评论
	private double score; // 评分
	private Integer likeNum; // 点赞数
	private String picPath; // 评论图片
	private Integer goods_id; // 商品ID
	private Integer buy_id; // 买家ID
	private Integer sell_id; // 卖家ID
	private Integer createdBy; // 创建者
	private Integer modifyBy; // 更新者
	private Date creationDate; // 创建日期
	private Date modifyDate; // 更新日期
	/**
	 * *****************************
	 */
	
	private String contentAnwser; //卖家回复内容
	private String goodName; //商品名
	private String buyName; 	//买家名
	private String sellName;	//卖家店铺名
	private String picPojoPath; //图片路径
	
	
	public String getContentAnwser() {
		return contentAnwser;
	}
	public void setContentAnwser(String contentAnwser) {
		this.contentAnwser = contentAnwser;
	}
	public String getPicPojoPath() {
		return picPojoPath;
	}
	public void setPicPojoPath(String picPojoPath) {
		this.picPojoPath = picPojoPath;
	}
	public String getGoodName() {
		return goodName;
	}
	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}
	public String getBuyName() {
		return buyName;
	}
	public void setBuyName(String buyName) {
		this.buyName = buyName;
	}
	public String getSellName() {
		return sellName;
	}
	public void setSellName(String sellName) {
		this.sellName = sellName;
	}
	public Comment() {
		super();
	}
	public Comment(Integer id, String content, double score, Integer likeNum, String picPath, Integer goods_id,
			Integer buy_id, Integer sell_id, Integer createdBy, Integer modifyBy, Date creationDate, Date modifyDate) {
		super();
		this.id = id;
		this.content = content;
		this.score = score;
		this.likeNum = likeNum;
		this.picPath = picPath;
		this.goods_id = goods_id;
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
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
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
		return "Comment [id=" + id + ", content=" + content + ", score=" + score + ", likeNum=" + likeNum + ", picPath="
				+ picPath + ", goods_id=" + goods_id + ", buy_id=" + buy_id + ", sell_id=" + sell_id + ", createdBy="
				+ createdBy + ", modifyBy=" + modifyBy + ", creationDate=" + creationDate + ", modifyDate=" + modifyDate
				+ "]";
	}
	
	
}
