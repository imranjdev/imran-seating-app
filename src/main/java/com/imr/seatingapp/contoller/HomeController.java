package com.imr.seatingapp.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.imr.seatingapp.bean.User;

@Controller
public class HomeController {
	 @RequestMapping("/")
	    String index(Model model) {
		 model.addAttribute("user",new User());
	        return "index";
	    }
}
