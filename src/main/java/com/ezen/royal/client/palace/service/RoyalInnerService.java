package com.ezen.royal.client.palace.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ezen.royal.client.palace.dto.InnerDTO;

public interface RoyalInnerService {
	List<String> getInnerNameList(String palace);
	InnerDTO getSelectedInnerDTO(@Param("inner") String innerName, @Param("royalId") Integer royalId);
	

}
