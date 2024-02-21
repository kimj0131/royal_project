
-- 사전데이터 작업
-- royal 데이터 추가
INSERT INTO royal VALUES (
    1,
    '경복궁'
);

INSERT INTO royal VALUES (
    2,
    '창덕궁'
);

INSERT INTO royal VALUES (
    3,
    '창경궁'
);

INSERT INTO royal VALUES (
    4,
    '덕수궁'
);

INSERT INTO royal VALUES (
    5,
    '종묘'
);


--------------------------------------------------------------------------------
-- 경복궁 해설 추가
INSERT INTO event_list(
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    reservable
    ) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '경복궁'
    ),
    '해설',
    '경복궁 해설',
    '경복궁',
    2,
    '2024-01-01',
    '2024-12-31',
    'Y'
);

INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    ( SELECT DISTINCT event_id FROM event_list WHERE event_name='경복궁 해설'),
    1,
    '09:00',
    30
);
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    ( SELECT DISTINCT event_id FROM event_list WHERE event_name='경복궁 해설'),
    2,
    '10:00',
    30
);

--------------------------------------------------------------------------------
-- 덕수궁 해설 추가
INSERT INTO event_list(
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    reservable
    ) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '덕수궁'
    ),
    '해설',
    '덕수궁 해설',
    '덕수궁',
    2,
    '2024-01-01',
    '2024-12-31',
    'Y'
);

INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    ( SELECT DISTINCT event_id FROM event_list WHERE event_name='덕수궁 해설'),
    1,
    '09:00',
    30
);
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    ( SELECT DISTINCT event_id FROM event_list WHERE event_name='덕수궁 해설'),
    2,
    '10:00',
    30
);

--------------------------------------------------------------------------------
-- 창경궁 해설 추가
INSERT INTO event_list(
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    reservable
    ) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '창경궁'
    ),
    '해설',
    '창경궁 해설',
    '창경궁',
    2,
    '2024-01-01',
    '2024-12-31',
    'Y'
);

INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    ( SELECT DISTINCT event_id FROM event_list WHERE event_name='창경궁 해설'),
    1,
    '09:00',
    30
);
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    ( SELECT DISTINCT event_id FROM event_list WHERE event_name='창경궁 해설'),
    2,
    '10:00',
    30
);

--------------------------------------------------------------------------------
-- 창덕궁 해설 추가
INSERT INTO event_list(
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    reservable
    ) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '창덕궁'
    ),
    '해설',
    '창덕궁 해설',
    '창덕궁',
    2,
    '2024-01-01',
    '2024-12-31',
    'Y'
);

INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    ( SELECT DISTINCT event_id FROM event_list WHERE event_name='창덕궁 해설'),
    1,
    '09:00',
    30
);
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    ( SELECT DISTINCT event_id FROM event_list WHERE event_name='창덕궁 해설'),
    2,
    '10:00',
    30
);

--------------------------------------------------------------------------------
-- 종묘 해설 추가
INSERT INTO event_list(
    event_id,
    royal_id,
    event_type,
    event_name,
    event_location,
    event_rounds,
    start_date,
    end_date,
    reservable
    ) VALUES (
    event_list_id_seq.NEXTVAL,
    (
        SELECT DISTINCT
            r.royal_id
        FROM
            royal r
            LEFT JOIN event_list e ON r.royal_id = e.royal_id
        WHERE
            r.royal_name = '종묘'
    ),
    '해설',
    '종묘 해설',
    '종묘',
    2,
    '2024-01-01',
    '2024-12-31',
    'Y'
);

INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    ( SELECT DISTINCT event_id FROM event_list WHERE event_name='종묘 해설'),
    1,
    '09:00',
    30
);
INSERT INTO event_round (
    round_id,
    event_id,
    round_num,
    round_time,
    round_capacity
) VALUES (
    event_round_id_seq.NEXTVAL,
    ( SELECT DISTINCT event_id FROM event_list WHERE event_name='종묘 해설'),
    2,
    '10:00',
    30
);


--------------------------------------------------------------------------------
-- notice test 데이터 추가
    INSERT INTO notice (
        notice_id,
        royal_id,
        notice_title,
        notice_content
    ) VALUES (
        notice_id_seq.NEXTVAL,
        (SELECT royal_id FROM royal WHERE royal_name='창덕궁'),
        '2024년 설 연휴기간 창덕궁 해설운영 안내(2/9~2/12)',
        '2024년 설 연휴기간 무료개방 (창덕궁후원 제외)을 실시하오니 관람에 참고하시기 바랍니다.



○ 기 간 : 2024.2. 9.(토) ~ 2. 12.(월) / 4일간



○ 해설 운영 : 궁궐 전각 정규 안내해설과 창덕궁 깊이보기(궐내각사,낙선재) 미운영



*후원 관람 안내해설 정상운영(후원관람 유료입장)



※ 기존 정기휴무인 월요일(2.12)의 경우 관련 규정에 따라 공휴일(2.12) 개방하며, 이에 따라 휴무일이 화요일(2.13)로 변경되어 운영됩니다.



(월요일 후원 중국어 및 일본어 해설은 제공되지 않습니다.)'
    );


--------------------------------------------------------------------------------
-- notice test 데이터 추가
    INSERT INTO notice (
        notice_id,
        royal_id,
        notice_title,
        notice_content
    ) VALUES (
        notice_id_seq.NEXTVAL,
        (SELECT royal_id FROM royal WHERE royal_name='덕수궁'),
        '고종의 길 임시 폐쇄 알림(1.17.)',
        '안녕하세요, 덕수궁관리소입니다.

보행로 결빙으로 인한 사고 위험 방지를 위하여 덕수궁 <고종의 길>을 임시 폐쇄합니다. 

양해 부탁드립니다. 



- 내용: 고종의 길 임시 폐쇄

- 기간: 2024.1.17.(수) 

- 사유: 보행로 결빙으로 인한 사고 위험 방지

* 현장 상황에 따라 개방 재개 여부를 결정할 예정입니다.'
    );

--------------------------------------------------------------------------------
-- FAQ 추가
INSERT INTO faq (
    faq_id,
    royal_id,
    faq_title,
    faq_result
) VALUES (
    faq_id_seq.nextval,
    (SELECT royal_id FROM royal WHERE royal_name='경복궁'),
    '경복궁을 만드는 데 얼마나 걸렸을까?',
    '뚝딱~ 뚝딱~ 태조 임금님이 새로운 나라 조선을 세우고 가장 먼저 시작한 일은 왕의 조상님들을 모시는 ‘종묘’를 짓고 왕실가족과 나랏일을 돕는 신하들이 머무르는 ‘궁궐’을 짓는 일이었습니다. 궁궐을 짓는데 걸린 시간은 10개월 정도였습니다. 궁궐 공사 이전에 먼저 땅을 잘 살피는 조사를 하였고 태조 3년(1395) 12월부터 공사를 시작하여 다음해 9월에 완성하였습니다. 궁궐 안에는 나랏일을 의논하는 곳, 왕과 왕비께서 사는 곳, 신하들이 출근해서 일하는 곳, 궁궐담장과 출입문 등이 있었고 궁궐의 이름을 ‘경복궁’이라고 지었답니다.'
);


INSERT INTO faq (
    faq_id,
    royal_id,
    faq_title,
    faq_result
) VALUES (
    faq_id_seq.nextval,
    (SELECT royal_id FROM royal WHERE royal_name='창덕궁'),
    '창덕궁으로 입장해서 창경궁과 종묘로 갈 수 있나요?',
    '창덕궁, 창경궁, 종묘는 위치상 서로 근접해 있으나 출입문은 개별적으로 있습니다.
하지만, 창덕궁과 창경궁은 양쪽 궁을 이어주는 문(함양문)이 있으므로 추가 매표를 하시면, 연계 관람이 가능합니다.

종묘는 창덕궁, 창경궁과 연결되는 곳이 없습니다.

-연결문(함양문)의 매표소에서 입장권을 구매하셔야 하며, 재입장은 불가합니다.

-연결문(함양문) 운영 종료시간을 사전에 숙지하시기 바랍니다.*함양문 운영 종료시간은 창덕궁 정문(돈화문) 입장 종료 시간과 동일합니다.

-연결문(함양문)은 창덕궁의 전각지역에 위치해 있기 때문에, 창경궁에서 창덕궁 후원 안으로 바로 입장하실 수 없습니다.

※2022년 7월에 개방된 율곡 터널 상부의 창경궁과 종묘를 잇는 사잇길은 산책 용도의 공원으로만 이용하실 수 있으며, 현재 이 사잇길을 통해 창경궁과 종묘로 입장하실 수 없습니다.'
);

INSERT INTO faq (
    faq_id,
    royal_id,
    faq_title,
    faq_result
) VALUES (
    faq_id_seq.nextval,
    (SELECT royal_id FROM royal WHERE royal_name='덕수궁'),
    '대한문 명칭에 대하여',
    '대한문의 원래 명칭은 대안문(大安門)으로 1904년(광무 8) 경운궁 화재시 피해를 입지는 않았습니다.
경운궁 중건이 거의 마무리되는 1906년(광무 10) 4월 12일 대안문의 수리를 시역(始役)하고 그 명칭을 대한문(大漢門)으로 고쳤습니다. 이어 4월 24일에는 상량(上樑)을 하고 현판(懸板)을 걸었습니다.
‘대한(大漢)’은 한양이 창대해진다‘는 뜻입니다. <대한문상량문(大漢門上樑文)>을 보면 “황하가 맑아지는 천재일우의 시운을 맞았으므로 국운이 길이 창대할 것이고, 한양이 억만년 이어갈 터전에 자리하였으니 문 이름으로 특별히 건다.”고 나와 있습니다. 한양을 수도로 하여 새로 태어난 대한제국이 영원히 창대하라는 염원을 담은 말입니다.'
);

INSERT INTO faq (
    faq_id,
    royal_id,
    faq_title,
    faq_result
) VALUES (
    faq_id_seq.nextval,
    (SELECT royal_id FROM royal WHERE royal_name='창경궁'),
    '창경궁과 창덕궁은 어떻게 다른가요?',
    '1395년(태조4) 경복궁이 창건되었고 1405년(태종5) 창덕궁이 창건되어 정궁인 경복궁의 이궁으로의 역할을 하였습니다. 창경궁은 1484년(성종15) 정희왕후, 안순왕후, 소혜왕후 세 분 대비를 모시기 위한 별궁으로 창건되어 초기에는 상대적으로 그 활용도가 낮았습니다. 그러나 임진왜란 이후 경복궁이 중건되지 않고 창덕궁과 창경궁만 재건되어 창덕궁이 정궁의 역할을 하게 되면서 인접해있는 창경궁은 왕실의 생활공간으로 그 활용빈도가 높아졌습니다.'
);


commit;

-------------------------------------------------------------------------------