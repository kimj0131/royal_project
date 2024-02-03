package com.ezen.royal.client.palace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class RoyalPalaceController {
	
	@GetMapping("/{palaceName}main")
    public String palaceMain(@PathVariable String palaceName) {
        // palaceName을 변수로 가정하고, 이를 사용하여 페이지를 동적으로 로드
        return "/userViews/royal_intro/" + palaceName + "Palace/" + palaceName + "Main";
    }

    @GetMapping("/{palaceName}history")
    public String palaceHistory(@PathVariable String palaceName) {
        return "/userViews/royal_intro/" + palaceName + "Palace/" + palaceName + "History";
    }
}