package com.pks.test.jsp.dao;

import org.springframework.stereotype.Repository;

import com.pks.test.jsp.bo.Stirng;

@Repository
public interface SellerDAO {

	public int insertSeller(
			String name
			, String nickname
			, double temperature
			, String profileImage
			);
	
}
