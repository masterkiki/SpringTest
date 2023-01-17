package com.pks.test.jsp.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pks.test.jsp.dao.SellerDAO;
import com.pks.test.jsp.model.Seller;

@Service
public class SellerBO {

	@Autowired
	private SellerDAO sellerDAO;
	
	public int addSeller(
			String nickname
			, double temperature
			, String profileImage
			) {
		return sellerDAO.insertSeller(nickname, temperature, profileImage);
	}
	
	public Seller getSeller(Integer id) {
		if(id == null) {
			return sellerDAO.selectLastSeller();
		} else {
			return sellerDAO.selectSeller(id);
		}
	}
	
	
	public Seller getLastSeller() {
		
		return sellerDAO.selectLastSeller();
	
	}
	
	public Seller getSellerById(int id) {
		
		return sellerDAO.selectSeller(id);
		
	}
	
}
