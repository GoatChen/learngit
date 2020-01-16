package com.six.pojo;

import java.util.Date;

/**
 * 商城购物车
 * @author 李氏老四
 */
public class ShopCar {
	
	private int id;     //购物车ID
	private int goods_id;    //商品ID
	private int buy_id;    //买家ID
	private int sell_id;    //卖家ID
	private int car_gnum;    //购买数量
	private int createdBy;    //创建者
	private Date creationDate;     //创建日期
	private int modifyBy;    //更新者
	private Date modifyDate;    //更新日期
	//多表连接，商品表
	private ShopGoods shopGoods;
	
	public ShopCar() {
		super();
	}

	public ShopCar(int id, int goods_id, int buy_id, int sell_id, int car_gnum, int createdBy, Date creationDate,
			int modifyBy, Date modifyDate, ShopGoods shopGoods) {
		super();
		this.id = id;
		this.goods_id = goods_id;
		this.buy_id = buy_id;
		this.sell_id = sell_id;
		this.car_gnum = car_gnum;
		this.createdBy = createdBy;
		this.creationDate = creationDate;
		this.modifyBy = modifyBy;
		this.modifyDate = modifyDate;
		this.shopGoods = shopGoods;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}

	public int getBuy_id() {
		return buy_id;
	}

	public void setBuy_id(int buy_id) {
		this.buy_id = buy_id;
	}

	public int getSell_id() {
		return sell_id;
	}

	public void setSell_id(int sell_id) {
		this.sell_id = sell_id;
	}

	public int getCar_gnum() {
		return car_gnum;
	}

	public void setCar_gnum(int car_gnum) {
		this.car_gnum = car_gnum;
	}

	public int getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	public int getModifyBy() {
		return modifyBy;
	}

	public void setModifyBy(int modifyBy) {
		this.modifyBy = modifyBy;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public ShopGoods getShopGoods() {
		return shopGoods;
	}

	public void setShopGoods(ShopGoods shopGoods) {
		this.shopGoods = shopGoods;
	}

	@Override
	public String toString() {
		return "ShopCar [id=" + id + ", goods_id=" + goods_id + ", buy_id=" + buy_id + ", sell_id=" + sell_id
				+ ", car_gnum=" + car_gnum + ", createdBy=" + createdBy + ", creationDate=" + creationDate
				+ ", modifyBy=" + modifyBy + ", modifyDate=" + modifyDate + ", shopGoods=" + shopGoods + "]";
	}
	
	
}
