package com.pks.test.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pks.test.mybatis.bo.RealEstateBO;
import com.pks.test.mybatis.model.RealEstate;

@Controller
@RequestMapping("/mybatis")
public class RealEstateController {
	
	
	
	@Autowired
	private RealEstateBO RealEstateBO;
	
	// id 를 리퀘스트 파라미터로 전달 받고, 조회결과를 json 으로 response에 담는다.
	@ResponseBody
	@RequestMapping("/test01/1")
	public RealEstate RealEstate(@RequestParam("id")int id) {
		RealEstate realestate = RealEstateBO.getRealEstate(id);
		return realestate;
	}
	
	
	// 전달된 월세 보다 낮은 매물 리스트 json으로 response 담는다.
	@ResponseBody
	@RequestMapping("/test01/2")
	public List<RealEstate> RentPrice(@RequestParam("rent")int rentPrice) { // 여기서 파라미터는 rent 주소에서 입력하는값
		List<RealEstate> realEstateList = RealEstateBO.getRealEstateRentPirce(rentPrice);
		return realEstateList;
	}
	
	
	// 넓이를 매매 가격을 전달 받고, 이에 상응하는 리스트를 json으로 response에 담는다
	@ResponseBody
	@RequestMapping("/test01/3")
	public List<RealEstate> AreaPrice(
			@RequestParam("area")int area
			, @RequestParam("price")int price) {
		return RealEstateBO.getRealEstateListByAreaPrice(area, price);
	}
	
	
	// 1번 2번 풀이 뒤바뀜
	@ResponseBody
	@RequestMapping("/test02/1")
	public String addEstate1() {
		int count = RealEstateBO.addEstate1(3, "푸르지용 리버 303동 1104호", 89, "매매", 100000, 0);
		return "입력 성공 : " + count; 
		
	}
	
	
	
	
	// 1번 2번 풀이 뒤바뀜
	@RequestMapping("/test02/2")
	@ResponseBody
	public String addEstate(@RequestParam("realtorid")int realtorId
) {
		
		RealEstate realestate = new RealEstate();
		realestate.setAddress("쌍떼빌리버 오피스텔 814호");
		realestate.setArea(45);
		realestate.setType("월세");
		realestate.setPrice(100000);
		realestate.setRentPrice(120);
		realestate.setRealtorId((realtorId));
		
		int count = RealEstateBO.addEstate(realestate);
		return "입력성공" + count;
	}
	
	@ResponseBody
	@RequestMapping("/test02/3")
	public String addRealEstate(@RequestParam("realtorId") int realtorId) {
		int count = RealEstateBO.addRealEstate(realtorId, "쌍떼빌리버 오피스텔 814호", 45, "월세", 100000, 120);
		
		return "삽입 결과 : " + count ;
		
	}
	
	
	
	@ResponseBody
	@RequestMapping("/test03")
	public String updateRealEstate() {
		
		// id가 24인 매물의 타입을 전세 price 70000
		int count = RealEstateBO.updateRealEstate(30, "전세", 70000);
		
		return "수정사항 : " + count;
	}
	
	
	@ResponseBody
	@RequestMapping("/test04")
	public String deleteRealEstate(@RequestParam("id")int id) {
		int count = RealEstateBO.deleteRealEstate(id);
		return "삭제 : "  + count;
	}
	
	
	
}
