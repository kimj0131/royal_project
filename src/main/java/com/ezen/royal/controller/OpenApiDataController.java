package com.ezen.royal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.ezen.royal.dto.RoyalInnerDTO;
import com.ezen.royal.service.OpenApiService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class OpenApiDataController {
	
	@Autowired
	OpenApiService openApiService;
	

	@GetMapping("manager/database/inner/openApi")
	public void inputData() {
		
	}
	
	@GetMapping("manager/database/inner/insert")
	public String innerInsert(Model model) {
		
		openApiService.cheakTable(model);
		
		return "manager/database/inner/openApi";
	}
	
	@PostMapping("manager/database/inner/insert")
	public ResponseEntity<RoyalInnerDTO> insertData(@RequestBody RoyalInnerDTO dto) {
		System.out.println("check");
		log.info("info : " + dto);
		
		return ResponseEntity.status(HttpStatus.OK).contentType(MediaType.APPLICATION_JSON).body(dto);
	}
}
