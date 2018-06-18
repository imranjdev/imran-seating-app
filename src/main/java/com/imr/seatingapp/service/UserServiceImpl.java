package com.imr.seatingapp.service;

import com.imr.seatingapp.entity.User;
import com.imr.seatingapp.repository.UserRepository;

public class UserServiceImpl implements UserService {
	UserRepository userRepository;
	
	@Override
	public void createUser(User user) {
		userRepository.save(user);
	}
	
}
