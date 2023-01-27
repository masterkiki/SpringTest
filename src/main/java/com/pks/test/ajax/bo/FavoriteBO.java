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

}
