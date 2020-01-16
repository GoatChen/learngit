package com.six.pojo.myEntity;

import java.io.Serializable;
import java.util.Date;

public class SellUser implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;// 用户id
	private String code;// 编码/账号
	private String password;// 密码
	private String phone;// 电话
	private String email;// 邮箱
	private String name;// 姓名
	private String sex;// 性别
	private Date birthday;// 出生日期
	private String picPojoPath;	//图片项目路径
	private String picLocalPath;	//图片本地路径
	private String ban;// 是否被禁止
	private float money;// 余额
	private String sellName;// 店铺名
	private Integer createdBy;// 创建者
	private Date creationDate;// 创建日期
	private Integer modifyBy;// 更新者
	private Date modifyDate;// 更新日期
	
	public SellUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SellUser(Integer id, String code, String password, String phone, String email, String name, String sex,
			Date birthday, String picPojoPath, String picLocalPath, String ban, float money, String sellName,
			Integer createdBy, Date creationDate, Integer modifyBy, Date modifyDate) {
		super();
		this.id = id;
		this.code = code;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.picPojoPath = picPojoPath;
		this.picLocalPath = picLocalPath;
		this.ban = ban;
		this.money = money;
		this.sellName = sellName;
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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
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

	public String getBan() {
		return ban;
	}

	public void setBan(String ban) {
		this.ban = ban;
	}

	public float getMoney() {
		return money;
	}

	public void setMoney(float money) {
		this.money = money;
	}

	public String getSellName() {
		return sellName;
	}

	public void setSellName(String sellName) {
		this.sellName = sellName;
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

	@Override
	public String toString() {
		return "SellUser [id=" + id + ", code=" + code + ", password=" + password + ", phone=" + phone + ", email="
				+ email + ", name=" + name + ", sex=" + sex + ", birthday=" + birthday + ", picPojoPath=" + picPojoPath
				+ ", picLocalPath=" + picLocalPath + ", ban=" + ban + ", money=" + money + ", sellName=" + sellName
				+ ", createdBy=" + createdBy + ", creationDate=" + creationDate + ", modifyBy=" + modifyBy
				+ ", modifyDate=" + modifyDate + "]";
	}
	
}
