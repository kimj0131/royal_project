package com.ezen.royal.client.communication.util;

import lombok.Data;

@Data
public class NoticeListVO {
	private Integer nowPage;
	private Integer startPage;
	private Integer endPage;
	private Integer total;
	private Integer pagePostCnt;
	private Integer lastPage;
	private Integer start;
	private Integer end;
	private Integer maxPost = 5;
	
	public NoticeListVO() {
	}
	
	public NoticeListVO(int total, Integer nowPage, Integer pagePostCnt) {
		setNowPage(nowPage);
		setPagePostCnt(pagePostCnt);
		setTotal(total);
		calcLastPage(getTotal(), getPagePostCnt());
		calcStartEndPage(getNowPage(), maxPost);
		calcStartEnd(getNowPage(), getPagePostCnt());
	}

	private void calcLastPage(Integer total, Integer pagePostCnt) {
		setLastPage((int) Math.ceil((double) total / (double) pagePostCnt));
	}
	
	private void calcStartEndPage(Integer nowPage, Integer maxPost) {
		setEndPage(((int) Math.ceil((double) nowPage / (double) maxPost)) * maxPost);
		
		if (getLastPage() < getEndPage()) {
			setEndPage(getLastPage());
		}
		setStartPage(getEndPage() - maxPost + 1);
		if (getStartPage() < 1) {
			setStartPage(1);
		}
	}

	private void calcStartEnd(Integer nowPage, Integer pagePostCnt) {
		setEnd(nowPage * pagePostCnt);
		setStart(getEnd() - pagePostCnt + 1);
	}
	
}
