package com.pks.test.lifecycle;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pks.test.lifecycle.model.Notice;

@RestController
@RequestMapping("/lifecycle/test02")
public class Test02RestController {
	
	// 강사님 풀이
		@RequestMapping("/0")
		public List<Map<String, Object>> listMapRespones() {
			
			List<Map<String,Object>> movieList = new ArrayList<>();
			
			
			Map<String, Object> movie = new HashMap<>();
			movie.put("title", "기생충");
			movie.put("director", "봉준호");
			movie.put("time", 131);
			movie.put("rate", 15);
			movieList.add(movie);
			
			
			movie = new HashMap<>();
			movie.put("title", "인생은 아름다워");
			movie.put("director", "로베르토 베니니");
			movie.put("time", 16);
			movie.put("rate", 0);
			movieList.add(movie);
			
			movie = new HashMap<>();
			movie.put("title", "인셉션");
			movie.put("director", "크리스토퍼 놀란");
			movie.put("time", 147);
			movie.put("rate", 12);
			movieList.add(movie);
			
			return movieList;
		}
		
		
		

		// 내풀이
		@RequestMapping("/1")
		public List<Map<String, Object>> movieListResponse(){
			
			List<Map<String,Object>> movies = new ArrayList<>();
			Map<String, Object> movieinfo1 = new HashMap<>();
			movieinfo1.put("rate", 15);
			movieinfo1.put("director", "봉준호");
			movieinfo1.put("time", 131);
			movieinfo1.put("title", "기생충");
			movies.add(movieinfo1);
			
			Map<String, Object> movieinfo2 = new HashMap<>();
			movieinfo2.put("rate", 0);
			movieinfo2.put("director", "로베르토 베니니");
			movieinfo2.put("time", 116);
			movieinfo2.put("title", "인생은 아름다워");
			movies.add(movieinfo2);
			
			Map<String, Object> movieinfo3 = new HashMap<>();
			movieinfo3.put("rate", 12);
			movieinfo3.put("director", "크리스토퍼 놀란");
			movieinfo3.put("time", 147);
			movieinfo3.put("title", "인셉션");
			movies.add(movieinfo3);

			Map<String, Object> movieinfo4 = new HashMap<>();
			movieinfo4.put("rate", 19);
			movieinfo4.put("director", "윤종빈");
			movieinfo4.put("time", 133);
			movieinfo4.put("title", "범죄와의 전쟁 : 나쁜놈들 전성시대");
			movies.add(movieinfo4);
			
			Map<String, Object> movieinfo5 = new HashMap<>();
			movieinfo5.put("rate", 15);
			movieinfo5.put("director", "프란시스 로렌스");
			movieinfo5.put("time", 137);
			movieinfo5.put("title", "헝거게임");
			movies.add(movieinfo5);
			
			return movies;
			
		}
		
		
		

			@RequestMapping("/3")
			public ResponseEntity<Notice> entity(){
				Notice post = new Notice();
				post.setTitle("dd");
				post.setUser("dd");
				post.setContent("dd");
			
				ResponseEntity<Notice> entity = new ResponseEntity(post, HttpStatus.INTERNAL_SERVER_ERROR);
			
				return entity;
			}
		

}
