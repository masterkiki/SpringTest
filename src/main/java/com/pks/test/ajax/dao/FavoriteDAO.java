package com.pks.test.ajax.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.pks.test.ajax.model.Favorite;

@Repository
public interface FavoriteDAO {
	
	public List<Favorite> selectFavorite();
	
	public int insertFavortie(
			@Param("name") String name
			, @Param("url") String url
			);

	
	public int selectURL(@Param("url") String url);
	
	
}

