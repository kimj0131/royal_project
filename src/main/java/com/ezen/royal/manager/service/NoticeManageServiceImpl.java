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
	@Override
	public void getNoticeList(Model model) {
		model.addAttribute("noticeList", noticeManageMapper.getNoticeList());
	}

	// 공지사항 하나 가져오기
	@Override
	public void getNoticeDetail(Model model, int notice_id) {
		model.addAttribute("notice", noticeManageMapper.getNoticeDetail(notice_id));
	}

	
	// 공지사항 추가
	@Override
	public int insertNotice(NoticeManageDTO dto) {
		return noticeManageMapper.insertNotice(dto);
	}

	// 공지사항 수정
	@Override
	public int updateNotice(NoticeManageDTO dto) {
		return noticeManageMapper.updateNotice(dto);
	}

	// 공지사항 삭제
	@Override
	public int deleteNotice(int delete_id) {
		return noticeManageMapper.deleteNotice(delete_id);
	}

}
