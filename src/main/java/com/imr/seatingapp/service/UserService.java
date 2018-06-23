package com.imr.seatingapp.service;

import javax.transaction.Transactional;

import com.imr.seatingapp.entity.User;


public interface UserService {
	
	@Transactional
	void save(User user);
	
	void autologin(String username, String password);

}
