package com.ezen.royal.client.palace.mapper;

import java.util.List;

import com.ezen.royal.client.palace.dto.InnerDTO;

public interface RoyalInnerMapper {

	//List<RoyalDTO> getAll();
	
	InnerDTO getRoyalNameById(Integer royalId);
	
	List<InnerDTO> royalInnerList(Integer royalId);
}
