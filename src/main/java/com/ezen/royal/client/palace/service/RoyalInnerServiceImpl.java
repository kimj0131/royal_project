package com.ezen.royal.client.palace.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.royal.client.palace.dto.InnerDTO;
import com.ezen.royal.client.palace.mapper.RoyalInnerMapper;

@Service
public class RoyalInnerServiceImpl implements RoyalInnerService {

	@Autowired
	RoyalInnerMapper royalInnerMapper;
	
	@Override
	public List<String> getInnerNameList(String palace) {
		
		List<InnerDTO> innerDTOList = royalInnerMapper.getAll(palace);
		List<String> InnerNameList = new ArrayList<>();
		
		for (InnerDTO dto : innerDTOList) {
		    InnerNameList.add(dto.getRoyal_inner_name());
		}
		
		return InnerNameList;
	}
	@Override
	public InnerDTO getSelectedInnerDTO(String innerName) {
		return royalInnerMapper.getSelectedInnerDTO(innerName);
	}
}
