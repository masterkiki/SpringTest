package com.pks.test.jsp.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.pks.test.jsp.model.Realtor;

@Repository
public interface RealtorDAO {
	
	public int insertRealtor(Realtor realtor
//			@Param("office")String office
//			, @Param("phoneNumber") String phoneNumber
//			, @Param("address") String address
//			, @Param("grade") String grade
			) ;
	
	public Realtor selectLastRealtor();
}
