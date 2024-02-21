
-------------------------------------------------------------------------------
-- 만들어진 royal 계정 접속 후 실행 

-- 필요시 테이블 명 혹은 시퀀스 명 맞춰서 사용 
-- SELECT * FROM tabs; --계정 내 테이블 정보 확인
-- SELECT * FROM user_constraints; -- 제약조건 확인 
-- SELECT * FROM user_sequences; -- 사용자 설정 시퀀스 확인


-- 1. 궁(royal)테이블 생성
CREATE TABLE royal(
    royal_id number(2) --시퀀스
    CONSTRAINT royal_id_pk PRIMARY KEY,
    royal_name VARCHAR2(15) -- 궁 이름
    CONSTRAINT royal_name_nn NOT NULL
);

-- SELECT * FROM royal;
 --DROP TABLE royal;
-- TRUNCATE TABLE royal;                         
              


-- 2. 궁 내부 부속 건축물 테이블 (공공API데이터 담아둘 테이블)
CREATE TABLE royal_inner (
    royal_inner_id NUMBER(3)  --  시퀀스
    CONSTRAINT royal_inner_id_pk Primary Key,
    royal_id NUMBER(2) -- 궁 시퀀스 (royal table과 join 사용)
    CONSTRAINT royal_id_fk REFERENCES royal(royal_id),
    royal_inner_name VARCHAR2(50)  -- 건축물 명
    CONSTRAINT royal_inner_name_nn NOT NULL,
    royal_inner_detail VARCHAR2(4000), -- 건축물 상세 설명
    royal_inner_imgpath VARCHAR2(4000) -- 건축물 이미지 경로
);

                     
-- SELECT * FROM royal_inner;
-- DROP TABLE royal_inner;
-- TRUNCATE TABLE royal_inner;                         
              
                     
-- 3. 소셜 로그인 유저 목록 테이블
CREATE TABLE member(
    member_id NUMBER(5)  -- 유저 시퀀스
    CONSTRAINT member_id_pk PRIMARY KEY,
    social_id VARCHAR2(200) -- 소셜 식별id
    CONSTRAINT social_id_nn NOT NULL,
    member_name VARCHAR2(50)  --회원 이름
    CONSTRAINT member_name_nn NOT NULL,
    member_email VARCHAR2(50)  -- 회원 이메일
    CONSTRAINT member_email_nn NOT NULL,
    member_type VARCHAR2(10)  --네이버/카카오
    CONSTRAINT member_type_nn NOT NULL -- 
);

CREATE SEQUENCE member_id_seq
                    START WITH 1 -- 시작 번호 설정
                    INCREMENT BY 1  -- 증가 숫자 설정
                     NOCYCLE -- 숫자 순환 여부 설정
                     NOCACHE; -- 번호를 미리 만들어놓을 양을 설정
-- SELECT * FROM member;
 --DROP TABLE member;
-- DROP SEQUENCE member_id_seq;
-- TRUNCATE TABLE member;                         



 
-- 4. 공지사항 테이블                  
CREATE TABLE notice(
    notice_id NUMBER(10) --공지사항 시퀀스
    CONSTRAINT notice_id_pk PRIMARY KEY,
    royal_id number(2) -- 궁 번호
    CONSTRAINT notice_royal_id_fk REFERENCES royal(royal_id),
    notice_title VARCHAR2(100) --공지사항 제목
    CONSTRAINT notice_title_nn NOT NULL, 
    notice_content VARCHAR2(4000) --공지 내용 
    CONSTRAINT notice_content_nn NOT NULL,
    notice_date DATE  DEFAULT sysdate -- 공지 등록일
);

-- 공지사항 시퀀스 생성
CREATE SEQUENCE notice_id_seq
                    START WITH 1 -- 시작 번호 설정
                    INCREMENT BY 1  -- 증가 숫자 설정
                     NOCYCLE -- 숫자 순환 여부 설정
                     NOCACHE; -- 번호를 미리 만들어놓을 양을 설정
          
-- SELECT * FROM notice;
-- DROP TABLE notice;
-- DROP SEQUENCE notice_id_seq;
-- TRUNCATE TABLE notice;


-- 5. 행사 목록 테이블
CREATE TABLE event_list(
    event_id NUMBER(5) -- 행사리스트 시퀀스
    CONSTRAINT event_id_pk PRIMARY KEY,
    royal_id  NUMBER(2) -- royal테이블 JOIN
    CONSTRAINT event_royal_id_fk  REFERENCES royal(royal_id),
    event_type VARCHAR2(25) -- 해설/ 행사
    CONSTRAINT event_type_nn NOT NULL,   -- 해설 :commentary 행사: event 
    event_name VARCHAR2(200) --행사명 
    CONSTRAINT event_name_nn NOT NULL,
    event_location VARCHAR2(100) -- 행사장소 
    CONSTRAINT event_location_nn NOT NULL,
    event_rounds NUMBER(2) DEFAULT 1  -- 총 회차 수
    CONSTRAINT event_rounds_nn NOT NULL,
    start_date DATE --행사 시작일
    CONSTRAINT start_date_nn  NOT NULL,
    end_date DATE --행사 종료일
    CONSTRAINT end_date_nn  NOT NULL,
    event_link VARCHAR2(1000), --행사관련 사이트 링크
    event_imgpath VARCHAR2(500), -- 행사관련 이미지 링크
    reservable CHAR(2) -- 예약가능 여부
    CONSTRAINT reservable_nn  NOT NULL
);

--행사리스트 시퀀스 생성
CREATE SEQUENCE event_list_id_seq
                    START WITH 1 -- 시작 번호 설정
                    INCREMENT BY 1  -- 증가 숫자 설정
                     NOCYCLE -- 숫자 순환 여부 설정
                     NOCACHE; -- 번호를 미리 만들어놓을 양을 설정

-- SELECT * FROM event_list;
-- DROP TABLE event_list;
-- DROP SEQUENCE event_list_id_seq;
-- TRUNCATE TABLE event_list;



-- 6. 행사 회차 테이블
CREATE TABLE event_round(
    round_id NUMBER(5) -- 행사 회차 번호
    CONSTRAINT round_id_pk PRIMARY KEY,
    event_id NUMBER(5) -- 행사 번호 (FK)
    CONSTRAINT event_round_event_id_fk REFERENCES event_list(event_id),
    round_num NUMBER(2)  -- 회차
    CONSTRAINT round_num_nn NOT NULL,
    round_time VARCHAR2(20)  -- 회차 별 시간
    CONSTRAINT round_time_nn NOT NULL,
    round_capacity NUMBER(5) 
    CONSTRAINT round_capacity_nn NOT NULL
    CONSTRAINT round_capacity_chk  CHECK(round_capacity >=0)
);

-- 행사 회차 시퀀스 생성
CREATE SEQUENCE event_round_id_seq
                    START WITH 1 -- 시작 번호 설정
                    INCREMENT BY 1  -- 증가 숫자 설정
                     NOCYCLE -- 숫자 순환 여부 설정
                     NOCACHE; -- 번호를 미리 만들어놓을 양을 설정
-- SELECT * FROM event_round;
-- DROP TABLE event_round;
-- DROP SEQUENCE event_round_id_seq;
-- TRUNCATE TABLE event_round;


          
-- 7. 예약 테이블
CREATE TABLE reservation ( 
    resv_id NUMBER(5) -- 예약 id
    CONSTRAINT resv_id_pk Primary Key,
    event_id NUMBER(5) -- 이벤트 번호
    CONSTRAINT event_id_fk REFERENCES event_list(event_id),--(fk)
    member_id NUMBER(5) -- 유저 번호 (식별id 아님)
    CONSTRAINT member_id_fk REFERENCES member(member_id), --(fk)
    resv_num VARCHAR2(100) -- 예약번호 (문자(e, c) + 숫자(240206 + 000000(난수))
    CONSTRAINT resv_num_nn NOT NULL
    CONSTRAINT resv_num_uq UNIQUE,
    resv_date DATE  -- 예약 날짜
    DEFAULT sysdate, --(date)
    resv_people NUMBER(5) -- 예약한 인원
    CONSTRAINT resv_people_nn NOT NULL
    CONSTRAINT resv_people_chk  CHECK(resv_people >=0),
    resv_eventdate DATE 
    CONSTRAINT resv_eventdate_nn NOT NULL,-- 예약한날짜 (선택날짜) 저장
    round_num Number(5) 
    CONSTRAINT resv_round_num_nn NOT NULL -- 행사 회차
);


-- 예약 시퀀스 생성
CREATE SEQUENCE reservation_id_seq
                    START WITH 1 -- 시작 번호 설정
                    INCREMENT BY 1  -- 증가 숫자 설정
                     NOCYCLE -- 숫자 순환 여부 설정
                     NOCACHE; -- 번호를 미리 만들어놓을 양을 설정


-- SELECT * FROM reservation;
-- DROP TABLE reservation;
-- DROP SEQUENCE reservation_id_seq;
-- TRUNCATE TABLE reservation;





-- 8. Q&A 테이블
CREATE TABLE qna (
    qna_id NUMBER(10) -- qna 번호
    CONSTRAINT qna_id_pk PRIMARY KEY, 
    member_id NUMBER(5) -- 유저 번호 (시퀀스)
    CONSTRAINT qna_member_id_fk REFERENCES member(member_id), 
    royal_id NUMBER(2) -- 궁 번호
    CONSTRAINT qna_royal_id_fk REFERENCES royal(royal_id),
    qna_title VARCHAR2(2000) -- qna 제목
    CONSTRAINT qna_title_nn NOT NULL,
    qna_content VARCHAR2(2000) -- qna 내용
    CONSTRAINT qna_content_nn NOT NULL,
    qna_result VARCHAR2(2000), -- qna 답변내용
    qna_date DATE  DEFAULT SYSDATE  -- qna 작성일
);


--qna 시퀀스
 CREATE SEQUENCE qna_id_seq
                    START WITH 1 -- 시작 번호 설정
                    INCREMENT BY 1  -- 증가 숫자 설정
                    NOCYCLE -- 숫자 순환 여부 설정
                    NOCACHE; -- 번호를 미리 만들어놓을 양을 설정

-- SELECT * FROM qna;
-- DROP TABLE qna;
-- DROP SEQUENCE qna_id_seq;
-- TRUNCATE TABLE qna;


-- 9. 자주하는 질문 테이블
CREATE TABLE faq(
    faq_id NUMBER(5) -- faq 번호(시퀀스)
    CONSTRAINT faq_id_pk PRIMARY KEY,
    royal_id NUMBER(2) -- 궁 번호
    CONSTRAINT faq_royal_id_fk REFERENCES royal(royal_id), 
    faq_title VARCHAR2(100) -- faq 제목
    CONSTRAINT faq_title_nn NOT NULL,
    faq_result VARCHAR2(4000) -- faq 내용
    CONSTRAINT faq_result_nn NOT NULL
);
 
 -- 자주하는질문 시퀀스
CREATE SEQUENCE faq_id_seq
                    START WITH 1 -- 시작 번호 설정
                    INCREMENT BY 1  -- 증가 숫자 설정
                    NOCYCLE -- 숫자 순환 여부 설정
                    NOCACHE; -- 번호를 미리 만들어놓을 양을 설정
                    
-- SELECT * FROM faq;
-- DROP TABLE faq;
-- DROP SEQUENCE faq_id_seq;
-- TRUNCATE TABLE faq;



--------------------------------------------------------------------------------


-- 계정 내 모든 테이블 보기
--select * from tabs;
--
---- 제약조건 보기 
--select * from user_constraints;
--
--
--select * from user_sequences;
--drop sequence royal_inner_seq;

--------------------------------------------------------------------------------






