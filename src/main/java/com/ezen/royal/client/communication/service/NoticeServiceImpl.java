package com.ezen.royal.client.communication.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.client.communication.dto.NoticeDTO;
import com.ezen.royal.client.communication.mapper.NoticeMapper;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	NoticeMapper noticeMapper; 
	
	
	@Override
	public void getNoticeList(Model model) {
		List<NoticeDTO> noticeDTO_List = noticeMapper.getList(); 
		model.addAttribute("noticeList", noticeDTO_List);
	}
	

	@Override
	public Integer getUniqueValuesCount() {
		return noticeMapper.getUniqueValuesCount();
	}

	@Override
	public void getNoticeDTO(int notice_id, Model model) {
		NoticeDTO noticeDTO = noticeMapper.get(notice_id); 
		model.addAttribute("noticeDTO", noticeDTO);
	}


}
