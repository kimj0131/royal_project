package com.ezen.royal.client.palace.test_inner.mapper;

import java.util.List;

import com.ezen.royal.client.palace.test_inner.dto.InnerDTO;

public interface TestRoyalInnerMapper {
	List<InnerDTO> getAll(String palace);
	InnerDTO getSelectedInnerDTO(String innner);
}
