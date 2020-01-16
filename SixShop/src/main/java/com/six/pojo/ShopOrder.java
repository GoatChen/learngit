package com.six.pojo;

import java.io.Serializable;
import java.util.Date;

//订单类
public class ShopOrder implements Serializable {
	
	private Integer id;		//id
	private String code;	//订单编码  日期+商品号+订单号
	private String phone;	//联系电话
	private String name;	//收件人
	private String address;	//收货地址
	private Integer goodsNum;	//商品数量
	private Integer totalPrice;	//总价
	private Integer isSend;	//是否发货  0:没发货 1:发货
	private Integer isReceive;	//是否收货  0:没收获 1:收货
	private Integer afterSell;	//售后类型  0:无售后 1:退款（未发货/未收货） 2:退货退款（发货/未收货，发货/收货）

	private Integer goods_id;	//商品id
	private Integer buy_id;		//买家id
	private Integer sell_id;	//商家id
	
	private Integer createdBy;	//创建者id
	private Date creationDate;	//创建日期
	private Integer modifyBy;	//更新者id
	private Date modifyDate;	//更新日期
	
	private String goods_name;  //商品名字
	
	@Override
	public String toString() {
		return "shopOrder [id=" + id + ", code=" + code + ", phone=" + phone + ", name=" + name + ", address=" + address
				+ ", goodsNum=" + goodsNum + ", totalPrice=" + totalPrice + ", isSend=" + isSend + ", isReceive="
				+ isReceive + ", afterSell=" + afterSell + ", goods_id=" + goods_id + ", buy_id=" + buy_id
				+ ", sell_id=" + sell_id + ", createdBy=" + createdBy + ", creationDate=" + creationDate + ", modifyBy="
				+ modifyBy + ", modifyDate=" + modifyDate + "]";
	}
	
	public ShopOrder() {
		super();
	}
	public ShopOrder(Integer id, String code, String phone, String name, String address, Integer goodsNum,
			Integer totalPrice, Integer isSend, Integer isReceive, Integer afterSell, Integer goods_id, Integer buy_id,
			Integer sell_id, Integer createdBy, Date creationDate, Integer modifyBy, Date modifyDate) {
		super();
		this.id = id;
		this.code = code;
		this.phone = phone;
		this.name = name;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	
}
