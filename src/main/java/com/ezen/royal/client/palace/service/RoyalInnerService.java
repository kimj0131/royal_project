package com.ezen.royal.client.palace.service;

import java.util.List;

import com.ezen.royal.client.palace.dto.InnerDTO;

public interface RoyalInnerService {
	List<String> getInnerNameList(String palace);
	InnerDTO getSelectedInnerDTO(String innerName);
}
