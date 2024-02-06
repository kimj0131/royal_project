package com.ezen.royal.api.innerImgpathTest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.royal.api.innerImgpathTest.service.InnerImgpathupdateService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class InnerImgpathupdateController {

	@Autowired
	InnerImgpathupdateService openApiService;
	
	@PostMapping("/manager/database/inner/updateImagePath")
	@ResponseBody // 해당 메서드의 반환 값을 직접 HTTP 응답 클라이언트에게 전달시키기..?
	public String updateImgPath(@RequestBody String imagePath) {
		int result = openApiService.updateImagePath(imagePath);
		if(result > 0) {
			return "Image Update success";
		} else {
            return "Failed to update";
		}
	}
	
	
}
