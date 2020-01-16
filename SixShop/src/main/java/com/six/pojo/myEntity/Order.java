package com.six.pojo.myEntity;

import java.io.Serializable;
import java.util.Date;

public class Order implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;// 订单ID
	private String code;// 订单编码
	private String name; // 收件人
	private String phone; // 联系电话
	private String address; // 收货地址
	private Integer goodsNum; // 商品数量
	private Integer totalPrice; // 总价
	private Integer isSend;// 是否发货
	private Integer isReceive;// 是否收货
	private Integer afterSell;// 售后类型
	private Integer goods_id;// 商品ID
	private Integer buy_id;// 买家ID
	private Integer sell_id;// 卖家ID
	private Integer createdBy;// 创建者
	private Date creationDate;// 创建日期
	private Integer modifyBy;// 更新者
	private Date modifyDate;// 更新日期
	private Goods goods;
	private BuyUser buyUser;
	
	/**
	 * *****************************
	 */
	private String goodName; //商品名
	private String buyName; 	//买家名
	private String sellName;	//卖家店铺名
	
	
	
	public Order() {
		super();
	}
	public Order(Integer id, String code, String name, String phone, String address, Integer goodsNum,
			Integer totalPrice, Integer isSend, Integer isReceive, Integer afterSell, Integer goods_id, Integer buy_id,
			Integer sell_id, Integer createdBy, Date creationDate, Integer modifyBy, Date modifyDate, Goods goods,
			BuyUser buyUser, String goodName, String buyName, String sellName) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.goodsNum = goodsNum;
		this.totalPrice = totalPrice;
		this.isSend = isSend;
		this.isReceive = isReceive;
		this.afterSell = afterSell;
		this.goods_id = goods_id;
		this.buy_id = buy_id;
		this.sell_id = sell_id;
		this.createdBy = createdBy;
		this.creationDate = creationDate;
		this.modifyBy = modifyBy;
		this.modifyDate = modifyDate;
		this.goods = goods;
		this.buyUser = buyUser;
		this.goodName = goodName;
		this.buyName = buyName;
		this.sellName = sellName;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getGoodsNum() {
		return goodsNum;
	}
	public void setGoodsNum(Integer goodsNum) {
		this.goodsNum = goodsNum;
	}
	public Integer getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}
	public Integer getIsSend() {
		return isSend;
	}
	public void setIsSend(Integer isSend) {
		this.isSend = isSend;
	}
	public Integer getIsReceive() {
		return isReceive;
	}
	public void setIsReceive(Integer isReceive) {
		this.isReceive = isReceive;
	}
	public Integer getAfterSell() {
		return afterSell;
	}
	public void setAfterSell(Integer afterSell) {
		this.afterSell = afterSell;
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
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public BuyUser getBuyUser() {
		return buyUser;
	}
	public void setBuyUser(BuyUser buyUser) {
		this.buyUser = buyUser;
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
	@Override
	public String toString() {
		return "Order [id=" + id + ", code=" + code + ", name=" + name + ", phone=" + phone + ", address=" + address
				+ ", goodsNum=" + goodsNum + ", totalPrice=" + totalPrice + ", isSend=" + isSend + ", isReceive="
				+ isReceive + ", afterSell=" + afterSell + ", goods_id=" + goods_id + ", buy_id=" + buy_id
				+ ", sell_id=" + sell_id + ", createdBy=" + createdBy + ", creationDate=" + creationDate + ", modifyBy="
				+ modifyBy + ", modifyDate=" + modifyDate + ", goods=" + goods + ", buyUser=" + buyUser + ", goodName="
				+ goodName + ", buyName=" + buyName + ", sellName=" + sellName + "]";
	}
	
	

}
