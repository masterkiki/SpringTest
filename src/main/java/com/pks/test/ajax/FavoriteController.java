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
	
	@PostMapping("/is_duplicate")
	@ResponseBody
	public Map<String, Boolean> isDuplicateURL(@RequestParam("url") String url) {
		
		Map<String, Boolean> result = new HashMap<>();
		
//		if(favoritebo.isDuplicateURL(url)) { // 중복된 경우
//			result.put("is_duplicate", true);
//		} else {  // 중복되지 않은경우
//			result.put("is_duplicate", false);
//		}
		
		result.put("is_dupilcate", favoritebo.isDuplicateURL(url));
		
		return result;
	}
	
	@GetMapping("/delete")
	@ResponseBody
	public Map<String, String> deleteFavorite(@RequestParam("id") int id) {
		
		int count = favoritebo.deleteFavorite(id);
		Map<String, String> map = new HashMap<>();
		// 삭제 성공시 {"result":"success"}
		// 삭제 실패시 {"result":"fail"}
		
		if(count == 1) {
			map.put("result", "success");
		} else {
			map.put("result", "fail");
		}
		
		
		return map;
		
		
	}
	
}
