package com.six.pojo;

import java.io.Serializable;
import java.util.Date;

public class ShopGoods implements Serializable {
	private Integer id;		//id
	private String name;	//商品名
	private float price;	//价格
	private float score;	//评分
	private String size;	//尺寸
	private String color;	//颜色
	private String description;	//详细描述
	private String picPojoPath;	//图片项目路径
	private String picLocalPath;	//图片本地路径
	private String producerName;	//厂家名
	private Date produceDate;	//生产日期
	
	private Integer sell_id;	//卖家id
	private Integer category1_id;	//一级分类
	private Integer category2_id;	//二级分类
	private Integer category3_id;	//三级分类
	
	private Integer createdBy;	//创建者id
	private Date creationDate;	//创建日期
	private Integer modifyBy;	//更新者id
	private Date modifyDate;	//更新日期
	
	
	@Override
	public String toString() {
		return "ShopGoods [id=" + id + ", name=" + name + ", price=" + price + ", score=" + score + ", size=" + size
				+ ", color=" + color + ", description=" + description + ", picPojoPath=" + picPojoPath
				+ ", picLocalPath=" + picLocalPath + ", producerName=" + producerName + ", produceDate=" + produceDate
				+ ", sell_id=" + sell_id + ", category1_id=" + category1_id + ", category2_id=" + category2_id
				+ ", category3_id=" + category3_id + ", createdBy=" + createdBy + ", creationDate=" + creationDate
				+ ", modifyBy=" + modifyBy + ", modifyDate=" + modifyDate + "]";
	}

	public ShopGoods() {
		super();
	}
	
	public ShopGoods(Integer id, String name, float price, float score, String size, String color, String description,
			String picPojoPath, String picLocalPath, String producerName, Date produceDate, Integer sell_id,
			Integer category1_id, Integer category2_id, Integer category3_id, Integer createdBy, Date creationDate,
			Integer modifyBy, Date modifyDate) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.score = score;
		this.size = size;
		this.color = color;
		this.description = description;
		this.picPojoPath = picPojoPath;
		this.picLocalPath = picLocalPath;
		this.producerName = producerName;
		this.produceDate = produceDate;
		this.sell_id = sell_id;
		this.category1_id = category1_id;
		this.category2_id = category2_id;
		this.category3_id = category3_id;
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
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getScore() {
		return score;
	}
	public void setScore(float score) {
		this.score = score;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPicPojoPath() {
		return picPojoPath;
	}

	public void setPicPojoPath(String picPojoPath) {
		this.picPojoPath = picPojoPath;
	}

	public String getPicLocalPath() {
		return picLocalPath;
	}

	public void setPicLocalPath(String picLocalPath) {
		this.picLocalPath = picLocalPath;
	}

	public String getProducerName() {
		return producerName;
	}
	public void setProducerName(String producerName) {
		this.producerName = producerName;
	}
	public Date getProduceDate() {
		return produceDate;
	}
	public void setProduceDate(Date produceDate) {
		this.produceDate = produceDate;
	}
	public Integer getSell_id() {
		return sell_id;
	}
	public void setSell_id(Integer sell_id) {
		this.sell_id = sell_id;
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
