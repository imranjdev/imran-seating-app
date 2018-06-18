package com.imr.seatingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.imr.seatingapp.entity.User;

public interface UserRepository extends JpaRepository<User, Long>{

}
