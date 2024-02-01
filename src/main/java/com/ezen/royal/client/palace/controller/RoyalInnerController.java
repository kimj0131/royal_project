package com.ezen.royal.client.palace.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.royal.client.palace.dto.InnerDTO;
import com.ezen.royal.client.palace.service.RoyalInnerService;

@Controller
public class RoyalInnerController {
   
   @Autowired
   RoyalInnerService royalInnerService;  // RoyalInnerService를 주입받음
	
	 // RoyalInnerDTO를 주입받음, 정보를 담아놓기 위한 목적
	//InnerDTO royalInnerDTO = new InnerDTO();

   /*
	 @GetMapping("/getRoyalDetails={royalId}")
   public String getRoyalDetails(@PathVariable(name="royalId") Integer royalId, Model model) {
		 */
	@GetMapping("/getRoyalDetails")
   public String getRoyalDetails(@RequestParam(name="royalId") Integer royalId, Model model) {
     // royalId에 해당하는 궁 정보를 가져와서 모델에 추가
      InnerDTO royalName  = royalInnerService.getRoyalNameById(royalId); // 경복궁 / 창덕궁
      /*
      model.addAttribute("royalName", royalName );

      // 궁 정보에서 가져온 royalInnerId로 해당 궁 내부 건축물 리스트를 가져와 모델에 추가
      List<InnerDTO> royalInnerData = royalInnerService.royalInnerList(royalId);
      model.addAttribute("royalInnerDatas", royalInnerData);
          
      return "/userViews/royal_intro/royal_Inner_view";  // 뷰 페이지로 이동
      */
      if (royalName != null) {
          model.addAttribute("royalName", royalName.getRoyalInnerName());
          List<InnerDTO> royalInnerData = royalInnerService.royalInnerList(royalId);
          model.addAttribute("royalInnerDatas", royalInnerData);
          return "/userViews/royal_intro/royal_Inner_view";
      } else {
          // royalName이 null인 경우
          return "redirect:/";
      }
   }
}