package com.ezen.royal.manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.manager.dto.NoticeManageDTO;
import com.ezen.royal.manager.mapper.NoticeManageMapper;

@Service
public class NoticeManageServiceImpl implements NoticeManageService {

	@Autowired
	NoticeManageMapper noticeManageMapper;

	// 공지사항 전체 리스트
	/**
	 * * 공지사항의 전체목록을 attribute에 list로 싣는다 <br>
	 * ※ attribute name = noticeList
	 */
	@Override
	public void getNoticeList(Model model) {
		model.addAttribute("noticeList", noticeManageMapper.getNoticeList());
	}

	// 공지사항 하나 가져오기
	/**
	 * * 공지사항 하나를 attribute에 싣는다 <br>
	 * ※ attribute name = notice
	 */
	@Override
	public void getNoticeDetail(Model model, int notice_id) {
		model.addAttribute("notice", noticeManageMapper.getNoticeDetail(notice_id));
	}

	
	// 공지사항 추가
	/**
	 * * NoticeManageDTO를 전달받아 DB에 추가한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	@Override
	public int insertNotice(NoticeManageDTO dto) {
		return noticeManageMapper.insertNotice(dto);
	}

	// 공지사항 수정
	/**
	 * * NoticeManageDTO와 수정할 notice_id 전달받아 DB에 수정한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	@Override
	public int updateNotice(NoticeManageDTO dto, int modify_id) {
		return noticeManageMapper.updateNotice(dto, modify_id);
	}

	// 공지사항 삭제
	/**
	 * * 삭제할 notice_id를 전달받아 DB에 삭제한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	@Override
	public int deleteNotice(int delete_id) {
		return noticeManageMapper.deleteNotice(delete_id);
	}

}
