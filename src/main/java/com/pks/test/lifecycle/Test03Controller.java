package com.pks.test.lifecycle;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Test03Controller {

	 @RequestMapping("/lifecycle/test03")
    public String test03() {  
//		 return "/WEB-INF/jsp/lifecycle/test03.jsp";
	     return "lifecycle/test03"; 
    }
	
}
