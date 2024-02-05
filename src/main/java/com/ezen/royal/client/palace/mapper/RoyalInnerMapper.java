package com.ezen.royal.client.palace.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ezen.royal.client.palace.dto.InnerDTO;

public interface RoyalInnerMapper {
	List<InnerDTO> getAll(String palace);
	InnerDTO getSelectedInnerDTO(@Param("inner") String innner, @Param("royalId")  Integer royalId);
	
	


}
