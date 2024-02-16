package com.ezen.royal.client.communication.util;

import lombok.Data;

@Data
public class NoticeListVO {
	private Integer nowPage; // 현재 페이지
	private Integer startPage; // 탭 내 처음 페이지
	private Integer endPage; // 탭 내 마지막 페이지
	private Integer total; // 게시글의 수
	private Integer pagePostCnt; // 페이지당 게시글의 수
	private Integer lastPage;  // 맨 마지막 페이지
	private Integer start; // 해당 페이지에서 불러올 처음 게시글의 번호
	private Integer end; // 해당 페이지에서 불러올 마지막 게시글의 번호
	private Integer maxTap = 5; // 최대 5개의 탭을 보여줌
	
	public NoticeListVO() {
	}
	
	public NoticeListVO(int total, Integer nowPage, Integer pagePostCnt) {
		setNowPage(nowPage);
		setPagePostCnt(pagePostCnt);
		setTotal(total);
		calcLastPage(getTotal(), getPagePostCnt());
		calcStartEndPage(getNowPage(), maxTap);
		calcStartEnd(getNowPage(), getPagePostCnt());
	}

	private void calcLastPage(Integer total, Integer pagePostCnt) {
		setLastPage((int) Math.ceil((double) total / (double) pagePostCnt));
	}
	
	private void calcStartEndPage(Integer nowPage, Integer maxPost) {
		setEndPage(((int) Math.ceil((double) nowPage / (double) maxTap)) * maxTap);
		
		if (getLastPage() < getEndPage()) {
			setEndPage(getLastPage());
		}
		setStartPage(getEndPage() - maxTap + 1);
		if (getStartPage() < 1) {
			setStartPage(1);
		}
	}

	private void calcStartEnd(Integer nowPage, Integer pagePostCnt) {
		setEnd(nowPage * pagePostCnt);
		setStart(getEnd() - pagePostCnt + 1);
	}
	
}
