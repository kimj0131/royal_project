package com.ezen.royal.client.palace.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.client.palace.dto.InnerDTO;
import com.ezen.royal.client.palace.service.RoyalInnerService;

@Controller
@RequestMapping("/palace")
public class RoyalInnerController {

	@Autowired
	private RoyalInnerService innerService;

    @GetMapping("/royalInner")
    public String royalInnerPage(HttpServletRequest req, Model model) {
        // "royalName" 파라미터를 통해 선택한 궁 이름 가져옴
    	String palace = req.getParameter("palace");
		String inner = req.getParameter("inner");
		Integer royalId  = Integer.parseInt(req.getParameter("royalId"));
		
		
		// xx궁 내부 건축물 눌렀을 때 기본 내부건축물 설정 과정
		if (inner == null || inner.equals("")) {
			if (palace.equals("경복궁")) {
				inner = "광화문";
				try {
					String royalId2 = req.getParameter("royalId");
					royalId= Integer.parseInt(royalId2);
				}catch(NumberFormatException e) {
					royalId=1;
				}				
			}
				
			else if (palace.equals("창덕궁")) {			
				inner = "돈화문";
				try {
					royalId = Integer.parseInt(req.getParameter("royalId"));
				}catch(NumberFormatException e) {
					royalId=2;
				}				
			}
				
			else if (palace.equals("창경궁")) {			
				inner = "홍화문";
				try {
					royalId = Integer.parseInt(req.getParameter("royalId"));
				}catch(NumberFormatException e) {
					royalId =3;
				}			
			}
				
			else if (palace.equals("덕수궁")) {				
				inner = "대한문";
				try {
					royalId = Integer.parseInt(req.getParameter("royalId"));
				}catch(NumberFormatException e) {
					royalId=4;
				}	
			}
				
			else if (palace.equals("종묘")) {				
				inner = "하마비";
				try {
					royalId = Integer.parseInt(req.getParameter("royalId"));
				}catch(NumberFormatException e) {
					royalId=5;
				}				
			} 				
		}
		
		req.setAttribute("palaceName", palace);
		req.setAttribute("royalId", royalId);
		req.setAttribute("innerNameList", innerService.getInnerNameList(palace));
		req.setAttribute("innerDTO", innerService.getSelectedInnerDTO(inner,royalId));
		
		InnerDTO innerDTO = innerService.getSelectedInnerDTO(inner, royalId);  
		req.setAttribute("innerDTO", innerDTO);
		  
		//System.out.println("Inner Name: " + inner);
	    //System.out.println("Royal ID: " + royalId);
	    //System.out.println("InnerDTO: " + innerDTO);
	    
        return "/userViews/royal_intro/royal_Inner_view";
    }
    
}
