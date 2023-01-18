package com.pks.test.jsp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pks.test.jsp.bo.RealtorBO;
import com.pks.test.jsp.model.Realtor;

@Controller
@RequestMapping("/jsp/test02")
public class RealtorController {

	
	@Autowired
	private RealtorBO realtorBO;
	
	
	@GetMapping("/add")
//	@ResponseBody
	public String addRealtor(
//			@RequestParam("office") String office
//			, @RequestParam("phoneNumber") String phoneNumber
//			, @RequestParam("address") String address
//			, @RequestParam("grade")String grade
			@ModelAttribute Realtor realtor
			, Model model) {
		
//		Realtor realtor = new Realtor();
//		realtor.setOffice(office);
//		realtor.setPhoneNumber(phoneNumber);
//		realtor.setAddress(address);
//		realtor.setGrade(grade);
		
		realtorBO.addRealtor(realtor);
		
		model.addAttribute("realtor", realtor);
		
		return "jsp/realtorInfo";
	}
	
	
//	public String lastRealtor() {
//		
//	}
	
	
	
	@GetMapping("/input")
	public String inputRealtor() {
		return "jsp/addRealtor";
	}
}
