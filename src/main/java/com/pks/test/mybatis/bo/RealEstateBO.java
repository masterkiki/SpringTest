package com.pks.test.mybatis.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pks.test.mybatis.dao.RealEstateDAO;
import com.pks.test.mybatis.model.RealEstate;

@Service
public class RealEstateBO {

	@Autowired
	private RealEstateDAO RealEstateDAO;
	
	// 전달 받은 id 데이터 조회 리턴
	public RealEstate getRealEstate(int id) {
		RealEstate realestate = RealEstateDAO.selectRealEstate(id);
		return realestate;
	}
	
	// 전달 받은 월세 보다 낮은 매물 리스트 리턴
	public List<RealEstate> getRealEstateRentPirce(int rentPrice) {
		List<RealEstate> realEstateList = RealEstateDAO.selectRealEstaterentPrice(rentPrice);
		return realEstateList;
	}
	
	public List<RealEstate> getRealEstateListByAreaPrice(int area, int price) {
		
		//  위에처럼 변수 선언해서 써야할때도 있긴하지만 이경우는 바로 리턴해줘도 되서 바로 리턴함
		return RealEstateDAO.selectRealEstateByAreaPrice(area, price);
		
	}
	
	
	public int addEstate1(int realtorId, String address, int area, String type, int price, int rentprice) {
		return RealEstateDAO.insertEstateByObject1(realtorId, address, area, type, price, rentprice);
	}
	
	
	public int addEstate(RealEstate realestate) {
		return RealEstateDAO.insertEstateByObject(realestate);
	}
	
	// 저장할 값을 모두 전달 받고 저장하는 기능
	
	public int addRealEstate(
			int realtorId
			, String address
			, int area
			, String type
			, int price
			, int rentPrice) {
		
		return RealEstateDAO.insertRealEstate(realtorId, address, area, type, price, rentPrice);
		
	}
	
	// 변경할 대상 id, 변경할 type, 변경할 price
	public int updateRealEstate(int id, String type, int price) {
		return RealEstateDAO.updateRealEstate(id, type, price);
	}
	
	
	public int deleteRealEstate(int id) {
		return RealEstateDAO.deleteRealEstate(id);
	}
	
}
