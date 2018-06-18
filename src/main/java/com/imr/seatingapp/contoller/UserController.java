package com.imr.seatingapp.contoller;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.imr.seatingapp.entity.User;
import com.imr.seatingapp.service.UserService;

@RestController
public class UserController {
	UserService userService;
	@PostMapping(value="/register")
	public void createUSer(@ModelAttribute("user") User user) {
		userService.createUser(user);
	}
}
