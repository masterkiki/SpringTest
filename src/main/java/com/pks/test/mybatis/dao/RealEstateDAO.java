package com.pks.test.mybatis.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.pks.test.mybatis.model.RealEstate;

@Repository
public interface RealEstateDAO {
	
	
	public RealEstate selectRealEstate(@Param("id")int id);
	public RealEstate RealEstaterentPrice(@Param("rentPrice")int rentprice);
	public RealEstate AreaPrice(@Param("area")int area ,@Param("price")int price);
	

}
