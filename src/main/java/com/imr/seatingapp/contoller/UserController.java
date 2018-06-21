package com.imr.seatingapp.contoller;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.imr.seatingapp.bean.User;
import com.imr.seatingapp.validator.UserValidator;

@RestController
public class UserController {
	 UserValidator userFormValidator;
	public UserController( UserValidator userFormValidator) {
		this.userFormValidator = userFormValidator;
	}

	@RequestMapping("/register")
	public String register(@ModelAttribute("user") User user,BindingResult bindingResult,Model model) {
		userFormValidator.validate(user, bindingResult);
		return "home";
	}
	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("user",new User());
		return "home";
	}
}
