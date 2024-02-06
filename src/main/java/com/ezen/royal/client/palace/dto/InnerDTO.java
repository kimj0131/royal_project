package com.ezen.royal.client.palace.dto;

import java.util.Arrays;
import java.util.List;

import lombok.Data;

@Data
public class InnerDTO {
    private String royal_inner_name;
    private String royal_inner_detail;
   // private String royal_inner_imgpath;
    private Integer royal_id;
    List<String> royal_inner_imgpath; // 이미지 경로를 List로 변경
    
    public void setRoyal_inner_imgpath(String royalInnerImgpath){
    	this.royal_inner_imgpath = Arrays.asList(royalInnerImgpath.split(","));
    }
}