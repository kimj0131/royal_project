package com.ezen.royal.client.communication.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.client.communication.dto.NoticeDTO;
import com.ezen.royal.client.communication.mapper.NoticeMapper;
import com.ezen.royal.client.communication.util.NoticeListVO;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	NoticeMapper noticeMapper; 
	


	@Override
	public void getNoticeDTO(int notice_id, Model model) {
		NoticeDTO noticeDTO = noticeMapper.get(notice_id); 
		model.addAttribute("noticeDTO", noticeDTO);
	}
	
	@Override
	public void getNoticeList(Model model) {
		model.addAttribute("notice", noticeMapper.getAll());
	}


	@Override
	public void getNoticeList_part(Model model, Integer royal_id) {
		model.addAttribute("notice", noticeMapper.getPartAll(royal_id));
		
	}

	@Override
	public void search(Model model, String searchType, String searchString) {
		if(searchType.equals("제목")) {
			model.addAttribute("notice", noticeMapper.search("notice_title", searchString));
		} else if(searchType.equals("내용")) {
			model.addAttribute("notice", noticeMapper.search("notice_content", searchString));
		} else {
			model.addAttribute("notice", noticeMapper.searchAll(searchString));
		}
	}

	@Override
	public int countBoard(Integer royal_id) {
		return noticeMapper.countBoard(royal_id);
	}

	@Override
	public void selectBoard(Model model, Integer royal_id, NoticeListVO vo, Integer nowPage, Integer pagePostCnt) {
		// 전체 공지사항 수
		int total = countBoard(royal_id);
		
		// 속성 기본값 설정
		if (nowPage == null) {
			nowPage = 1;
		}
		if (pagePostCnt == null) {
			pagePostCnt = 10;
		}
		
		vo = new NoticeListVO(total, nowPage, pagePostCnt);
		vo.setRoyal_id(royal_id);
		
//		System.out.println("impl : " + vo);
		
		List<NoticeDTO> list = noticeMapper.selectBoardList(vo);
		model.addAttribute("page", vo);
		model.addAttribute("list", list);
		
	}


	
	
}
