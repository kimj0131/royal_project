package com.ezen.royal.client.palace.test_inner.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.royal.client.palace.test_inner.dto.InnerDTO;
import com.ezen.royal.client.palace.test_inner.mapper.TestRoyalInnerMapper;

@Service
public class TestRoyalInnerServiceImpl implements TestRoyalInnerService {
	
	@Autowired
	TestRoyalInnerMapper testRoyalInnerMapper;
	
	@Override
	public List<String> getInnerNameList(String palace) {
		
		List<InnerDTO> innerDTOList = testRoyalInnerMapper.getAll(palace);
		List<String> InnerNameList = new ArrayList<>();
		
		Iterator<InnerDTO> dto_iterator = innerDTOList.iterator();
		
		while(dto_iterator.hasNext()) {
			InnerDTO dto = dto_iterator.next();
			InnerNameList.add(dto.getRoyal_inner_name());
		}
		return InnerNameList;
	}
	@Override
	public InnerDTO getSelectedInnerDTO(String inner) {
		return testRoyalInnerMapper.getSelectedInnerDTO(inner);
	}
}
