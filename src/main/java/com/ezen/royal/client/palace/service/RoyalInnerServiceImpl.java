package com.ezen.royal.client.palace.service;

import java.util.ArrayList;
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
	public InnerDTO getSelectedInnerDTO(String innerName, Integer royalId) {
		InnerDTO dto = royalInnerMapper.getSelectedInnerDTO(innerName,royalId);
		dto.setRoyal_inner_detail(dto.getRoyal_inner_detail().replace(". ", ".<br/>"));
		return dto;
	}

/*
 @Override
   public List<String> details(Integer royal_id) {
       List<InnerDTO> innerDtoList = royalInnerMapper.getRoyalById(royal_id);
       List<String> innerNames = new ArrayList<>();

       for (InnerDTO dto : innerDtoList) {
           innerNames.add(dto.getRoyal_inner_name());
       }
       return innerNames;
   }

   @Override
   public String getRoyalNameById(Integer royalId) {
       return royalInnerMapper.getRoyalNameById(royalId);
   }
   
*/
}
