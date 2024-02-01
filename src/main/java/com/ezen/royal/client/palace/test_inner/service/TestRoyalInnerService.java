package com.ezen.royal.client.palace.test_inner.service;

import java.util.List;

import com.ezen.royal.client.palace.test_inner.dto.InnerDTO;

public interface TestRoyalInnerService {
	List<String> getInnerNameList(String palace);
	InnerDTO getSelectedInnerDTO(String innerName);
}
