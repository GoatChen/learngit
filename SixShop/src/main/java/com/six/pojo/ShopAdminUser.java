package com.six.pojo;

import java.io.Serializable;
import java.util.Date;

public class ShopAdminUser implements Serializable {
	
	private Integer id;		//id
	private String code;	//用户名
	private String password;//密码
	private String phone;	//电话
	private String email;	//邮箱
	private String name;	//名字
	private String picPojoPath;	//图片项目路径
	private String picLocalPath;	//图片本地路径
	
	private Integer createdBy;	//创建者id
	private Date creationDate;	//创建日期
	private Integer modifyBy;	//更新者id
	private Date modifyDate;	//更新日期
	
	
	@Override
	public String toString() {
		return "ShopAdminUser [id=" + id + ", code=" + code + ", password=" + password + ", phone=" + phone + ", email="
				+ email + ", name=" + name + ", picPojoPath=" + picPojoPath + ", picLocalPath=" + picLocalPath
				+ ", createdBy=" + createdBy + ", creationDate=" + creationDate + ", modifyBy=" + modifyBy
				+ ", modifyDate=" + modifyDate + "]";
	}

	public ShopAdminUser() {
		super();
	}
	
	public ShopAdminUser(Integer id, String code, String password, String phone, String email, String name,
			String picPojoPath, String picLocalPath, Integer createdBy, Date creationDate, Integer modifyBy,
			Date modifyDate) {
		super();
		this.id = id;
		this.code = code;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.name = name;
		this.picPojoPath = picPojoPath;
		this.picLocalPath = picLocalPath;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
