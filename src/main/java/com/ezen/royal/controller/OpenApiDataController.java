package com.ezen.royal.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.ezen.royal.dto.RoyalInnerDTO;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class OpenApiDataController {

	@GetMapping("manager/database/openApi")
	public void inputData() {
		
	}
	
	@PostMapping("manager/database/insert")
	public ResponseEntity<RoyalInnerDTO> insertData(@RequestBody RoyalInnerDTO dto) {
		System.out.println("check");
		log.info("info : " + dto);
		
		return ResponseEntity.status(HttpStatus.OK).contentType(MediaType.APPLICATION_JSON).body(dto);
	}
}
