package com.pks.test.ajax.bo;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pks.test.ajax.dao.FavoriteDAO;
import com.pks.test.ajax.model.Favorite;

@Service
public class FavoriteBO {
	
	@Autowired
	private FavoriteDAO favoritedao;
	
	public List<Favorite> getFavorite() {
		return favoritedao.selectFavorite();
	}
	
	public int addFavorite(
			String name
			, String url
			){
		return favoritedao.insertFavortie(name, url);
	}

	public boolean isDuplicateURL(String url) {
		int count = favoritedao.selectURL(url);
		
		if(count == 0) { //중복되지 않음
			return false;
		} else { // 중복됨
			return true;
		}
	}
	
	public int deleteFavorite(int id) {
		
		return favoritedao.deleteFavorite(id);
		
	}
	
}
