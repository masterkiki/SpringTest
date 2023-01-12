package com.pks.test.database.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pks.test.database.model.store;

@Repository
public interface storeDAO {
	
	public List<store> selectstoreList();
}
