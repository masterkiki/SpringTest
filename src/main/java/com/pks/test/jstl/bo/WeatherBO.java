package com.pks.test.jstl.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pks.test.jstl.dao.WeatherDAO;
import com.pks.test.jstl.model.Weatherhistory;

@Service
public class WeatherBO {

	@Autowired
	private WeatherDAO weatherDAO;
	
	public List<Weatherhistory> getWeather() {
		return weatherDAO.selectWeather();
	}
	
	
}
