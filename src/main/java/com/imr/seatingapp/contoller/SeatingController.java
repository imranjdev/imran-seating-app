package com.imr.seatingapp.contoller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SeatingController {
	
	@RequestMapping("/sayHello")
	String home() {
		return "Hello World";
	}
	@RequestMapping("/bolo")
	String home2() {
		return "Hello World";
	}

}
