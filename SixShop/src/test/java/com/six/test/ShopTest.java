package com.six.test;

import static org.junit.Assert.*;

import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.six.dao.ShopLoginRegisterMapper;
import com.six.pojo.ShopBuyUser;
import com.six.pojo.ShopComment;

public class ShopTest {

	// 测试连接数据库，并查询buyUser
	@Test
	public void loginTest() {
		InputStream input = null;
		SqlSessionFactory sqlSessionFactory = null;
		SqlSession session = null;
		try {
			input = Resources.getResourceAsStream("mybatis-conf.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(input);
			session = sqlSessionFactory.openSession();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

//		ShopBuyUser buyUser = session.getMapper(ShopLoginRegisterMapper.class).selectBuyUserByCode("防静电棒", "123");
		ShopBuyUser buyUser = session.getMapper(ShopLoginRegisterMapper.class).selectBuyUserByPhone("10086");
		System.out.println(buyUser);

		session.close();
	}

	// 测试注册用户buyUser
	@Test
	public void registerTest() {
		InputStream input = null;
		SqlSessionFactory sqlSessionFactory = null;
		SqlSession session = null;
		try {
			input = Resources.getResourceAsStream("mybatis-conf.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(input);
			session = sqlSessionFactory.openSession();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date date2 = null;
		Date date1 = null;
		try {
			date2 = sdf.parse(sdf.format(new Date(2019-1900, 05-1, 01)));
			date1 = sdf1.parse(sdf1.format(new Date()));
			int compare = date2.compareTo(date1);
			if (compare > 0) {
				System.out.println("目标日期大于当前日期！");
			} else if (compare == 0) {
				System.out.println("目标日期等于当前日期！");
			} else {
				System.out.println("目标日期小于当前日期！");
			}
			System.out.println("转换后date1:" + sdf.format(date1)); // 转换之后的格式
			System.out.println("转换后date2:" + sdf1.format(date2)); // 转换之后的格式
			System.out.println("默认date1:" + date1); // date的默认格式
			System.out.println("默认date2:" + date2); // date的默认格式
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

//		Date date = null;
//		Date date3 = null;
//		try {
//			date = sdf.parse(sdf.format(new Date(1998-1900,06-1,06)));
//			date3 = sdf1.parse(sdf1.format(new Date()));
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		ShopBuyUser buyUser = new ShopBuyUser(); 
//		buyUser.setCode("防静电裤");
//		buyUser.setPassword("123"); 
//		buyUser.setPhone("12345");
//		buyUser.setEmail("123456789@qq.com"); 
//		buyUser.setName("cwx");
//		buyUser.setSex("男"); 
//		buyUser.setBirthday(date); 
//		buyUser.setCreatedBy(1);
//		buyUser.setCreationDate(date3);
//		
//		int isFlag = session.getMapper(ShopLoginRegisterMapper.class).insertBuyUser(buyUser);
//		session.commit();
//		if(isFlag>0) { 
//			System.out.println("**************插入买家用户成功！"); 
//		} 
//		else {
//			System.out.println("**************插入买家用户失败！"); 
//		}

		session.close();
	}

	// 测试商品评论点赞
	@Test
	public void likeTest() {
		Integer i = null;	//不赋值不能输出
		System.out.println(i);
		
		ShopComment shopComment = new ShopComment();	//调用类封装变量，不赋值是null
		System.out.println(shopComment.getIsLike());
		
	}

}
