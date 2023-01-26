package com.pks.test.jstl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pks.test.jstl.bo.WeatherBO;
import com.pks.test.jstl.model.Weatherhistory;

@Controller
@RequestMapping("/jstl/test05")
public class WeatherController {

	@Autowired
	private WeatherBO weatherBO;
	
	@GetMapping("/list")
	public String test05(Model model) {
		
		// weatherhistory 리스트를 모델 추가한다.
		List<Weatherhistory> weatherhistory = weatherBO.getWeather();
		
		model.addAttribute("weatherhistory", weatherhistory);
		
		return "/jstl/weather/test05";
	}
	
	
	@GetMapping("/add")
	public String addWeather(
			@DateTimeFormat(pattern="yyyy년 M월 d일")
			@RequestParam("date") Date date
			, @RequestParam("weather") String weather
			, @RequestParam("temperatures") double temperatures
			, @RequestParam("precipitation") double precipitation
			, @RequestParam("microDust") String microDust
			, @RequestParam("windSpeed")double windSpeed
			) {
		int count = weatherBO.addWeather(date, weather, temperatures, precipitation, microDust, windSpeed);
		
		return "redirect:/jstl/test05/list";
	}
	
	
	@GetMapping("/input")
	public String weatherInput() {
		return "jstl/weather/weatherinput";
	}
	
	
	
}
