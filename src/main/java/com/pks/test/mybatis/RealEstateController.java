package com.pks.test.mybatis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pks.test.mybatis.bo.RealEstateBO;
import com.pks.test.mybatis.model.RealEstate;

@Controller
@RequestMapping("/mybatis/test01")
public class RealEstateController {
	
	@Autowired
	private RealEstateBO RealEstateBO;
	
	@ResponseBody
	@RequestMapping("/1")
	public RealEstate RealEstate(@RequestParam("id")int id) {
		RealEstate realestate = RealEstateBO.getRealEstate(id);
		return realestate;
	}
	@ResponseBody
	@RequestMapping("/2")
	public RealEstate RentPrice(@RequestParam("rentPrice")int rentPrice) {
		RealEstate rentprice = RealEstateBO.getRealEstateRentPirce(rentPrice);
		return rentprice;
	}
	
}
