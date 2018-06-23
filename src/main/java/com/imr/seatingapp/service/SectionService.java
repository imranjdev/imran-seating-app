package com.imr.seatingapp.service;

import java.util.List;
import java.util.Optional;
import java.util.Set;

import javax.transaction.Transactional;

import com.imr.seatingapp.entity.Section;
import com.imr.seatingapp.entity.SectionForm;

public interface SectionService {

	@Transactional
	void bookSeat(Long sectionId, Long seatId, String userName);

	List<Section> findAll();

	Optional<Section> findById(Long id);

	Optional<List<Section>> findBySeatsUserName(String userName);

	Set<SectionForm> findBookingHistory(String userName);
}
