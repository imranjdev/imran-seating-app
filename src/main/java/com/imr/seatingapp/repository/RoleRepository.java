package com.imr.seatingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.imr.seatingapp.entity.Role;


public interface RoleRepository extends JpaRepository<Role, Long> {

}
