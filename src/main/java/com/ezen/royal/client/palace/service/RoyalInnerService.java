package com.ezen.royal.client.palace.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ezen.royal.client.palace.dto.InnerDTO;

public interface RoyalInnerService {
	List<String> getInnerNameList(String palace);
	InnerDTO getSelectedInnerDTO(@Param("inner") String innerName, @Param("royalId") Integer royalId);
	
/*
   List<String> details (Integer royal_id); // 내부건축물 정보 royal_id를 통해 내부건축물 정보를 가져오고, 그 정보를 모델에 추가하여 뷰에서 사용  
   String getRoyalNameById(Integer royalId); // royal_id를 기준으로 궁 이름(royal_name)을 가져옴
*/
}
