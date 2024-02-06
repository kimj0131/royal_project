package com.ezen.royal.api.innerImgpathTest.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.royal.api.innerImgpathTest.mapper.InnerImgpathupdateMapper;

@Service
public class InnerImgpathupdateServiceImpl implements InnerImgpathupdateService{
	
	@Autowired
	InnerImgpathupdateMapper innerMapper;

	// 이미지주소 업뎃
	@Override
	public int updateImagePath(String imagePath) {
		 return innerMapper.updateImagePath(imagePath);
	}
}
