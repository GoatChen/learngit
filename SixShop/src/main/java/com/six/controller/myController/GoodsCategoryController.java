package com.six.controller.myController;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.six.pojo.myEntity.GoodsCategory;
import com.six.service.myService.GoodsCategoryService;



@Controller
@RequestMapping(value = "/sellUser")
public class GoodsCategoryController {

	@Resource
	private GoodsCategoryService goodsCategoryService;

	// 查询分类
	@RequestMapping(value = "/findCategoryLevel", method = RequestMethod.GET)
	@ResponseBody
	public List<GoodsCategory> findCategoryLevel(Integer parentValue) {
		List<GoodsCategory> goodsCategoryLevel = goodsCategoryService.findCategoryLevel(parentValue);
		return goodsCategoryLevel;
	}

}
