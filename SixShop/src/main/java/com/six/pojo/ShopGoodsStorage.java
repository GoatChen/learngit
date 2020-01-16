package com.six.pojo;

import java.util.Date;

public class ShopGoodsStorage {
	/**
	 * 
	 */
	private Integer id;// 商品库存ID
	private String name;// 商品名
	private Integer price;// 价格
	private Integer number;// 数量
	private Integer overNum;// 成交量
	private Integer backNum;// 退货量
	private String size;// 尺寸
	private String color;// 颜色
	private String picPath;// 商品图片路径
	private Integer sell_id;// 卖家ID
	private Integer goods_id;// 商品ID
	private Integer category1_id;// 一级分类ID
	private Integer category2_id;// 二级分类ID
	private Integer category3_id;// 三级分类ID
	private Integer status;// 状态
	private String categoryName1;// 一级分类名称
	private String categoryName2;// 二级分类名称
	private String categoryName3;// 三级分类名称
	private Integer createdBy;// 创建者
	private Date creationDate;// 创建日期
	private Integer modifyBy;// 更新者
	private Date modifyDate;// 更新日期

	public ShopGoodsStorage() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ShopGoodsStorage(Integer id, String name, Integer price, Integer number, Integer overNum, Integer backNum,
			String size, String color, String picPath, Integer sell_id, Integer goods_id, Integer category1_id,
			Integer category2_id, Integer category3_id, Integer status, String categoryName1, String categoryName2,
			String categoryName3, Integer createdBy, Date creationDate, Integer modifyBy, Date modifyDate) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.number = number;
		this.overNum = overNum;
		this.backNum = backNum;
		this.size = size;
		this.color = color;
		this.picPath = picPath;
		this.sell_id = sell_id;
		this.goods_id = goods_id;
		this.category1_id = category1_id;
		this.category2_id = category2_id;
		this.category3_id = category3_id;
		this.status = status;
		this.categoryName1 = categoryName1;
		this.categoryName2 = categoryName2;
		this.categoryName3 = categoryName3;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public Integer getOverNum() {
		return overNum;
	}

	public void setOverNum(Integer overNum) {
		this.overNum = overNum;
	}

	public Integer getBackNum() {
		return backNum;
	}

	public void setBackNum(Integer backNum) {
		this.backNum = backNum;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getPicPath() {
		return picPath;
	}

	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}

	public Integer getSell_id() {
		return sell_id;
	}

	public void setSell_id(Integer sell_id) {
		this.sell_id = sell_id;
	}

	public Integer getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(Integer goods_id) {
		this.goods_id = goods_id;
	}

	public Integer getCategory1_id() {
		return category1_id;
	}

	public void setCategory1_id(Integer category1_id) {
		this.category1_id = category1_id;
	}

	public Integer getCategory2_id() {
		return category2_id;
	}

	public void setCategory2_id(Integer category2_id) {
		this.category2_id = category2_id;
	}

	public Integer getCategory3_id() {
		return category3_id;
	}

	public void setCategory3_id(Integer category3_id) {
		this.category3_id = category3_id;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getCategoryName1() {
		return categoryName1;
	}

	public void setCategoryName1(String categoryName1) {
		this.categoryName1 = categoryName1;
	}

	public String getCategoryName2() {
		return categoryName2;
	}

	public void setCategoryName2(String categoryName2) {
		this.categoryName2 = categoryName2;
	}

	public String getCategoryName3() {
		return categoryName3;
	}

	public void setCategoryName3(String categoryName3) {
		this.categoryName3 = categoryName3;
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
