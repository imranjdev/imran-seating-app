package com.imr.seatingapp.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.imr.seatingapp.entity.Section;


public interface SectionRepository extends JpaRepository<Section, Long> {

	Optional<List<Section>> findBySeatsUserName(String userName);
}
