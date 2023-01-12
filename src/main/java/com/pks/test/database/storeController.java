package com.pks.test.database;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pks.test.database.bo.storeBO;
import com.pks.test.database.model.store;

@Controller
public class storeController {
	
	@Autowired
	private storeBO storeBO;

	@ResponseBody
	@RequestMapping("/database/test01")
	public List<store> MyBatisTest01(){
		
		List<store> storeList = storeBO.getstoreList();
		return storeList;
	}
}
