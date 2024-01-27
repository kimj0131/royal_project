package com.ezen.royal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String innerInsert(RedirectAttributes attributes) {

		String chkResult = openApiService.cheakTableEmpty();

		if (chkResult.equals("TRUE")) {
			int insertResult = openApiService.insertApiDataList();
			if (insertResult > 0) {
				attributes.addAttribute("result", "insertComplete");
				return "redirect:/manager/database/inner/openApi";
			} else {
				attributes.addAttribute("result", "insertFail");
				log.error("Api Data Insert Fail..");
				return "redirect:/manager/database/inner/openApi";
			}
		} else {
			attributes.addAttribute("result", "alreadyExists");
			log.error("Data already exists in the table..");
			return "redirect:/manager/database/inner/openApi";
		}

	}
	
}
