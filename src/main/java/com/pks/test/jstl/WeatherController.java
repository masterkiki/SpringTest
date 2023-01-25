package com.pks.test.jstl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pks.test.jstl.bo.WeatherBO;
import com.pks.test.jstl.model.Weatherhistory;

@Controller
@RequestMapping("/jstl")
public class WeatherController {

	@Autowired
	private WeatherBO weatherBO;
	
	@GetMapping("/test05")
	public String test05(Model model) {
		
		// weatherhistory 리스트를 모델 추가한다.
		List<Weatherhistory> weatherhistory = weatherBO.getWeather();
		
		model.addAttribute("weatherhistory", weatherhistory);
		
		return "/jstl/weather/test05";
	}
}
