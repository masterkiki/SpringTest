package com.pks.test.mybatis.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pks.test.mybatis.dao.RealEstateDAO;
import com.pks.test.mybatis.model.RealEstate;

@Service
public class RealEstateBO {

	@Autowired
	private RealEstateDAO RealEstateDAO;
	
	public RealEstate getRealEstate(int id) {
		RealEstate realestate = RealEstateDAO.selectRealEstate(id);
		return realestate;
	}
	
	
	
	public RealEstate getRealEstateRentPirce(int rentPrice) {
		RealEstate rentprice = RealEstateDAO.RealEstaterentPrice(rentPrice);
		return rentprice;
	}
}
