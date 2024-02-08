package com.ezen.royal.client.event.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

public class EventImageController {
	
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @PostMapping("/fetch-event-images")
    public List<Map<String, Object>> EventImages(@RequestBody Map<String, Integer> payload) {
        
        int month = payload.get("month");

        String sql = "SELECT event_imgpath FROM event_list WHERE EXTRACT(MONTH FROM start_date) = ?";

        return jdbcTemplate.queryForList(sql, month);
    }
}
