package com.ezen.royal.client.palace.mapper;

import java.util.List;

import com.ezen.royal.client.palace.dto.InnerDTO;

public interface RoyalInnerMapper {
	List<InnerDTO> getAll(String palace);
	InnerDTO getSelectedInnerDTO(String innner);
}
