package com.pks.test.ajax;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pks.test.ajax.bo.FavoriteBO;
import com.pks.test.ajax.model.Favorite;

@Controller
@RequestMapping("/ajax/favorite")
public class FavoriteController {


	@Autowired
	private FavoriteBO favoritebo;
	
	
	@GetMapping("/list")
	public String favoriteList(Model model) {
		
		List<Favorite> favorite = favoritebo.getFavorite();
		
		model.addAttribute("favorite", favorite);
		
		
		
		return "/ajax/favorite/list";
	}
		
	@GetMapping("/input")
	public String addList() {
		return "/ajax/favorite/input";
	}
	
	
	
	//즐겨찾기 추가 api
	
	@PostMapping("/add")
	@ResponseBody
	public Map<String, String> addFavorite(
			@RequestParam("name") String name
			, @RequestParam("url") String url
			){
		int count = favoritebo.addFavorite(name, url);
		
		Map<String, String> map = new HashMap<>();
		
		if(count == 1) {
			map.put("result", "success");
		} else {
			map.put("result", "fail");
		}
		
		return map;
		
		//return "redirect:/ajax/favorite/list";
	}
	
}
