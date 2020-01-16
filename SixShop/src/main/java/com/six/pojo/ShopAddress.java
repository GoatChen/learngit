package com.six.pojo;

import java.io.Serializable;
import java.util.Date;

//买家地址类
public class ShopAddress implements Serializable {

	private Integer id;		//id
	private String address;	//收件地址
	private String phone;	//联系电话
	private String name;	//收件人
	private Integer isDefault;	//是否为默认地址  0:不是 1:是
	
	private Integer buy_id;	//买家id
	
	private Integer createdBy;	//创建者id
	private Date creationDate;	//创建日期
	private Integer modifyBy;	//更新者id
	private Date modifyDate;	//更新日期
	
	@Override
	public String toString() {
		return "ShopAddress [id=" + id + ", address=" + address + ", phone=" + phone + ", name=" + name + ", isDefault="
				+ isDefault + ", buy_id=" + buy_id + ", createdBy=" + createdBy + ", creationDate=" + creationDate
				+ ", modifyBy=" + modifyBy + ", modifyDate=" + modifyDate + "]";
	}
	
	public ShopAddress() {
		super();
	}
	public ShopAddress(Integer id, String address, String phone, String name, Integer isDefault, Integer buy_id,
			Integer createdBy, Date creationDate, Integer modifyBy, Date modifyDate) {
		super();
		this.id = id;
		this.address = address;
		this.phone = phone;
		this.name = name;
		this.isDefault = isDefault;
		this.buy_id = buy_id;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public Integer getIsDefault() {
		return isDefault;
	}
	public void setIsDefault(Integer isDefault) {
		this.isDefault = isDefault;
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
	
}
