package com.ezen.royal.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ezen.royal.api.service.InnerDataFromOpenApiService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class InnerDataFromOpenApiController {

	@Autowired
	InnerDataFromOpenApiService openApiService;

	@GetMapping("manage/main/database/inner/openApi")
	public String inputData() {

		return "managerViews/common/royalInner/openApi";
	}

	// 공공데이터 포털에서 api 활용 db에 넣는다
	@GetMapping("manage/main/database/inner/insert")
	public String innerUpsert(RedirectAttributes attributes) {

		// upsert 방식
		int upsertResult = openApiService.upsertApiDataList();
		
		if (upsertResult > 0) {
			attributes.addAttribute("result", "upsertComplete");
			return "redirect:/manage/main/database/inner/openApi";
		} else {
			attributes.addAttribute("result", "upsertFail");
			log.error("Api Data Insert Fail..");
			return "redirect:/manage/main/database/inner/openApi";
		}
		
	}
	
}
