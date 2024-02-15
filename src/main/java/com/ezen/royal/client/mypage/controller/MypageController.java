package com.ezen.royal.client.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.royal.api.service.KakaoService;
import com.ezen.royal.client.mypage.service.MypageService;

import lombok.extern.log4j.Log4j;

@Controller

@Log4j
@RequestMapping("/mypage")
public class MypageController {
	@Autowired
	private MypageService mypageService;
	@Autowired
	KakaoService kakaoService;

	@Autowired
	Environment env;

	@GetMapping("/myPageView") // 마이페이지 뷰
	public String myPageView(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();

		String social_id = (String) session.getAttribute("login_user");
		System.out.println(social_id);
		if (social_id.equals("") || social_id == null) {
			return "redirect:/main/";
		} else {

			 mypageService.getSelectedmypageDTO(model, social_id);
			 
			 req.setAttribute("reservList", mypageService.getMyreservList(social_id));
			 req.setAttribute("qnaList", mypageService.getMyqnaList(social_id));
			 
			 
			 
			 return "/userViews/mypage/mypage";
		}
	}
	
//	@PostMapping("/deleteReservation")
//	public @ResponseBody void deleteReservation(HttpServletRequest request) {
//	    String reservationNum = request.getParameter("reservationNum");
//	  mypageService.deleteReservation(reservationNum);
//		
//		
//	}
	
	@PostMapping("/deleteReservation")
	@ResponseBody
    public ResponseEntity<String> deleteReservation(@RequestParam String reservationNum ) {
      
		  boolean deleteSuccessful = mypageService.deleteReservation(reservationNum);
		  
	        if (deleteSuccessful==true){
	        	
	            return ResponseEntity.ok("Reservation deleted successfully.");
	        } else {
	            // Return error response
	            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to delete reservation.");
	        }
    }
	
}
