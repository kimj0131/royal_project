package com.ezen.royal.manager.service;

import org.springframework.ui.Model;

import com.ezen.royal.manager.dto.NoticeManageDTO;

public interface NoticeManageService {

	// 공지사항 리스트 가져오기
	/**
	 * * 공지사항의 전체목록을 attribute에 list로 싣는다 <br>
	 * ※ attribute name = noticeList
	 */
	void getNoticeList(Model model);
	// 공지사항 상세 가져오기
	/**
	 * * 공지사항 하나를 attribute에 싣는다 <br>
	 * ※ attribute name = notice
	 */
	void getNoticeDetail(Model model, int notice_id);
	
	// 공지사항 추가
	/**
	 * * NoticeManageDTO를 전달받아 DB에 추가한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	int insertNotice(NoticeManageDTO dto);
	
	// 공지사항 수정
	/**
	 * * NoticeManageDTO와 수정할 notice_id 전달받아 DB에 수정한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	int updateNotice(NoticeManageDTO dto, int modify_id);
	
	// 공지사항 삭제
	/**
	 * * 삭제할 notice_id를 전달받아 DB에 삭제한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	int deleteNotice(int delete_id);
	
}
