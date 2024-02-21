--1

INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '경복궁 수문장 교대의식',
    '경복궁 광화문',
    1,
    '2024-01-01',
    '2024-12-31',
    'https://www.chf.or.kr/short/6d6N',
    'https://www.chf.or.kr/jnrepo/namo/img/images/000063/20240119205704416_TEOZXDIK.png',
    'N'
);

-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='경복궁 수문장 교대의식' AND start_date='20240101'),
    1,
    '09:00',
    2000
);


--2
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '2024 갑진년 수문장 세화 나눔',
    '경복궁 광화문 수문장청',
    2,
    '2024-02-09',
    '2024-02-10',
    'https://www.chf.or.kr/short/tYMO',
    'https://www.chf.or.kr/jnrepo/namo/img/images/000064/20240203165553950_T0EWYCEJ.png',
    'N'
);

-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2024 갑진년 수문장 세화 나눔' AND start_date='20240209'),
    1,
    '09:00',
    2000
);

--3
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '덕수궁'
    ),
    '행사',
    '2023년 밤의 석조전(하반기)',
    '덕수궁 석조전',
    3,
    '2023-10-06',
    '2023-11-02',
    'https://www.chf.or.kr/short/hEqy',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202309/1db199e8ed9e48bbb0b0c77d740564bc_1694366002947.png',
    'Y'
);

-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023년 밤의 석조전(하반기)' AND start_date='20231006'),
    1,
    '09:00',
    2000
);

--4
INSERT INTO event_list (
   event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '2023 궁궐 호위군 사열의식 첩종 疊鐘',
    '경복궁 흥례문 앞',
    2,
    '2023-10-20',
    '2023-10-22',
    'https://www.chf.or.kr/short/fi9u',
    'https://www.chf.or.kr/jnrepo/namo/img/images/000059/20231016142117927_VYVR1LM3.png',
    'N'
);

-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023 궁궐 호위군 사열의식 첩종 疊鐘' AND start_date='20231020'),
    1,
    '09:00',
    2000
);

--5
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '[2023 가을 궁중문화축전] 아티스트가 사랑한 궁',
    '경복궁 집옥재',
    1,
    '2023-10-17',
    '2023-10-18',
    'https://www.chf.or.kr/short/2VQA',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202310/bff36b4e177641d3974556b9265c0e60_1696470637572.jpg',
    'Y'
);

-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='[2023 가을 궁중문화축전] 아티스트가 사랑한 궁' AND start_date='2023-10-17'),
    1,
    '09:00',
    2000
);

--6
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '창경궁'
    ),
    '행사',
    '[2023 가을 궁중문화축전] 인문학 콘서트 창경궁, 우리의 유산',
    '창경궁 통명전',
    1,
    '2023-10-16',
    '2023-10-17',
    'https://www.chf.or.kr/short/gVMn',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202310/2f968e90d66244b89b151759a4634bbe_1696470252224.jpg',
    'Y'
);

-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='[2023 가을 궁중문화축전] 인문학 콘서트 창경궁, 우리의 유산' AND start_date='2023-10-16'),
    1,
    '09:00',
    2000
);

--7
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '[2023 가을 궁중문화축전] 판소리로 듣는 궁 이야기',
    '경복궁 흥복전',
    2,
    '2023-10-13',
    '2023-10-14',
    'https://www.chf.or.kr/short/w7L3',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202310/20d08296e50a41e89135178ccc533490_1696469683972.jpg',
    'Y'
);

-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='[2023 가을 궁중문화축전] 판소리로 듣는 궁 이야기' AND start_date='2023-10-13'),
    1,
    '09:00',
    2000
);

--2023 가을 궁중문화축전(경복궁, 창덕궁, 덕수궁, 창경궁, 온라인)

--8
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '덕수궁'
    ),
    '행사',
    '2023 대한제국 외국공사 접견례',
    '덕수궁',
    2,
    '2023-10-20',
    '2023-10-22',
    'https://www.chf.or.kr/short/NqMW',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202310/e462f2f5db5f41cab98651a4f3691df3_1696398974810.png',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023 대한제국 외국공사 접견례' AND start_date='2023-10-20'),
    1,
    '09:00',
    2000
);


--9
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '궁궐일상모습 재현 및 체험-왕가의 산책',
    '경복궁 일원',
    2,
    '2023-10-08',
    '2023-10-13',
    'https://www.chf.or.kr/short/gjG9',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202309/b6e718f676a6421298b54a6e9e21cca0_1695724417513.png',
    'N'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='궁궐일상모습 재현 및 체험-왕가의 산책' AND start_date='2023-10-08'),
    1,
    '09:00',
    2000
);


--10
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
   event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '2023년 수라간 시식공감(하반기)',
    '경복궁',
    1,
    '2023-10-20',
    '2023-10-28',
    'https://www.chf.or.kr/short/ufnM',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202309/e9349b2c99c8416d847cf6abaca44c28_1695603370640.png',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023년 수라간 시식공감(하반기)' AND start_date='2023-10-20'),
    1,
    '09:00',
    2000
);


--11
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '2023 고궁음악회 - 풍류에 그루브를 더하다',
    '경복궁 수정전',
    1,
    '2023-10-13',
    '2023-10-20',
    'https://www.chf.or.kr/short/9a0j',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202309/059a34e60f6f496d997fd34a378578a7_1695276566884.png',
    'N'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023 고궁음악회 - 풍류에 그루브를 더하다' AND start_date='2023-10-13'),
    1,
    '09:00',
    2000
);

--12
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '2023 고궁음악회 - 발레x수제천',
    '경복궁 집옥재',
    1,
    '2023-10-12',
    '2023-10-14',
    'https://www.chf.or.kr/short/A2GE',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202309/8977791fe3ea479dafbd0281763b31da_1695254804985.jpg',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023 고궁음악회 - 발레x수제천' AND start_date='2023-10-12'),
    1,
    '09:00',
    2000
);

--13
INSERT INTO event_list (
   event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '창덕궁'
    ),
    '행사',
    '사회적 배려 대상자 초청 ‘창덕궁 달빛기행’ 모집(연장)',
    '창덕궁',
    2,
    '2023-10-26',
    '2023-10-27',
    'https://www.chf.or.kr/short/CYjs',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202309/8327e8b3681244f98167910ff847bd65_1694999401278.png',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='사회적 배려 대상자 초청 ‘창덕궁 달빛기행’ 모집(연장)' AND start_date='2023-10-26'),
    1,
    '09:00',
    2000
);

--14
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '사회적 배려 대상자 초청 ‘경복궁 시식공감’ 모집',
    '경복궁',
    2,
    '2023-10-23',
    '2023-10-28',
    'https://www.chf.or.kr/short/Rnnb',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202309/743b5a3959d942ad832bae507cf86b1e_1694366833538.png',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='사회적 배려 대상자 초청 ‘경복궁 시식공감’ 모집' AND start_date='2023-10-23'),
    1,
    '09:00',
    2000
);


--15
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '2023년 경복궁 생과방(하반기)',
    '경복궁 생과방',
    4,
    '2023-09-07',
    '2023-10-21',
    'https://www.chf.or.kr/short/8sQs',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202308/9324b656ff8b4f5b80303459514fa0bb_1693359368272.jpg',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023년 경복궁 생과방(하반기)' AND start_date='2023-09-07'),
    1,
    '09:00',
    2000
);

--16
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '사회적 배려 대상자 초청 ‘경복궁 별빛야행’ 모집',
    '경복궁',
    2,
    '2023-10-05',
    '2023-10-07',
    'https://www.chf.or.kr/short/XBjK',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202308/dc85b797dc4d4283a90d035697909893_1693194291588.png',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='사회적 배려 대상자 초청 ‘경복궁 별빛야행’ 모집' AND start_date='2023-10-05'),
    1,
    '09:00',
    2000
);

--17
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '2023 경복궁 별빛야행(하반기)',
    '경복궁',
    2,
    '2023-09-08',
    '2023-10-08',
    'https://www.chf.or.kr/short/BUoz',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202308/9a4032d4b60f4086b0b5b8ee76893c26_1692666774979.png',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023 경복궁 별빛야행(하반기)' AND start_date='2023-09-08'),
    1,
    '09:00',
    2000
);

--18
INSERT INTO event_list (
   event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
   event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '창덕궁'
    ),
    '행사',
    '2023년 창덕궁 달빛기행(하반기)',
    '창덕궁',
    2,
    '2023-09-07',
    '2023-10-22',
    'https://www.chf.or.kr/short/2fbw',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202308/ce2da9099edc46a4ac6c6cb006830403_1692231253807.jpg',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023년 창덕궁 달빛기행(하반기)' AND start_date='2023-09-07'),
    1,
    '09:00',
    2000
);

--19
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '2023 수라간 시식공감',
    '경복궁',
    1,
    '2023-05-25',
    '2023-06-04',
    'https://www.chf.or.kr/short/bEHk',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202305/2a989c9ee261463c9daec5c5a629ab02_1683507634941.png',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023 수라간 시식공감' AND start_date='2023-05-25'),
    1,
    '09:00',
    2000
);

--20
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '2023년 경복궁 생과방 - 경복궁에서 마주한 특별한 시간',
    '경복궁 생과방',
    4,
    '2023-04-20',
    '2023-06-28',
    'https://www.chf.or.kr/short/ahQV',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/5847036fb7f442b9b1005aec127a07ba_1680670289132.png',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023년 경복궁 생과방 - 경복궁에서 마주한 특별한 시간' AND start_date='2023-04-20'),
    1,
    '09:00',
    2000
);

--21
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '창덕궁'
    ),
    '행사',
    '2023년 창덕궁 달빛기행',
    '창덕궁',
    2,
    '2023-04-13',
    '2023-06-04',
    'https://www.chf.or.kr/short/OQJG',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/2572601b38b7494eba93a1bb999bad8a_1680832352792.jpg',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023년 창덕궁 달빛기행' AND start_date='2023-04-13'),
    1,
    '09:00',
    2000
);


--22
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '종묘'
    ),
    '행사',
    '2023 종묘대제',
    '종묘 영녕전 및 종묘 일원',
    1,
    '2023-05-07',
    '2023-05-07',
    'https://www.chf.or.kr/short/dD05',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/c38362b37b6343c1979c8fff900c51a0_1682571270286.jpg',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023 종묘대제' AND start_date='2023-05-07'),
    1,
    '09:00',
    2000
);


--23
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '2023년 수문장 교대의식 어린이날 특별행사',
    '경복궁 협생문 밖 공개훈련장 일원',
    2,
    '2023-05-05',
    '2023-05-05',
    'https://www.chf.or.kr/short/vdV2',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/c3f32e0b7464404687faf97f3f015049_1682560123870.jpg',
    'N'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023년 수문장 교대의식 어린이날 특별행사' AND start_date='2023-05-05'),
    1,
    '09:00',
    2000
);


--24
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '덕수궁'
    ),
    '행사',
    '[고궁음악회] 풍류에 힙(Hip)을 더하다',
    '덕수궁 즉조당 앞마당',
    1,
    '2023-05-05',
    '2023-05-28',
    'https://www.chf.or.kr/short/6cJB',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/f1bff7bd3a514b27b306dbb4ca6eb1e2_1682388103781.png',
    'N'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='[고궁음악회] 풍류에 힙(Hip)을 더하다' AND start_date='2023-05-05'),
    1,
    '09:00',
    2000
);

--25
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '[고궁음악회] 풍류에 그루브(Groove)를 더하다',
    '경복궁 수정전',
    2,
    '2023-04-29',
    '2023-05-06',
    'https://www.chf.or.kr/short/bqR3',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/e942c3f22de74d66b04f868c7e6e6817_1682386993202.png',
    'N'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='[고궁음악회] 풍류에 그루브(Groove)를 더하다' AND start_date='2023-04-29'),
    1,
    '09:00',
    2000
);

--26
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '덕수궁'
    ),
    '행사',
    '[궁중문화축전] 오얏꽃 개화만리',
    '덕수궁 정관헌',
    3,
    '2023-05-04',
    '2023-05-06',
    'https://www.chf.or.kr/short/WOSz',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/d18c344c793b4321ba71eea45893339b_1681920717590.png',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='[궁중문화축전] 오얏꽃 개화만리' AND start_date='2023-05-04'),
    1,
    '09:00',
    2000
);

--27
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
   event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '종묘'
    ),
    '행사',
    '2023년 종묘 묘현례 - 1703 조선의 왕비 문안드립니다',
    '종묘 영녕전',
    2,
    '2023-04-28',
    '2023-05-01',
    'https://www.chf.or.kr/short/WKTY',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/3ca60146935a44dbaa77797958459e99_1681968436937.jpg',
    'Y'
);

-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023년 종묘 묘현례 - 1703 조선의 왕비 문안드립니다' AND start_date='2023-04-28'),
    1,
    '09:00',
    2000
);

--28
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '창덕궁'
    ),
    '행사',
    '[궁중문화축전] 낭만궁궐 기담극장',
    '창덕궁 낙선재',
    2,
    '2023-04-30',
    '2023-05-03',
    'https://www.chf.or.kr/short/fJbM',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/38597ad199ab49929791dfe314cc45ce_1681893999760.jpg',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='[궁중문화축전] 낭만궁궐 기담극장' AND start_date='2023-04-30'),
    1,
    '09:00',
    2000
);

--29
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '[궁중문화축전] 어린이 궁중문화축전-어린이 과거시험',
    '경복궁',
    1,
    '2023-05-05',
    '2023-05-07',
    'https://www.chf.or.kr/short/13zK',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/1cff014250fe4423a90d9e949dc65052_1681919786864.png',
    'Y'
);

-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='[궁중문화축전] 어린이 궁중문화축전-어린이 과거시험' AND start_date='2023-05-05'),
    1,
    '09:00',
    2000
);

--30
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '창경궁'
    ),
    '행사',
    '[궁중문화축전] 시간여행-영조, 홍화문을 열다',
    '창경궁 일원',
    2,
    '2023-05-02',
    '2023-05-02',
    'https://www.chf.or.kr/short/s56P',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/8c49541180b34549be3a9bc62538ac95_1681894122416.jpg',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='[궁중문화축전] 시간여행-영조, 홍화문을 열다' AND start_date='2023-05-02'),
    1,
    '09:00',
    2000
);

--[궁중문화축전] 5대궁 특별관람권 궁패스(경복궁, 창덕궁, 덕수궁, 창경궁, 경희궁)

--31
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '[궁중문화축전] 고궁뮤지컬-세종 1446',
    '경복궁 근정전',
    1,
    '2023-04-29',
    '2023-05-02',
    'https://www.chf.or.kr/short/meJH',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/63575d04005748acac86f341a1eab799_1681807795789.jpg',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='[궁중문화축전] 고궁뮤지컬-세종 1446' AND start_date='2023-04-29'),
    1,
    '09:00',
    2000
);

--2023년 봄 궁중문화축전(경복궁, 창덕궁, 덕수궁, 창경궁, 경희궁, 종묘, 사직단)

--32
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
   event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '창경궁'
    ),
    '행사',
    '2023년 창경궁 야연',
    '창경궁 문정전',
    1,
    '2023-05-02',
    '2023-05-19',
    'https://www.chf.or.kr/short/baHS',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/8476b8c2e2fa4423a6d5964fab705722_1681366886935.jpg',
    'Y'
);

-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023년 창경궁 야연' AND start_date='2023-05-02'),
    1,
    '09:00',
    2000
);

--33
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '2023 경복궁 별빛야행',
    '경복궁',
    2,
    '2023-04-15',
    '2023-05-13',
    'https://www.chf.or.kr/short/PUxj',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/859c024c432c4cd99fbf634e60d993e7_1680853042541.jpg',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023 경복궁 별빛야행' AND start_date='2023-04-15'),
    1,
    '09:00',
    2000
);


--34
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
     event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '덕수궁'
    ),
    '행사',
    '밤의 석조전 - 오얏꽃 흩날리는 봄밤, 대한제국 황실의 문이 열립니다.',
    '덕수궁 석조전',
    3,
    '2023-04-11',
    '2023-05-11',
    'https://www.chf.or.kr/short/8L17',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/dd5c773b90d64273bbbd1e27fdec78c1_1680572403505.png',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='밤의 석조전 - 오얏꽃 흩날리는 봄밤, 대한제국 황실의 문이 열립니다.' AND start_date='2023-04-11'),
    1,
    '09:00',
    2000
);


--35
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
     event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '창경궁'
    ),
    '행사',
    '[궁중문화축전] 어명이오! 궁중 새내기 모여라',
    '창경궁 일원',
    3,
    '2023-05-03',
    '2023-05-05',
    'https://www.chf.or.kr/short/Lfbp',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202303/0a1be81f991e407ab6cfae620369ca37_1679644836161.png',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='[궁중문화축전] 어명이오! 궁중 새내기 모여라' AND start_date='2023-05-03'),
    1,
    '09:00',
    2000
);

--36
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '2023년 봄 궁중문화축전 개막제',
    '경복궁(*사전행사 : 창경궁)',
    1,
    '2023-04-28',
    '2023-04-28',
    'https://www.chf.or.kr/short/w8ai',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/1d69d37344dd4d0f8709deeecccc8595_1681806379953.jpg',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023년 봄 궁중문화축전 개막제' AND start_date='2023-04-28'),
    1,
    '09:00',
    2000
);


--37
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
     event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '창덕궁'
    ),
    '행사',
    '사회적 배려 대상자 초청 ‘창덕궁 달빛기행’ 모집',
    '창덕궁',
    2,
    '2023-04-29',
    '2023-04-30',
    'https://www.chf.or.kr/short/8EV5',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202304/d7a2388007a845eebdbbea6bec33dc89_1680683883581.png',
    'Y'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='사회적 배려 대상자 초청 ‘창덕궁 달빛기행’ 모집' AND start_date='2023-04-29'),
    1,
    '09:00',
    2000
);

--38
INSERT INTO event_list (
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
     event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '2023 전국 수문장 임명의식 - 국왕께서 친히 전국의 수문장을 낙점하다!',
    '경복궁 흥례문 일원',
    1,
    '2023-03-26',
    '2023-03-26',
    'https://www.chf.or.kr/short/T0tU',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202303/37e8e4bf594449139634a035ff183f0d_1679029333355.jpg',
    'N'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023 전국 수문장 임명의식 - 국왕께서 친히 전국의 수문장을 낙점하다!' AND start_date='2023-03-26'),
    1,
    '09:00',
    2000
);


-- 39
INSERT INTO event_list (
   event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    event_link,
    event_imgpath,
    reservable
) VALUES (
     event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal      r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '행사',
    '2023년 수문장 세화 나눔',
    '경복궁 광화문 수문장청',
    2,
    '2024-01-21',
    '2024-01-24',
    'https://www.chf.or.kr/short/AcDf',
    'https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202301/4cbde8fa30384e639ac01add14bb70df_1673934964467.jpg',
    'N'
);


-- round
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    (SELECT event_id FROM event_list WHERE event_name='2023년 수문장 세화 나눔' AND start_date='2024-01-21'),
    1,
    '09:00',
    2000
);

--------------------------------------------------------------------------------
commit;