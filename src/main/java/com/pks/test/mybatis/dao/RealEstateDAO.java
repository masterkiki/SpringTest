package com.pks.test.mybatis.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.pks.test.mybatis.model.RealEstate;

@Repository
public interface RealEstateDAO {
	
	
	public RealEstate selectRealEstate(@Param("id")int id);
	
	public List<RealEstate> selectRealEstaterentPrice(@Param("rentPrice")int rentprice); // xml 에서 쓸거니까 파라미터를 잡아준다
	
	public List<RealEstate> selectRealEstateByAreaPrice(
			@Param("area")int area 
			, @Param("price")int price); // int area 랑 int price 는 저장변수임 앞에Param 하고 달라도됨
	
	
	public int insertEstateByObject1(
			@Param("realtorId") int realtorId
			, @Param("address") String address
			, @Param("area") int area
			, @Param("type") String type
			, @Param("price") int price
			, @Param("rentPrice") int renprice
			);

	public int insertEstateByObject(RealEstate realestate);
	
}
