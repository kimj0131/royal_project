package com.ezen.royal.manager.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ezen.royal.manager.dto.QNAManageDTO;

public interface QnaManageMapper {
	/////////////////////////
	// QnA List
	List<QNAManageDTO> getQNAList();
	// No Result QnA Detail List
	List<QNAManageDTO> getQNAListResultEmpty();
	// QnA Detail
	QNAManageDTO getQNADetail(int qna_id);
	
	// QnA Update(답변)
	int updateQNA(@Param("result") String result, @Param("modify_id") int modify_id);
}
