package com.pks.test.jsp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pks.test.jsp.bo.SellerBO;
import com.pks.test.jsp.model.Seller;

@Controller
@RequestMapping("/jsp/test01")
public class SellerController {
	
	@Autowired
	private SellerBO sellerBO;
	
	@PostMapping("/add")
	@ResponseBody
	public String addSeller (
			@RequestParam("nickname")String nickname
			, @RequestParam("temperature")double temperature
			, @RequestParam("profileImage")String profileImage){
		
		int count =	sellerBO.addSeller(nickname, temperature, profileImage);
		return "판매자 추가 : " + count;
	}
	
	@GetMapping("/input")
	public String sellerInput() {
		return "jsp/addSeller";
	}
	
	
	@GetMapping("/info")
	public String sellerInfo(
			@RequestParam(value ="id", required=false) Integer id  // value ="id", required=true
			,Model model) {
		
//		Seller seller = null;
//		if(id == null) {
//			seller = sellerBO.getLastSeller();
//// 똑같은 매소드라 밖으로 뻄	model.addAttribute("seller", seller); // 앞에 "seller"는 JSP 에서 사용할 값 
//		} else {
//			seller = sellerBO.getSeller(id);
////			model.addAttribute("seller", seller);
//		}
		
		Seller seller = sellerBO.getSeller(id);
		model.addAttribute("seller", seller);
		
		return "jsp/sellerinfo";
	}
	
	
	@GetMapping("/info/id")
	public String sellerInfoById(@RequestParam("id") int id,Model model) {
		
		Seller seller = sellerBO.getSeller(id);
		model.addAttribute("seller", seller);
		
		return  "jsp/sellerinfo";
		
	}
	
	

}
