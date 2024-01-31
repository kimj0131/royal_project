package com.ezen.royal.scheduler;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.ezen.royal.api.service.InnerDataFromOpenApiService;

import lombok.extern.log4j.Log4j;

@Log4j
@Component
public class Scheduler {
	
	@Autowired
	InnerDataFromOpenApiService apiService;
	
	/**
	 * 1. 매일 오전 ?시에 api데이터를 갱신하는 스케쥴러
	 */
	// * 을 입력할경우 모두(항상)으로 설정함
	// cron = 초 분 시 일 월 요일
	@Scheduled(cron = "0 3 16 * * *")
	public void autoUpdate() {
		
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int date = cal.get(Calendar.DATE);
		int hour = cal.get(Calendar.HOUR_OF_DAY);
		int min = cal.get(Calendar.MINUTE);
		int sec = cal.get(Calendar.SECOND);
		apiService.upsertApiDataList();
		
		log.info(String.format("[%d/%d/%d | %02d:%02d:%02d]api 데이터 최신화가 완료되었습니다", year, month, date, hour, min, sec));
	}

}
