package com.ezen.royal.client.palace.service;

import java.util.List;

import com.ezen.royal.client.palace.dto.InnerDTO;

public interface RoyalInnerService {

	// void listRoyal(Model model);

	InnerDTO getRoyalNameById(Integer royalId);

	List<InnerDTO> royalInnerList(Integer royalId);
}
