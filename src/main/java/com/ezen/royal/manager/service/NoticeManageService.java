package com.ezen.royal.manager.service;

import org.springframework.ui.Model;

import com.ezen.royal.manager.dto.NoticeManageDTO;

public interface NoticeManageService {

	// 공지사항 리스트 가져오기
	void getNoticeList(Model model);
	// 공지사항 상세 가져오기
	void getNoticeDetail(Model model, int notice_id);
	
	// 공지사항 추가
	int insertNotice(NoticeManageDTO dto);
	
	// 공지사항 수정
	int updateNotice(NoticeManageDTO dto, int modify_id);
	
	// 공지사항 삭제
	int deleteNotice(int delete_id);
	
}
