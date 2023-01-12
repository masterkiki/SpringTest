package com.pks.test.database.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pks.test.database.dao.storeDAO;
import com.pks.test.database.model.store;

@Service
public class storeBO {
	
	@Autowired
	private storeDAO storeDAO;
	
	public List<store> getstoreList(){
		List<store> storeList = storeDAO.selectstoreList();
		
		return storeList;
	}
	
	
}
