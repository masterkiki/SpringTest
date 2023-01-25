package com.pks.test.jstl.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pks.test.jstl.model.Weatherhistory;

@Repository
public interface WeatherDAO {
	
	public List<Weatherhistory> selectWeather();

}
