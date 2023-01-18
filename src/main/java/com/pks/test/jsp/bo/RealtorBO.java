package com.pks.test.jsp.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pks.test.jsp.dao.RealtorDAO;
import com.pks.test.jsp.model.Realtor;

@Service
public class RealtorBO {

	@Autowired
	private RealtorDAO realtorDAO; 
	
	public int addRealtor(Realtor realtor  //이걸로 대체가능
//			String office
//			, String phoneNumber
//			, String address
//			, String grade
			) {
		
		return realtorDAO.insertRealtor(realtor);
		
	}
	
//	public getLastRealtor() {
//		
//	}
	
}
