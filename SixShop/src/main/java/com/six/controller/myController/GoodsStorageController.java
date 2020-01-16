package com.six.controller.myController;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;
import com.six.pojo.myEntity.Goods;
import com.six.pojo.myEntity.GoodsStorage;
import com.six.pojo.myEntity.SellUser;
import com.six.service.myService.GoodsService;
import com.six.service.myService.GoodsStorageService;
import com.six.tools.Constants;

@Controller
@RequestMapping(value = "/sellUser")
public class GoodsStorageController {

	@Resource
	private GoodsStorageService goodsStorageService;

	@Resource
	private GoodsService goodsService;

	// 跳转到增加界面
	@RequestMapping(value = "/insGoodsStorage")
	public String insGoodsStorage() {
		return "/seller/insstorage";
	}

	// 跳转到库存界面
	@RequestMapping(value = "/storage")
	public String storage(HttpSession session, Model model) {
		SellUser sellUserSession = (SellUser) session.getAttribute(Constants.SELL_USER_SESSION);
		String code = sellUserSession.getCode();
		List<GoodsStorage> goodsStorageList = goodsStorageService.findSomeGoodsStorage(code);
		model.addAttribute("goodsStorageList", goodsStorageList);
		return "/seller/storage";
	}

	// 跳转到库存修改界面
	@RequestMapping(value = "/queryGoodsStorage", method = RequestMethod.GET)
	public String queryGoodsStorage(Integer goodsStorageId, Model model) {
		GoodsStorage goodsStorage = goodsStorageService.findGoodsStorage(goodsStorageId);
		model.addAttribute("goodsStorage", goodsStorage);
		return "/seller/qustorage";
	}

	// 查询是否有该名称
	@RequestMapping(value = "/findName", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> findName(HttpSession session, String name) {
		SellUser sellUserSession = (SellUser) session.getAttribute(Constants.SELL_USER_SESSION);
		Integer sell_id = sellUserSession.getId();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		GoodsStorage goodsStorage = goodsStorageService.findName(sell_id, name);
		if (goodsStorage != null) {
			resultMap.put("delResult", "false");
		} else {
			resultMap.put("delResult", "true");
		}
		return resultMap;
	}

	// 商品上架
		@RequestMapping(value = "/queryStatus5", method = RequestMethod.GET)
		@ResponseBody
		public Map<String, Object> queryStatus5(HttpSession session, Integer goodsStorageId, Integer status, Model model) {
			Map<String, Object> resultMap = new HashMap<String, Object>();
			boolean flag = goodsStorageService.queryStatus(goodsStorageId, 5);
			// 上架处理
			if (flag) {
				GoodsStorage goodsStorage = goodsStorageService.findGoodsStorage(goodsStorageId);
				SellUser sellUserSession = (SellUser) session.getAttribute(Constants.SELL_USER_SESSION);
				Integer sell_id = sellUserSession.getId();
				Goods goods = new Goods();
				goods.setName(goodsStorage.getName());
				goods.setPrice(goodsStorage.getPrice());
				goods.setScore((float) 4.8);
				goods.setSize(goodsStorage.getSize());
				goods.setColor(goodsStorage.getColor());
				goods.setDescription("暂无描述");
				goods.setPicPojoPath(goodsStorage.getPicPath());
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
				Date creationDate = new Date();	
				try {
					creationDate = sdf.parse(sdf.format(new Date()));
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				goods.setProducerName("酷云公子");
				goods.setProduceDate(creationDate);
				goods.setCreatedBy(1);
				goods.setCreationDate(creationDate);
				goods.setSell_id(sell_id);
				goods.setCategory1_id(goodsStorage.getCategory1_id());
				goods.setCategory2_id(goodsStorage.getCategory2_id());
				goods.setCategory3_id(goodsStorage.getCategory3_id());
				boolean flag1 = goodsService.insGoods(goods);
				if (flag1) {
					resultMap.put("delResult", "true");
				} else {
					resultMap.put("delResult", "false");
				}
			} else {
				resultMap.put("delResult", "false");
			}
			return resultMap;
		}


	// 商品下架
	@RequestMapping(value = "/queryStatus4", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> queryStatus4(Integer goodsStorageId, Integer status, Model model) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		boolean flag = goodsStorageService.queryStatus(goodsStorageId, 4);
		GoodsStorage goodsStorage = goodsStorageService.findGoodsStorage(goodsStorageId);
		boolean flag1 = goodsService.delGoods(goodsStorage.getName());
		if(flag&&flag1) {
			resultMap.put("delResult", "true");
		}
		else {
			resultMap.put("delResult", "false");
		}
		return resultMap;
	}

	// 申请审核
	@RequestMapping(value = "/queryStatus1", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> queryStatus1(Integer goodsStorageId, Integer status, Model model) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		boolean flag = goodsStorageService.queryStatus(goodsStorageId, 1);
		if (flag) {
			resultMap.put("delResult", "true");
		} else {
			resultMap.put("delResult", "false");
		}
		return resultMap;
	}

	// 上传图片
	@RequestMapping(value = "/insImg", method = RequestMethod.POST)
	@ResponseBody
	public Object insImg(HttpServletRequest request,
			@RequestParam(value = "file", required = false) MultipartFile file) {
		String path = request.getServletContext().getRealPath("/");
		String thisPath = path + "static\\";
		//是否能生成本地路径
		System.out.println("本地路径:"+thisPath+"uploads");
		String fileName = file.getOriginalFilename();
		File newfile = new File(thisPath + "uploads", fileName);
		try {
			file.transferTo(newfile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 将文件上传的路径给SellUser对象的picPojoPath
		String picPath = "/uploads/" + fileName;
		JSONObject result = new JSONObject();
		if(picPath!=""&&picPath!=null) {
			result.put("delResult", picPath);
		}
		else {
			result.put("delResult", "");
		}
		return result.toJSONString();
	}

	// 增加库存信息
	@RequestMapping(value = "/insStorage", method = RequestMethod.POST)
	public String insStorage(HttpServletRequest request, HttpSession session, GoodsStorage goodsStorage) {
		SellUser sellUserSession = (SellUser) session.getAttribute(Constants.SELL_USER_SESSION);
		Integer sell_id = sellUserSession.getId();
		goodsStorage.setSell_id(sell_id);
		//补丁
		String picPath=goodsStorage.getPicPath().substring(0,goodsStorage.getPicPath().length() - 1);
		goodsStorage.setPicPath(picPath);
		boolean flag = goodsStorageService.insGoodsStorage(goodsStorage);
		if (flag) {

		}
		return "redirect:/sellUser/storage";
	}

	// 修改图片
	@RequestMapping(value = "/queryImg", method = RequestMethod.POST)
	@ResponseBody
	public String queryImg(HttpServletRequest request,
			@RequestParam(value = "file", required = false) MultipartFile file,
			@RequestParam(value = "goodsStorageId", required = false) Integer goodsStorageId) {
		String path = request.getServletContext().getRealPath("/");
		String thisPath = path + "static\\";
		String fileName = file.getOriginalFilename();
		File newfile = new File(thisPath + "uploads", fileName);
		try {
			file.transferTo(newfile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 将文件上传的路径给SellUser对象
		String picPath = "/uploads/" + fileName;
		boolean flag = goodsStorageService.queryImg(goodsStorageId, picPath);
		if(flag) {
			return "true";
		}
		else {
			return "false";
		}
	}

	// 修改库存信息
	@RequestMapping(value = "/queryStorage")
	public String queryStorage(HttpSession session, GoodsStorage goodsStorage) {
		SellUser sellUserSession = (SellUser) session.getAttribute(Constants.SELL_USER_SESSION);
		Integer sell_id = sellUserSession.getId();
		goodsStorage.setSell_id(sell_id);
		boolean flag = goodsStorageService.queryGoodsStorage(goodsStorage);
		if (flag) {

		}
		return "redirect:/sellUser/storage";
	}

	// 删除单个库存信息
	@RequestMapping(value = "/delGoodsStorage", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> delSomeStorage(Integer goodsStorageId) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		boolean flag = goodsStorageService.delGoodsStorage(goodsStorageId);
		if (flag) {
			resultMap.put("delResult", "true");
		} else {
			resultMap.put("delResult", "false");
		}
		return resultMap;
	}

	// 删除批量库存信息
	@RequestMapping(value = "/delSomeStorage", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> delSomeStorage(String idStr, Model model) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		boolean flag = goodsStorageService.delSomeGoodsStorage(idStr);
		if (flag) {
			resultMap.put("delResult", "true");
		} else {
			resultMap.put("delResult", "false");
		}
		return resultMap;
	}

}
