package com.ezen.royal.interceptor;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.royal.manager.mapper.QnaManageMapper;

public class ManageViewIntercepter implements HandlerInterceptor{
	
	@Autowired
	QnaManageMapper qnaManageMapper;
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		// topbar alert 날짜
		request.setAttribute("nowDate", LocalDate.now());
		// 답변없는 qna 리스트를 계속실어주기 위한 attribute 세팅
		request.setAttribute("emptyResultQNAList", qnaManageMapper.getQNAListResultEmpty());
		
	}
}
