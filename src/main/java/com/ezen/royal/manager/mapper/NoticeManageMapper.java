package com.ezen.royal.manager.mapper;

import java.util.List;

import com.ezen.royal.manager.dto.NoticeManageDTO;

public interface NoticeManageMapper {
	
	/////////////////////////
	// Notice List
	List<NoticeManageDTO> getNoticeList();
	// Notice Detail
	NoticeManageDTO getNoticeDetail(int notice_id);
	
	// Notice Insert
	int insertNotice(NoticeManageDTO dto);
	
	// Notice Update
	int updateNotice(NoticeManageDTO dto);
	
	// ** Notice Upsert >> 후에 작성
	
	// Notice Delete
	int deleteNotice(int delete_id);
	
}
